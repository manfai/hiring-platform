<?php

namespace App\Nova\Actions;

use App\Models\Interview;
use App\Models\Maid;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\Textarea;

class MakeAppointment extends Action
{
    use InteractsWithQueue, Queueable;

    public function name(){
        return __('Make an Appointment');
    }
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
            $interview = new Interview();
            $interview->user_id     = auth()->user()->id;
            $interview->maid_id     = $model->id;
            $interview->status      = 'pending';
            $interview->remark      = $fields->remark;
            $interview->started_at  = $fields->started_at;
            $interview->save();
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
            DateTime::make(__('Started At'), 'started_at'),
            Textarea::make(__('Remark'), 'remark')
        ];
    }
}
