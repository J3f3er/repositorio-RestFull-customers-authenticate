<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tokens extends Model
{
    use HasFactory;
    protected $table = "tokens";
    protected $primaryKey = "id";
    public $timestamps = false;
    protected $fillable = [
        'email',
        'token',
        'created_at',
        'expires_at'
    ];
}
