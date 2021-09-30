<?php

namespace App\Nova\Lenses;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Heading;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\KeyValue;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Slug;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\LensRequest;
use Laravel\Nova\Lenses\Lens;

class SpecificMaids extends Lens
{
    public function name() {
        return __('Specific Maids');
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
            $query
        ));
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

            Text::make(__('Employer Name'),'employer_name'),

            Date::make(__('JPL Date'),'jpl_date'),

            Heading::make(__('Medical')),
            Date::make(__('Medical Date'),'medical_date'),
            Text::make(__('Medical Result'),'medical_result'),

            Heading::make(__('Passport')),
            Text::make(__('Passport No'),'passport_no'),
            Text::make(__('Passport Expire Date'),'passport_expired'),
            
            Heading::make(__('JO')),
            Text::make(__('JO Type'),'jo_type'),
            Date::make(__('JO Revice Date'),'jo_rcv_date'),
            Text::make(__('JO No'),'jo_no'),

            Heading::make(__('MOFA')),
            Date::make(__('MOFA Revice Date'),'mofa_rcv_date'),
            Text::make(__('MOFA No'),'mofa_no'),

            Heading::make(__('Visa')),
            Text::make(__('Visa In'),'visa_in'),
            Text::make(__('Visa Out'),'visa_out'),
        
            Heading::make(__('Flight')),
            Date::make(__('Flight Date'),'flight_date'),
            Text::make(__('Flight No'),'flight_no')
            ->rules('required', 'min:2')->hideFromIndex(),
            Text::make(__('Flight ETA'),'flight_eta'),

            Heading::make(__('Remark')),
            KeyValue::make(__('Remark'),'remark')->hideFromIndex()->keyLabel(__('Label')) // Customize the key heading
            ->valueLabel(__('Item')) // Customize the value heading
            ->actionText(__('Add Item')), // Customize the "add row" button text,
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
        return 'specific-maids';
    }
}
