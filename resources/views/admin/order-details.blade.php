
<!DOCTYPE html>
<html lang="en">
<head>
    @include("admin.admincss")
</head>
<body>
<div class="container-scroller">
    @include("admin.nevbar")

    <div style="position: relative; top: 60px; right: -150px">

        <div>
            <table bgcolor="black">
                <tr>
                    <th style="padding: 30px">ID</th>
                    <th style="padding: 30px">Order Id</th>
                    <th style="padding: 30px">Menu Id</th>
                    <th style="padding: 30px">Amount</th>
                    <th style="padding: 30px">Quantity</th>
                    <th style="padding: 30px">totalAmount</th>
                    <th style="padding: 30px">No of serving</th>
                    <th style="padding: 30px">Action</th>

                </tr>

                @foreach($data as $data)
                    <tr align="center">
                        <td>{{$data->id}}</td>
                        <td>{{$data->order_id}}</td>
                        <td>{{$data->menu_id}}</td>
                        <td>{{$data->amount}}</td>
                        <td>{{$data->quantity}}</td>
                        <td>{{$data->totalAmount}}</td>
                        <td>{{$data->no_of_serving}}</td>
                        <td><a href="{{url('/deleteorder',$data->id)}}">Delete</a></td>
                    </tr>
                @endforeach

            </table>


        </div>


    </div>

</div>
@include("admin.adminscript")
</body>
</html>
