<?php

namespace App\Nova\Filters;

use Illuminate\Http\Request;
use Laravel\Nova\Filters\Filter;

class MaidStatus extends Filter
{
    /**
     * The filter's component.
     *
     * @var string
     */
    public $component = 'select-filter';
    public function name(){
        return __('Status');
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
        return $query->where('status',$value);
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
            "待聘女傭"=>"待聘女傭",
            "直聘"=>"直聘",
            "已收合同但未有簽證者"=>"已收合同但未有簽證者",
            "請確定航程"=>"請確定航程",
            "已收合同但未有簽證，有預訂機者"=>"已收合同但未有簽證，有預訂機者",
            "已收合同和簽證，有預訂機票者"=>"已收合同和簽證，有預訂機票者",
            "航程已被確定"=>"航程已被確定",
            "機票在侯補單"=>"機票在侯補單",
            "已收合同和簽證，有預訂機票者"=>"已收合同和簽證，有預訂機票者",
        ];
    }
}
