<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Medicine_type;
use App\Models\Cart;


class Medicine_storage extends Model
{
    use HasFactory;
    public $timestamps = false;

    public function medicine_types(){
        return $this->belongsTo(Medicine_type::class, 'type');
    }

    public function carts(){
        return $this->hasMany(Cart::class);
    }

}
