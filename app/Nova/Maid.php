<?php

namespace App\Nova;

// use DigitalCloud\NovaResourceNotes\Fields\Notes;
use OptimistDigital\NovaNotesField\NotesField as Notes;
use DmitryBubyakin\NovaMedialibraryField\Fields\Medialibrary;
use Ebess\AdvancedNovaMediaLibrary\Fields\Files;
use Ebess\AdvancedNovaMediaLibrary\Fields\Images;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\Heading;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\KeyValue;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Slug;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Panel;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Spatie\TagsField\Tags;

class Maid extends Resource
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
    public static $title = 'name';
    /**
     * Get the search result subtitle for the resource.
     *
     * @return string
     */
    public function subtitle()
    {
        return "No: {$this->bio_no}";
    }

    public static $showColumnBorders = true;

    public static function label() {
        return __('Maids');
    }

    
    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id','bio_no','name'
    ];

    public static function indexQuery(NovaRequest $request, $query)
    {
        if($request->user()->hasAnyRole(['Super Admin','Admin'])){
            return $query;
        } else {
            return $query->whereHas('users', function ($query) use($request){
                $query->where('user_id', $request->user()->id);
            });
        }
    }

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            Boolean::make(__('Waiting Maid'),'unemployed')->default(true),
            Boolean::make(__('Booked Maid'),'booked')->default(false),
            Boolean::make(__('Specific Maid'),'specific')->default(false),

            Slug::make(__('Code'), 'bio_no')->rules('required', 'min:2'),
            
            Text::make(__('Name'),'name')  
             ->rules('required', 'min:2'),

            Number::make(__('Age'),'age', function($value){
                return $value.__('Year Old');
            })->onlyOnIndex(),
         
            Select::make(__('Jobs'),'jobs')  
            ->rules('required')
            ->options([
                'nurse' => __('Nurse'),
                'factory' => __('Factory'),
                'construction' => __('Construction'),
                'informal' => __('Informal'),
                'other' => __('Other'),
            ])->displayUsingLabels(),


            Date::make(__('Confirm Date'),'cfm_date')->hideFromIndex(),

            Text::make(__('Employer Name'),'employer_name')->hideFromIndex(), //已僱->僱主

            Date::make(__('JPL Date'),'jpl_date')->hideFromIndex(),

            Heading::make(__('Medical'))->hideFromIndex(),
            Date::make(__('Medical Date'),'medical_date')->hideFromIndex(),
            Text::make(__('Medical Result'),'medical_result')->hideFromIndex(),

            Heading::make(__('Passport')),
            Text::make(__('Passport No'),'passport_no')->hideFromIndex(),
            DateTime::make(__('Passport Expire Date'),'passport_expired')->hideFromIndex(),
            
            Heading::make(__('JO')),
            Text::make(__('JO Type'),'jo_type')->hideFromIndex(),
            Date::make(__('JO Revice Date'),'jo_rcv_date')->hideFromIndex(),
            Text::make(__('JO No'),'jo_no')->hideFromIndex(),

            Heading::make(__('MOFA')),
            Date::make(__('MOFA Revice Date'),'mofa_rcv_date')->hideFromIndex(),
            Text::make(__('MOFA No'),'mofa_no')->hideFromIndex(),

            Heading::make(__('Visa')),
            Text::make(__('Visa In'),'visa_in')->hideFromIndex(),
            Text::make(__('Visa Out'),'visa_out')->hideFromIndex(),
        
            Heading::make(__('Flight')),
            Date::make(__('Flight Date'),'flight_date')->hideFromIndex(),
            Text::make(__('Flight No'),'flight_no')->nullable()->hideFromIndex(),
            Text::make(__('Flight ETA'),'flight_eta')->hideFromIndex(),

            Heading::make(__('Remark')),
            KeyValue::make(__('Remark'),'remark')->hideFromIndex()->keyLabel(__('Label')) // Customize the key heading
            ->valueLabel(__('Item')) // Customize the value heading
            ->actionText(__('Add Item')), // Customize the "add row" button text,

            new Panel(__('Personal Information'), $this->personalFields()),

            new Panel(__('Images'), $this->imagesFields()),

         

            // new Panel('Extra Information', $this->statusFields()),

            Notes::make(__('Notes'),'notes')->fullWidth(), 
        ];
    }

     /**
     * Get the status fields for the resource.
     *
     * @return array
     */
    protected function personalFields(){
        return [

            Select::make(__('Religion'),'religion')  
            ->options([
                'christianity'  => __('Christianity'),
                'islam'         => __('Islam'),
                'hinduism'      => __('Hinduism'),
                'buddhism'      => __('Buddhism'),
                'sikhism'       => __('Sikhism'),
                'judaism'       => __('Judaism'),
            ])->displayUsingLabels(),

            Text::make(__('Address'),'address')  
            ->rules('required', 'min:2')->hideFromIndex(),

            Date::make(__('Date of Birthday'),'dob')  
            ->rules('required')->onlyOnForms(),

            Select::make(__('Gender'),'gender')  
            ->rules('required')
            ->options([
                'male' => __('Male'),
                'female' => __('Female'),
            ])->displayUsingLabels(),

            Select::make(__('Marital Status'),'marital_status')  
            ->rules('required')
            ->options([
                'married' => __('Married'),
                'widowed' => __('Widowed'),
                'separated' => __('Separated'),
                'divorced' => __('Divorced'),
                'single' => __('Single'),
            ])->displayUsingLabels(),

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
            ])->displayUsingLabels(),

            // Tags::make('Tags')->hideFromIndex(),


        ];
    }
     /**
     * Get the status fields for the resource.
     *
     * @return array
     */
    protected function imagesFields(){
        return [
            Medialibrary::make(__('Image'), 'main_image', 'public', 'maid_main_image')->accept('image/*')->single(),     
            Medialibrary::make(__('Images'), 'multi_image', 'public', 'maid_multi_image')->accept('image/*')->hideFromIndex()
        ];
    }
    /**
     * Get the status fields for the resource.
     *
     * @return array
     */
    protected function statusFields(){
        return [
        
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
        return [
            new Filters\MaidReligion,
            new Filters\MaidEmployed,
            new Filters\MaidJob,
            new Filters\MaidMaritalStatus,
            new Filters\MaidStatus,
        ];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [
            (new Lenses\UnemployedMaids())->canSee(function($request){
                return $request->user()->hasAnyRole(["Super Admin","Admin","Staff"]);
            }),
            (new Lenses\BookedMaids())->canSee(function($request){
                return $request->user()->hasAnyRole(["Super Admin","Admin","Staff"]);
            }),
            (new Lenses\SpecificMaids())->canSee(function($request){
                return $request->user()->hasAnyRole(["Super Admin","Admin","Staff"]);
            }),
        ];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [
            (new Actions\MakeAppointment())->canSee(function ($request) {
                return $request->user()->hasAnyRole(['User']);
            })->canRun(function ($request, $document) {
                return $request->user()->hasAnyRole(['User']);
            }),
            (new Actions\DownloadExcel())->withHeadings()->withFilename('Maids_' . now() . '.xlsx')->canSee(function ($request) {
                return $request->user()->hasAnyRole(['Super Admin','Admin','Staff']);
            })->canRun(function ($request, $document) {
                return $request->user()->hasAnyRole(['Super Admin','Admin','Staff']);
            }),
            (new Actions\AssignUser())->canSee(function ($request) {
                return $request->user()->hasAnyRole(['Super Admin','Admin','Staff']);
            })->canRun(function ($request, $document) {
                return $request->user()->hasAnyRole(['Super Admin','Admin','Staff']);
            }),
        ];
    }
}
