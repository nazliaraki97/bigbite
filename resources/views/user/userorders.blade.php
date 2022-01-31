
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
                    <th style="padding: 30px">Menu Name</th>
                    <th style="padding: 30px">Quantity</th>
                    <th style="padding: 30px">Action</th>

                </tr>

                    <form action="{{url('/addcart')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @foreach($data as $data)
                            <tr align="center">
                                <td><option value="{{$data->id}}"> {{$data->name}}</option></td>
                                <td><input type="number" name="quantity" min="1" value="1" style="width:80px;color:#0A246A"></td>
                                <td><input type="submit" value="order"></td>
                            </tr>
                        @endforeach
                    </form>
            </table>
        </div>
    </div>
</div>
@include("admin.adminscript")
</body>
</html>
