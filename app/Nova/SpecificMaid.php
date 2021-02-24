<?php

namespace App\Nova;

use DigitalCloud\NovaResourceNotes\Fields\Notes;
use Ebess\AdvancedNovaMediaLibrary\Fields\Files;
use Ebess\AdvancedNovaMediaLibrary\Fields\Images;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Slug;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Panel;
use Spatie\TagsField\Tags;

class SpecificMaid extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Maid::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    public static $showColumnBorders = true;

    public static function label() {
        return '指定女傭';
    }

    
    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
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
            // ID::make(__('ID'), 'id')->sortable(),
            Slug::make(__('Code'), 'code'),

            new Panel('Images', $this->imagesFields()),

            Text::make(__('Name'),'name')  
            ->rules('required', 'min:2'),

            Text::make(__('Full Name'),'full_name')  
            ->rules('required', 'min:2')->hideFromIndex(),

            Text::make(__('Email'),'email')  
            ->rules('required', 'min:2')->hideFromIndex(),

            Text::make(__('Address'),'address')  
            ->rules('required', 'min:2')->hideFromIndex(),

            Date::make(__('Date of Birthday'),'dob')  
            ->rules('required')->onlyOnForms(),
            Number::make(__('Age'),'age')->onlyOnIndex(),

            Select::make(__('Gender'),'gender')  
            ->rules('required')
            ->options([
                'M' => 'Male',
                'F' => 'Female',
            ]),

            Select::make(__('Marital Status'),'marital_status')  
            ->rules('required')
            ->options([
                'married' => 'Married',
                'widowed' => 'Widowed',
                'separated' => 'Separated',
                'divorced' => 'Divorced',
                'single' => 'Single',
            ]),

            Select::make(__('Status'),'status')  
            ->rules('required')
            ->options([
                "待聘女傭"=>"待聘女傭",
                "直聘"=>"直聘",
                "已收合同但未有簽證者"=>"已收合同但未有簽證者",
                "請確定航程"=>"請確定航程",
                "已收合同但未有簽證，有預訂機者"=>"已收合同但未有簽證，有預訂機者",
                "已收合同和簽證，有預訂機票者"=>"已收合同和簽證，有預訂機票者",
                "航程已被確定"=>"航程已被確定",
                "機票在侯補單"=>"機票在侯補單",
                "已收合同和簽證，有預訂機票者"=>"已收合同和簽證，有預訂機票者",
            ])->hideFromIndex(),

            Tags::make('Tags')->hideFromIndex(),

            new Panel('Extra Information', $this->statusFields()),

            Notes::make(__('Notes'),'notes')->hideFromIndex(),
        ];
    }

     /**
     * Get the status fields for the resource.
     *
     * @return array
     */
    protected function imagesFields(){
        return [
            Images::make('Main image', 'main') // second parameter is the media collection name
            ->rules('required'), // validation rules

            Images::make('Images', 'maid_multi_collection') // second parameter is the media collection name
            ->fullSize() // full size column
            ->hideFromIndex()
            ->rules('required', 'size:1') // validation rules for the collection of images
            // validation rules for the collection of images
            ->singleImageRules('dimensions:min_width=100'),
        ];
    }
    /**
     * Get the status fields for the resource.
     *
     * @return array
     */
    protected function statusFields(){
        return [
            Number::make(__('Height'),'height')  
            ->rules('required',),

            Number::make(__('Weight'),'weight')  
            ->rules('required'),

            Select::make(__('Religion'),'religion')  
            ->rules('required')
            ->options([
                'christianity' => 'Christianity',
                'islam' => 'Islam',
                'hinduism' => 'Hinduism',
                'buddhism' => 'Buddhism',
                'folk_religions' => 'Folk religions',
                'sikhism' => 'Sikhism',
                'judaism' => 'Judaism',
            ]),

            Boolean::make(__('Visa'),'visa')->hideFromIndex(),
            Boolean::make(__('Pig'),'eat_pig')->hideFromIndex(),
            Boolean::make(__('Pending'),'pending')->hideFromIndex(),
            Boolean::make(__('Contract'),'contract')->hideFromIndex(),
            Text::make(__('Airline Ticket'),'airline_ticket')
            ->help(
                'Input Ticket No.'
            )
            ->rules('required', 'min:2')->hideFromIndex(),
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
}
