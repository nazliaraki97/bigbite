<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order_detail;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\bigbitemenu;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Rating;
use Illuminate\Support\Facades\Crypt;
class ApiController extends Controller
{
    public function admin(Request $request)
    {

        $users = new User();
        $users->name=$request->post('name');
        $users->email=$request->post('email');
        $users->password=Crypt::encrypt($request->post('password'));
        if($users->save())
        {
            return response()->json(['succes'=>true
            ]);

        }else{
            return response()->json([
                'succes'=>false
            ]);
        }

    }

    public function register(Request $request)
    {

        $customers = new Customer();
        $customers->firstName=$request->post('firstName');
        $customers->lastName=$request->post('lastName');
        $customers->email=$request->post('email');
        $customers->phoneNumber=$request->post('phoneNumber');
        $customers->password=Crypt::encryptString($request->post('password'));
        if($customers->save())
        {
            return response()->json(['succes'=>true
            ]);

        }else{
            return response()->json([
                'succes'=>false
            ]);
        }

    }
    public function login(Request $request)
    {
        $user = Customer::where('email',$request->email)->where('password',$request->password)->get();
        if(count($user))
        {
            return response()->json(['status'=>true,'user' => $user]);

        }else{
            return response()->json(['status'=>false ]);
        }

    }

    public function categories(){
        $categories = Category::all();
        return response()->json($categories);
    }

    public function getregister(){
        $customers = Customer::all();
        return response()->json($customers);
    }

    public function getfood(){
        $bigbitemenus = bigbitemenu::all();
        return response()->json($bigbitemenus);
    }

    public function orders()
    {
        $orders = Order::all();
        return response()->json($orders);
    }

    public function postorder(Request $request)
    {
        $order = new Order();
        $order->customer_id = $request->post('customerid');
        $order->orderDate = $request->post('orderDate');
        $order->orderStatus = $request->post('orderStatus');
        $order->amount = $request->post('amount');
        if ($order->save()) {
            return response()->json(['succes' => true
            ]);

        } else {
            return response()->json([
                'succes' => false
            ]);
        }
    }

    public function orderdetails()
    {
        $orderdetails = Order_detail::all();
        return response()->json($orderdetails);
    }

}

