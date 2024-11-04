<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Regions extends Model
{
    use HasFactory;
    protected $table = "regions";
    protected $primaryKey = "id_reg";
    public $timestamps = false;
    protected $fillable = [
        'description',
        'status'
    ];
}
