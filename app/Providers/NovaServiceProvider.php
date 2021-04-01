<?php

namespace App\Providers;

use App\Models\User;
use App\Notifications\InterviewRemind;
use DigitalCreative\CollapsibleResourceManager\CollapsibleResourceManager;
use DigitalCreative\CollapsibleResourceManager\Resources\InternalLink;
use DigitalCreative\CollapsibleResourceManager\Resources\LensResource;
use DigitalCreative\CollapsibleResourceManager\Resources\TopLevelResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Laravel\Nova\Events\ServingNova;
use Laravel\Nova\Fields\Place;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Nova;
use Laravel\Nova\NovaApplicationServiceProvider;

class NovaServiceProvider extends NovaApplicationServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
        Nova::serving(function (ServingNova $event) {
            
            \OptimistDigital\NovaSettings\NovaSettings::addSettingsFields([
                Place::make(__('Address'), 'address'),
                Text::make(__('City'),'city'),
                Text::make(__('Head of Department'),'head_of_dept'),
                Text::make(__('Phone Number'),'phone_no'),
                Text::make(__('Fax Number'),'fax_no'),
                Text::make(__('Email'),'email'),
            ], [
                'address' => 'string',
                'city' => 'string',
                'head_of_dept' => 'string',
                'phone_no' => 'string',
                'fax_no' => 'string',
                'email' => 'string',
            ]);

            $user = $event->request->user();
            // if($user->interview()->count() > 0){
            //     $user->notify(new InterviewRemind($user));
            // }
            if (array_key_exists($user->locale, config('nova.locales'))) {
                app()->setLocale($user->locale);
                \Log::debug('Start of locale');
                \Log::debug(app()->getLocale());
                \Log::debug('End of locale');
            }
            
        });

    }

    /**
     * Register the Nova routes.
     *
     * @return void
     */
    protected function routes()
    {
        Nova::routes()
        ->withAuthenticationRoutes()
        ->register();
        // ->withPasswordResetRoutes()
    }

    /**
     * Register the Nova gate.
     *
     * This gate determines who can access Nova in non-local environments.
     *
     * @return void
     */
    protected function gate()
    {
        Gate::define('viewNova', function ($user) {
            return in_array($user->email, [
                //
            ]);
        });
    }

    /**
     * Get the cards that should be displayed on the default Nova dashboard.
     *
     * @return array
     */
    protected function cards()
    {
        return [
            // new Help,
            new \App\Nova\Metrics\NewMaids(),
            new \App\Nova\Metrics\NewInterviews(),
            new \App\Nova\Metrics\MaidsPerPending(),
            new \App\Nova\Metrics\MaidsPerReligion(),
            new \App\Nova\Metrics\MaidsPerMaritalStatus(),
            new \App\Nova\Metrics\MaidsPerStatus(),
        ];
    }

    /**
     * Get the extra dashboards that should be displayed on the Nova dashboard.
     *
     * @return array
     */
    protected function dashboards()
    {
        return [];
    }

    /**
     * Get the tools that should be listed in the Nova sidebar.
     *
     * @return array
     */
    public function tools()
    {
        return [
            new CollapsibleResourceManager([
                'navigation' => [
                    TopLevelResource::make([
                        'label' => __('Maid'),
                        'resources' => [
                            \App\Nova\Maid::class,
                            LensResource::make(
                                \App\Nova\Maid::class,
                                \App\Nova\Lenses\UnemployedMaids::class
                            )->canSee(function($request){
                                return $request->user()->hasAnyRole(['Super Admin', 'Admin']);
                            }),
                            LensResource::make(
                                \App\Nova\Maid::class,
                                \App\Nova\Lenses\BookedMaids::class
                            )->canSee(function($request){
                                return $request->user()->hasAnyRole(['Super Admin', 'Admin']);
                            }),
                            LensResource::make(
                                \App\Nova\Maid::class,
                                \App\Nova\Lenses\SpecificMaids::class
                            )->canSee(function($request){
                                return $request->user()->hasAnyRole(['Super Admin', 'Admin']);
                            }),
                            \App\Nova\Interview::class,
                        ]
                    ]),
                    TopLevelResource::make([
                        'label' => __('CS'),
                        'resources' => [
                            \App\Nova\User::class,
                            \App\Nova\Admin::class,
                        ]
                    ]),
                    TopLevelResource::make([
                        'label' => __('Admin'),
                        'resources' => [
                            \Vyuldashev\NovaPermission\Role::class,
                            \Vyuldashev\NovaPermission\Permission::class,
                            InternalLink::make([
                                'label' => __('Logs'),
                                'target' => '_self',
                                'path' => '/logs',
                            ]),
                            InternalLink::make([
                                'label' => __('Backups'),
                                'target' => '_self',
                                'path' => '/backups',
                            ]),
                        ]
                    ])->canSee(function($request){
                        return $request->user()->hasAnyRole(['Super Admin', 'Admin']);
                    }),
                ]
            ]),
            \KABBOUCHI\LogsTool\LogsTool::make()->canSee(function($request){
                return $request->user()->hasAnyRole(['Super Admin']);
            }),
            \Spatie\BackupTool\BackupTool::make()->canSee(function($request){
                return $request->user()->hasAnyRole(['Super Admin']);
            }),
            \Runline\ProfileTool\ProfileTool::make(),
            \Vyuldashev\NovaPermission\NovaPermissionTool::make(),
            \OptimistDigital\NovaSettings\NovaSettings::make()->canSee(function($request){
                return $request->user()->hasAnyRole(['Super Admin', 'Admin']);
            }),
            \Mirovit\NovaNotifications\NovaNotifications::make(),
            \Eolica\NovaLocaleSwitcher\LocaleSwitcher::make()
            ->setLocales(config('nova.locales'))
            ->onSwitchLocale(function (Request $request) {
                $locale = $request->post('locale');
                if (array_key_exists($locale, config('nova.locales'))) {
                    // \Log::debug('Start of locale');
                    // \Log::debug($locale);
                    // \Log::debug('End of locale');
                    $request->user()->update(['locale' => $locale]);
                }
            }),
        ];
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
