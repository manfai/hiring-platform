<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EformQuestion extends Model
{
    use HasFactory;

    protected $casts = [
        'must' => 'boolean',
        'active' => 'boolean',
        'updated_at' => 'datetime',
        'options' => 'array',
    ];

    // protected static function boot()
    // {
    //     parent::boot();
    //     static::creating(function ($model) {
    //        \Log::info($model);
    //     });
    // }

    public function eform(){
        return $this->belongsTo(Eform::class);
    }

}
