<?php

namespace App\Providers;

use DigitalCreative\CollapsibleResourceManager\CollapsibleResourceManager;
use DigitalCreative\CollapsibleResourceManager\Resources\InternalLink;
use DigitalCreative\CollapsibleResourceManager\Resources\NovaResource;
use DigitalCreative\CollapsibleResourceManager\Resources\TopLevelResource;
use Illuminate\Support\Facades\Gate;
use Laravel\Nova\Cards\Help;
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
                ->withPasswordResetRoutes()
                ->register();
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
                        'label' => __('Maids'),
                        'resources' => [
                            \App\Nova\Maid::class,
                            \App\Nova\BookedMaid::class,
                            \App\Nova\SpecificMaid::class,
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
                    ]),
                ]
            ]),
            \KABBOUCHI\LogsTool\LogsTool::make(),
            \Spatie\BackupTool\BackupTool::make(),
            \Vyuldashev\NovaPermission\NovaPermissionTool::make(),
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
