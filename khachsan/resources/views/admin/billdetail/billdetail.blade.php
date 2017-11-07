@extends('admin.master')
@section('content')
<div id="page-wrapper">
    @if (count($billdetails) > 0)
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Danh sách hóa đơn
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
                                    <th>Mã phòng</th>
                                    <th>Mã sử dụng dịch vụ</th>
                                    <th>Mã chính sách</th>
                                    <th>Phụ thu</th>
                                    <th>Tiền phòng</th>
                                    <th>Tiền dịch vụ</th>
                                    <th>Giảm giá khách hàng</th>
                                    <th>Hình thức thanh toán</th>
                                    <th>Số ngày</th>
                                    <th>Thành tiền</th>
                                    <!-- <th>Trạng thái</th> -->
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($billdetails as $billdetail)
                                <tr class="billdetail{{$billdetail->id}}" style="text-align:center;">
                                    <td>{{$billdetail->id}}</td>
                                    <td>{{$billdetail->MaPhong}}</td>
                                    <td>{{$billdetail->MaSuDungDichVu}}</td>
                                    <td>{{$billdetail->MaChinhSach}}</td>
                                    <td>{{$billdetail->PhuThu}}</td>
                                    <td>{{$billdetail->TienPhong}}</td>
                                    <td>{{$billdetail->TienDichVu}}</td>
                                    <td>{{$billdetail->GiamGiaKhachHang}}</td>
                                    <td>{{$billdetail->HinhThucThanhToan}}</td>
                                    <td>{{$billdetail->SoNgay}}</td>
                                    <td>{{$billdetail->ThanhTien}}</td>
                                    <!-- <td>
                                        <button class="btn btn-success btn-circle" type="button">
                                            <i class="fa fa-check"></i>
                                        </button>
                                        <button class="btn btn-danger btn-circle" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </td> -->
                                    <td>
                                        <button class="btn btn-warning editValue" data-toggle="modal" data-target="#myModal" value="{{$billdetail->id}}""><i class="fa fa-pencil-square-o"></i> Sửa</button>
                                    </td>
                                    <td>
                                        {!! Form::open(['method' => 'DELETE', 'route' => ['billdetail.destroy',$billdetail->id]]) !!}
                                        <button class="btn btn-danger deleteValue" type="submit" value="{{$billdetail->id}}"><i class="fa fa-trash-o" ></i> Xóa</button>
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
            $('#TenThietBi').val('');
            $('#MaLoaiPhong').val('');
            $('#SoLuong').val('');
            $('#password').parent('div').show();
            $('#id').parent('div').hide();
            $('.createValue').show();
            $('.updateValue').hide();
        });
        $('.createValue').click(function(e){
            e.preventDefault();
            var TenThietBi = $('#TenThietBi').val();
            var MaLoaiPhong = $('#MaLoaiPhong').val();
            var SoLuong = $('#SoLuong').val();
            if(TenThietBi != '' && MaLoaiPhong != '' && SoLuong != '') {
                $.ajax({
                    url : '/billdetail',
                    dataType : 'json',
                    type : 'POST',
                    data : {
                        _token: $('input[name=_token]').val(),
                        TenThietBi : TenThietBi,
                        MaLoaiPhong : MaLoaiPhong,
                        SoLuong : SoLuong
                    }
                }).done(function(response) {
                    $('#myModal').modal('hide');
                    $('tbody tr').append("<tr class='billdetail" + response.id + "' ><td>" + data.id + "</td><td>" + response.TenThietBi + "</td><td>" + response.MaLoaiPhong + "</td><td>" + response.SoLuong + "</td><td></td><td><button class='btn btn-warning editValue' data-toggle = 'modal' data-target='#myModal' value ='" + response.id + "'><i class='fa fa-pencil-square-o'></i> Sửa</button></td><td><button type='submit' class='btn btn-danger deleteValue' value='" + response.id + "'><i class='fa fa-trash-o'></i> Xóa</button></td></tr>");
                });
            }
        });

        /* Sửa value - P.Manh - 5/11/17*/

        $('.editValue').click(function() {
            var id = $(this).val();
            var TenThietBi = $(this).parent().prev("td").prev("td").prev("td").prev("td").text();
            var MaLoaiPhong = $(this).parent().prev("td").prev("td").prev("td").text();
            var SoLuong = $(this).parent().prev("td").prev("td").text();
            $('#id').val(id);
            $('#TenThietBi').val(TenThietBi);
            $('#MaLoaiPhong').val(MaLoaiPhong);
            $('#SoLuong').val(SoLuong);
            $('#id').parent('div').show();
            $('.createValue').hide();
            $('.updateValue').show();
        });
        $('.updateValue').click(function(e) {
            e.preventDefault();
            var id = $('#id').val();
            var MaLoaiPhong = $('#MaLoaiPhong').val();
            var TenThietBi = $('#TenThietBi').val();
            var SoLuong = $('#SoLuong').val();
            if(TenThietBi != '' && MaLoaiPhong != '' && SoLuong != '') {
                $.ajax({
                    dataType : 'json',
                    type : 'PUT',

                    // router
                    url : '/billdetail/'+id,
                    data : {
                        _token: $('input[name=_token]').val(),
                        id : id,
                        TenThietBi : TenThietBi,
                        MaLoaiPhong : MaLoaiPhong,
                        SoLuong : SoLuong
                        
                    }
                }).done(function(data) {
                   $('#myModal').modal('hide');
                   $(".billdetail"+id).replaceWith(
                    ("<tr class='billdetail" + data.id + "'><td>" + data.id + "</td><td>" + data.TenThietBi + "</td><td>" + data.MaLoaiPhong + "</td><td>" + data.SoLuong + "</td><td><button class='btn btn-warning editValue' data-toggle = 'modal' data-target='#myModal' value ='" + data.id + "'><i class='fa fa-pencil-square-o'></i> Sửa</button></td><td><button type='submit' class='btn btn-danger deleteValue' value='" +data.id+ "'><i class='fa fa-trash-o'></i> Xóa</button></td></tr>")
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
                url : '/billdetail/'+id,
                data : {
                    _token: $('input[name=_token]').val(),
                    id : id
                }
            }).done(function(data) {
                $("tr.billdetail"+id).remove();
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
<div class="modal fade" id="myModal" tabindex="-1" SoLuong="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Update</h4>
            </div>
            <div class="modal-body">
               {!! Form::open(['class' => 'form-horizontal', 'method' => 'POST', 'route' => ['billdetail.update',$billdetail->id]]) !!}
               <div>
                <label for="label">ID</label>
                <input type="text" name="id" class="form-control" id="id">
            </div>
            <div>
                <label for="label">Mã phòng</label>
                <input type="text" name="MaPhong" class="form-control" id="MaPhong">
            </div>
            <div>
                <label for="label">Mã sử dụng dịch vụ</label>
                <input type="text" name="MaSDDichVu" class="form-control" id="MaSDDichVu">
            </div>
            <div>
                <label for="label">Mã chính sách</label>
                <input type="text" name="MaChinhSach" class="form-control" id="MaChinhSach">
            </div>
            <div>
                <label for="label">Phụ thu</label>
                <input type="text" name="PhuThu" class="form-control" id="PhuThu">
            </div>
            <div>
                <label for="label">Tiền phòng</label>
                <input type="text" name="TienPhong" class="form-control" id="TienPhong">
            </div>
            <div>
                <label for="label">Tiền dịch vụ</label>
                <input type="text" name="TienDichVu" class="form-control" id="TienDichVu">
            </div>
            <div>
                <label for="label">Giảm giá khách hàng</label>
                <input type="text" name="GiamGiaKhachHang" class="form-control" id="GiamGiaKhachHang">
            </div>
            <div>
                <label for="label">Hình thức thanh toán</label>
                <input type="text" name="HinhThucThanhToan" class="form-control" id="HinhThucThanhToan">
            </div>
            <div>
                <label for="label">Số ngày</label>
                <input type="text" name="SoNgay" class="form-control" id="SoNgay">
            </div>
            <div>
                <label for="label">Thành tiền</label>
                <input type="text" name="ThanhTien" class="form-control" id="ThanhTien">
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