@extends('admin.master')
@section('content')
<div id="page-wrapper">
    @if (count($roomreservationdetails) > 0)
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Danh sách chi tiết phiếu thuê phòng
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <button class="btn btn-primary addValue" data-toggle="modal" data-target="#myModal" style="margin-bottom: 20px;"><i class="fa fa-plus"></i>
                                Thêm mới
                            </button>
                        </div>
                        <div class="col-lg-6">
                            {!! Form::text('key','', ['class'=>'form-control key','placeholder' => 'Nhập từ khóa tìm kiếm']) !!}
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" >
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Mã khách hàng</th>
                                    <th>Mã phòng</th>
                                    <th>Ngày đăng kí</th>
                                    <th>Ngày nhận</th>
                                    <!-- <th>Trạng thái</th> -->
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($roomreservationdetails as $roomreservationdetail)
                                <tr class="roomreservationdetail{{$roomreservationdetail->id}}" style="text-align:center;">
                                    <td>{{$roomreservationdetail->id}}</td>
                                    <td>{{$roomreservationdetail->MaKhachHang}}</td>
                                    <td>{{$roomreservationdetail->MaPhong}}</td>
                                    <td>{{$roomreservationdetail->NgayDangKi}}</td>
                                    <td>{{$roomreservationdetail->NgayNhan}}</td>
                                    <!-- <td>
                                        <button class="btn btn-success btn-circle" type="button">
                                            <i class="fa fa-check"></i>
                                        </button>
                                        <button class="btn btn-danger btn-circle" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </td> -->
                                    <td>
                                        <button class="btn btn-warning editValue" data-toggle="modal" data-target="#myModal" value="{{$roomreservationdetail->id}}""><i class="fa fa-pencil-square-o"></i> Sửa</button>
                                    </td>
                                    <td>
                                        {!! Form::open(['method' => 'DELETE', 'route' => ['roomreservationdetail.destroy',$roomreservationdetail->id]]) !!}
                                        <button class="btn btn-danger deleteValue" type="submit" value="{{$roomreservationdetail->id}}"><i class="fa fa-trash-o" ></i> Xóa</button>
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- /.table-responsive -->

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

    $(document).ready(function() {

        /* Add value - P.Manh - 7/11/17*/

        $('.addValue').click(function() {
            $('#id').val('');
            $('#MaKhachHang').val('');
            $('#MaPhong').val('');
            $('#NgayDangKi').val('');
            $('#NgayNhan').val('');
            $('#password').parent('div').show();
            $('#id').parent('div').hide();
            $('.createValue').show();
            $('.updateValue').hide();
        });
        $('.createValue').click(function(e){
            e.preventDefault();
            var MaKhachHang = $('#MaKhachHang').val();
            var MaPhong = $('#MaPhong').val();
            var NgayDangKi = $('#NgayDangKi').val();
            var NgayNhan = $('#NgayNhan').val();
            if(MaKhachHang != '' && MaPhong != '' && NgayDangKi != '' && NgayNhan != '') {
                $.ajax({
                    url : '/roomreservationdetail',
                    dataType : 'json',
                    type : 'POST',
                    data : {
                        _token: $('input[name=_token]').val(),
                        MaKhachHang : MaKhachHang,
                        MaPhong : MaPhong,
                        NgayDangKi : NgayDangKi,
                        NgayNhan : NgayNhan
                    }
                }).done(function(response) {
                    $('#myModal').modal('hide');
                    $('tbody tr').append("<tr class='roomreservationdetail" + response.id + "' ><td>" + data.id + "</td><td>" + response.MaKhachHang + "</td><td>" + response.MaPhong + "</td><td>" + response.NgayDangKi + "</td><td>" + response.NgayNhan + "</td><td><button class='btn btn-warning editValue' data-toggle = 'modal' data-target='#myModal' value ='" + response.id + "'><i class='fa fa-pencil-square-o'></i> Sửa</button></td><td><button type='submit' class='btn btn-danger deleteValue' value='" + response.id + "'><i class='fa fa-trash-o'></i> Xóa</button></td></tr>");
                });
            }
        });

        /* Sửa value - P.Manh - 5/11/17*/

        $('.editValue').click(function() {
            var id = $(this).val();
            var MaKhachHang = $(this).parent().prev("td").prev("td").prev("td").prev("td").text();
            var MaPhong = $(this).parent().prev("td").prev("td").prev("td").text();
            var NgayDangKi = $(this).parent().prev("td").prev("td").text();
            var NgayNhan = $(this).parent().prev("td").prev("td").text();
            $('#id').val(id);
            $('#MaKhachHang').val(MaKhachHang);
            $('#MaPhong').val(MaPhong);
            $('#NgayDangKi').val(NgayDangKi);
            var NgayNhan = $('#NgayNhan').val();
            $('#id').parent('div').show();
            $('.createValue').hide();
            $('.updateValue').show();
        });
        $('.updateValue').click(function(e) {
            e.preventDefault();
            var id = $('#id').val();
            var MaPhong = $('#MaPhong').val();
            var MaKhachHang = $('#MaKhachHang').val();
            var NgayDangKi = $('#NgayDangKi').val();
            var NgayNhan = $('#NgayNhan').val();
            if(MaKhachHang != '' && MaPhong != '' && NgayDangKi != '' && NgayNhan != '') {
                $.ajax({
                    dataType : 'json',
                    type : 'PUT',

                    // router
                    url : '/roomreservationdetail/'+id,
                    data : {
                        _token: $('input[name=_token]').val(),
                        id : id,
                        MaKhachHang : MaKhachHang,
                        MaPhong : MaPhong,
                        NgayDangKi : NgayDangKi,
                        NgayNhan : NgayNhan
                        
                    }
                }).done(function(data) {
                 $('#myModal').modal('hide');
                 $(".roomreservationdetail"+id).replaceWith(
                    ("<tr class='roomreservationdetail" + data.id + "'><td>" + data.id + "</td><td>" + data.MaKhachHang + "</td><td>" + data.MaPhong + "</td><td>" + data.NgayDangKi + "</td><td>" + data.NgayNhan + "</td><td><button class='btn btn-warning editValue' data-toggle = 'modal' data-target='#myModal' value ='" + data.id + "'><i class='fa fa-pencil-square-o'></i> Sửa</button></td><td><button type='submit' class='btn btn-danger deleteValue' value='" +data.id+ "'><i class='fa fa-trash-o'></i> Xóa</button></td></tr>")
                    );
             })
            }
        })

        // Xóa value - P.Manh - 5/11/17

        $(document).on('click', '.deleteValue', function(e) {
            e.preventDefault();
            var id = $(this).val();
            $.ajax({
                type : 'Xóa',
                url : '/roomreservationdetail/'+id,
                data : {
                    _token: $('input[name=_token]').val(),
                    id : id
                }
            }).done(function(data) {
                $("tr.roomreservationdetail"+id).remove();
            })
        });

        // Search info

        $('input[name=key]').keyup(function() {
            var key = $(this).val();
            setTimeout(function() {
                $.ajax({
                    url: '/search',
                    type : 'GET',
                    data : {
                        key : key
                    },
                    success: function(response) {
                        $('tbody').html(response);
                    }   
                })  
            },1000);
        });
    })
</script>
<div class="modal fade" id="myModal" tabindex="-1" NgayDangKi="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Update</h4>
            </div>
            <div class="modal-body">
               {!! Form::open(['class' => 'form-horizontal', 'method' => 'POST', 'route' => ['roomreservationdetail.update',$roomreservationdetail->id]]) !!}
               <div>
                <label for="label">ID</label>
                <input type="text" name="id" class="form-control" id="id">
            </div>
            <div>
                <label for="label">Mã khách hàng</label>
                <input type="text" name="MaKhachHang" class="form-control" id="MaKhachHang">
            </div>
            <div>
                <label for="label">Mã phòng</label>
                <input type="text" name="MaPhong" class="form-control" id="MaPhong">
            </div>
            <div>
                <label for="label">Ngày đăng ký</label>
                <input type="text" name="NgayDangKi" class="form-control" id="NgayDangKi">
            </div>
            <div>
                <label for="label">Ngày nhận</label>
                <input type="text" name="NgayNhan" class="form-control" id="NgayNhan">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary updateValue">Update</button>
                <button type="button" class="btn btn-primary createValue">Save</button>

            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
</div>
@endif
@endsection