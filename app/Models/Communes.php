<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Communes extends Model
{
    use HasFactory;

    protected $table = "communes";
    protected $primaryKey = "id_com";
    public $timestamps = false;
    protected $fillable = [
        'id_reg',
        'description',
        'status'
    ];

    public function regions(){
        return $this->belongsTo(Regions::class, 'id_reg', 'id_reg');
    }

}
