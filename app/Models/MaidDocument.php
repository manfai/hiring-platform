<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DigitalCloud\ModelNotes\HasNotes;

class MaidDocument extends Model
{
    use HasFactory;    
    use HasNotes;
}
