<?php

namespace App\Nova\Lenses;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Slug;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\LensRequest;
use Laravel\Nova\Lenses\Lens;

class UnemployedMaids extends Lens
{
    public function name() {
        return __('Waiting Maids');
    }
    /**
     * Get the query builder / paginator for the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\LensRequest  $request
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @return mixed
     */
    public static function query(LensRequest $request, $query)
    {
        return $request->withOrdering($request->withFilters(
            $query->select(self::columns())
            ->where('maids.unemployed',1)
            ->orderBy('created_at', 'desc')
        ));
    }

    /**
     * Get the columns that should be selected.
     *
     * @return array
     */
    protected static function columns()
    {
        return [
            'maids.*',
        ];
    }

    /**
     * Get the fields available to the lens.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),
            Slug::make(__('Code'), 'bio_no'),
            
            Text::make(__('Name'),'name')  
             ->rules('required', 'min:2'),

            Select::make(__('Jobs'),'jobs')  
            ->rules('required')
            ->options([
                'nurse' => __('Nurse'),
                'factory' => __('Factory'),
                'construction' => __('Construction'),
                'informal' => __('Informal'),
                'other' => __('Other'),
            ])->displayUsingLabels(),

            Boolean::make(__('Unemployed'),'unemployed')->default(true),

            Text::make(__('Confirm Date'),'cfm_date'),

            Text::make(__('Employer Name'),'employer_name')->hideFromIndex(),
        ];
    }

    /**
     * Get the cards available on the lens.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the lens.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available on the lens.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return parent::actions($request);
    }

    /**
     * Get the URI key for the lens.
     *
     * @return string
     */
    public function uriKey()
    {
        return 'unemployed-maids';
    }
}
