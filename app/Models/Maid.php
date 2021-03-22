<?php

namespace App\Models;

use DateTime;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\Models\Media;
use DigitalCloud\ModelNotes\HasNotes;
use Spatie\Tags\HasTags;

class Maid extends Model implements HasMedia
{
    use HasFactory;
    use HasNotes;
    use HasTags;
    use InteractsWithMedia;

    protected $casts = [
        'dob' => 'date',
        'jpl_date' => 'date',
        'medical_date' => 'date',
        'jo_rcv_date' => 'date',
        'mofa_rcv_date' => 'date',
        'flight_date' => 'date',
    ];

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $date = new DateTime($model->dob);
            $now = new DateTime();
            $interval = $now->diff($date);
            $age = $interval->y;
            $model->age = $age;
        });
        static::updating(function ($model) {
            $date = new DateTime($model->dob);
            $now = new DateTime();
            $interval = $now->diff($date);
            $age = $interval->y;
            $model->age = $age;
        });
    }
    


}
