
<!DOCTYPE html>
<html lang="en">
<head>
    @include("admin.admincss")
</head>
<body>
<div class="container-scroller">
    @include("admin.userNavbar")

    <div style="position: relative; top: 60px; right: -150px">

        <div>
            <table bgcolor="black">
                <tr>
                    <th style="padding: 30px">Customer ID</th>
                    <th style="padding: 30px">Foods</th>
                    <th style="padding: 30px">Quantity</th>
                    <th style="padding: 30px">Total Amount</th>
                </tr>

                @foreach($data as $data)
                    <tr align="center">
                        <td>{{$data->id}}</td>
                        <td>{{$data->food_id}}</td>
                        <td>{{$data->quantity}}</td>
                        <td>{{$data->totalAmount}}</td>
                    </tr>
                @endforeach

            </table>


        </div>


    </div>

</div>
@include("admin.adminscript")
</body>
</html>
