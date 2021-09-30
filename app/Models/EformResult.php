<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OptimistDigital\NovaNotesField\Traits\HasNotes;

class EformResult extends Model
{
    use HasFactory, HasNotes;

    protected $casts = [
        'updated_at' => 'datetime',
        'result' => 'json',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'result',
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
