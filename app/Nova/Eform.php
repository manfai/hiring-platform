<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;
use NovaButton\Button;
use OptimistDigital\NovaNotesField\NotesField as Notes;

class Eform extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Eform::class;
    
    public static function authorizedToCreate(Request $request)
    {
        return true;
    }

    public function authorizedToDelete(Request $request)
    {
        return true;
    }
    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'code', 'name'
    ];
    public static function label() {
        return __('E-Form');
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
            ID::make(__('ID'), 'id')->sortable(),
            Text::make(__('Code'), 'code'),
            Text::make(__('Name'), 'name'),
            Boolean::make(__('Active'), 'active'),
            HasMany::make(__('Questions'),'questions', 'App\Nova\EformQuestion'),
            HasMany::make(__('Results'),'results', 'App\Nova\EformResult'),
            Button::make('View From')->visible($this->code)->link(route('eform',[$this->code])),
            Notes::make('Notes','notes')->fullWidth()

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
