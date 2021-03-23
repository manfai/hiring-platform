<?php

namespace App\Nova\Filters;

use Illuminate\Http\Request;
use Laravel\Nova\Filters\Filter;
use DigitalCreative\PillFilter\PillFilter;

class MaidReligion extends PillFilter
{
    /**
     * The filter's component.
     *
     * @var string
     */
    // public $component = 'select-filter';
    public function name(){
        return __('Religion');
    }
    /**
     * Apply the filter to the given query.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $value
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function apply(Request $request, $query, $value)
    {
        return $query->whereIn('religion',$value);
    }

    /**
     * Get the filter's available options.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function options(Request $request)
    {
        return [
            __('Christianity') => 'christianity',
            __('Islam') => 'islam',
            __('Hinduism') => 'hinduism',
            __('Buddhism') => 'buddhism',
            __('Sikhism') => 'sikhism',
            __('Judaism') => 'judaism',
        ];
    }
}
