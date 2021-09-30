<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Maatwebsite\LaravelNovaExcel\Actions\DownloadExcel as ActionsDownloadExcel;

class DownloadExcel extends ActionsDownloadExcel
{
    public function name(){
        return __('Download Excel');
    }
}
