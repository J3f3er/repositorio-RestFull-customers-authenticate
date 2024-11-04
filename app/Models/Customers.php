<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    use HasFactory;
    protected $table = "customers";
    protected $primaryKey = "dni";
    public $timestamps = false;
    protected $fillable = [
        'id_reg',
        'id_com',
        'email',
        'name',
        'last_name',
        'address',
        'date_reg',
        'status'
    ];

    public function communes(){
        return $this->belongsTo(Communes::class, 'id_com', 'id_com');
    }

    public function regions(){
        return $this->belongsTo(Regions::class, 'id_reg', 'id_reg');
    }
}
