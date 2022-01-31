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
use Carbon\Carbon;

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
        $customers->password= $request->post('password') ;
    //    $customers->password=encrypt($request->post('password'));

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
        // dd(  $request->post('password')  ) ;
       // $password_decypted = decrypt($request->post('password'))  ;
        // dd($password_decypted) ;
       // dd( Crypt::encrypt($request->post('password')) ) ;
       // dd( Crypt::decryptString('eyJpdiI6IjNVMWo4TTRlZlQ0aWN6aWlESW1GckE9PSIsInZhbHVlIjoiYjBraU84dnlBY2swT0d2eHp0OHc1Zz09IiwibWFjIjoiZDg3MmEwZTZmZjk2MWIwYTY2NWExN2JmZTFlZTE4ZDQyNGQ3Yzc4MjhiYmM5ZTdkZDhjNWVlOTNmOWMzZDAxNCIsInRhZyI6IiJ9') ) ;
        $user = Customer::where('email',$request->email)
            ->where('password',  $request->post('password') )
            ->get();
        // dd($password_decypted , $user->password) ;
        if(count($user))
        {
            return response()->json(['status'=>true,'user' => $user[0]]);

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

    public function orderdetails(Request $request)
    {
        $order = new Order();
        $order->customer_id = $request->post('customerid');
        $order->orderDate = Carbon::now() ;
        $order->orderStatus = 1 ;

        $amount=0;
        $order->amount = $amount;
        $order->save();

        $orderdetails = $request->post('orderdetails');

        foreach ($orderdetails as $orderdetail){
            $orderdet = new Order_detail();
            $orderdet->order_id = $order->id;
            $orderdet->menu_id = $orderdetail['menu_id'] ;
            $orderdet->amount =  $orderdetail['amount'] ;
            $orderdet->quantity =  $orderdetail['quantity'] ;
            $orderdet->totalAmount=($orderdet->amount)*($orderdet->quantity);
            $orderdet->no_of_serving=$orderdetail['no_of_serving'];
            $amount += $orderdet->totalAmount ;
            $orderdet->save();
        }

        $order->amount = $amount;
        $order->save();

        if ($order->save()) {
            return response()->json([
                'succes' => true,


            ]);

        } else {
            return response()->json([
                'succes' => false
            ]);
        }
    }

}

