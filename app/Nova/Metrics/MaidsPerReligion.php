<?php

namespace App\Nova\Metrics;

use App\Models\Maid;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Metrics\Partition;

class MaidsPerReligion extends Partition
{
    /**
     * Calculate the value of the metric.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return mixed
     */
    public function calculate(NovaRequest $request)
    {
        return $this->count($request, Maid::class, 'religion')->label(function ($value) {
            switch ($value) {
                case null:
                    return 'None';
                default:
                    return __(ucfirst($value));
            }
        });
    }
    public function name()
    {
        return __('Religion');
    }

    /**
     * Determine for how many minutes the metric should be cached.
     *
     * @return  \DateTimeInterface|\DateInterval|float|int
     */
    public function cacheFor()
    {
        // return now()->addMinutes(5);
    }

    /**
     * Get the URI key for the metric.
     *
     * @return string
     */
    public function uriKey()
    {
        return 'maids-per-religion';
    }
}
