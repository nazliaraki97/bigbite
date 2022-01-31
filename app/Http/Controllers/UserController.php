<?php

namespace App\Http\Controllers;

use App\Models\bigbitemenu;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Rating;
use App\Models\Cart;

class UserController extends Controller
{
    public function userorders()
    {
        $data=bigbitemenu::all();
        return view("user.userorders",compact("data"));
    }
    public function userrating()
    {
        $data=rating::all();
        return view("user.userrating",compact("data"));
    }
    public function showcart()
    {
        $data=cart::all();
        $data2=bigbitemenu::all();
        return view("user.cart",compact("data"));
    }
    public function addcart(Request $request)
    {   $data = new Cart();
        $data2=bigbitemenu::all();
        $data2->name=$request->name;
        $data->user_id=$request->user;
        $data->food_id=$request->name;
        $data->quantity=$request->quantity;
        $data->save();
        return redirect()->back();
    }
}
