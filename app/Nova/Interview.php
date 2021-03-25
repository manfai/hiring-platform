<?php

namespace App\Nova;

use DigitalCloud\NovaResourceNotes\Fields\Notes;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Badge;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Status;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Textarea;
use Laravel\Nova\Http\Requests\NovaRequest;

class Interview extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Interview::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    public static function label() {
        return '面試請求';
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id','started_at'
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),
            BelongsTo::make(__('By'),'admin','App\Nova\Admin')->onlyOnIndex(),
            BelongsTo::make(__('From'),'user','App\Nova\User')->onlyOnIndex(),
            DateTime::make(__('Started At'),'started_at'),
            BelongsTo::make(__('Maid'),'maid','App\Nova\Maid')->searchable(),
            Select::make(__('Status'),'status')->options([
                'pending'   =>__('Pending'),
                'confirmed' =>__('Confirmed'),
                'completed' =>__('Completed'),
            ])->displayUsingLabels(),
            Textarea::make(__('Remark'),'remark'),
            Notes::make(__('Notes'),'notes'),
            // DateTime::make(__('Ended At'),'ended_at'),
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }

    public static function indexQuery(NovaRequest $request, $query)
    {
        if($request->user()->hasAnyRole(['Super Admin', 'Admin'])){
            return $query;
        } else {
            return $query->where('user_id',auth()->user()->id);
        }
    }

}
