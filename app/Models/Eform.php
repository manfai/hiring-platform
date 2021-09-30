<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use OptimistDigital\NovaNotesField\Traits\HasNotes;

class Eform extends Model
{
    use HasFactory;
    use SoftDeletes;
    use HasNotes;
    // protected $primaryKey = 'code';
    protected $casts = [
        'created_at' => 'datetime',
        'deleted_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
    protected $appends = ['questions'];
    public function getQuestionsAttribute(){
        return $this->questions()->get();
    }
    public function questions()
    {
        return $this->hasMany(EformQuestion::class);
    }
    public function results()
    {
        return $this->hasMany(EformResult::class);
    }

}
