<?php

namespace App\Models;

use DigitalCloud\ModelNotes\HasNotes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Interview extends Model
{
    use HasFactory;
    use HasNotes;
    use SoftDeletes;

    protected $casts = [
        'created_at' => 'datetime',
        'started_at' => 'datetime',
        'ended_at' => 'datetime',
    ];

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            //assign admin when create new interview
            // $model->admin_id = auth()->user()->id;
        });
    }

    public function admin()
    {
        return $this->belongsTo(Admin::class);
    }

    public function maid()
    {
        return $this->belongsTo(Maid::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
