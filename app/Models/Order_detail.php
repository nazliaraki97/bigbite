<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
    use HasFactory;
    public function bigbitemenu(){
        return $this->hasOne(bigbitemenu::class,'id','menu_id');
    }

    public function Order(){
        return $this->hasOne(Order::class,'id','order_id');
    }

}
