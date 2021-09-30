<?php

namespace App\Nova\Actions;

use App\Models\User;
use App\Models\UserMaid;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\BelongsToMany;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\Select;

class AssignUser extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        foreach ($models as $model) {
            $assign = new UserMaid();
            $assign->user_id     = $fields->user_id;
            $assign->maid_id     = $model->id;
            $assign->save();
        }
        return Action::message(__('The interview schedule has been specified for you!'));
    }

    /**
     * Get the fields available on the action.
     *
     * @return array
     */
    public function fields()
    {
        return [
            // BelongsToMany::make(__('User'),'users','App\Nova\User')
            Select::make(__('User'),'user_id')->options(User::all()->keyBy('id')->map(function($item){
                return $item->name;
            }))->searchable()
        ];
    }
}
