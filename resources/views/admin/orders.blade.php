
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
                    <th style="padding: 30px">Customer ID</th>
                    <th style="padding: 30px">Amount</th>
                    <th style="padding: 30px">Order Status</th>
                    <th style="padding: 30px">Action</th>

                </tr>

                @foreach($data as $data)
                    <tr align="center">
                        <td>{{$data->id}}</td>
                        <td>{{$data->customer_id}}</td>
                        <td>{{$data->amount}}</td>
                        <td>{{$data->orderStatus}}</td>
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
