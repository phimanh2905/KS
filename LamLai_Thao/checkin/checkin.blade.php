<div id="page-wrapper">
@if (count($checkins) > 0)
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Danh sách phiếu nhận phòng
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
                                    <th>Mã phiếu thu</th>
                                    <th>Mã khách hàng</th>
                                    <th>Trạng thái</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($checkins as $checkin)
                                <tr class="checkin{{$checkin->id}}" style="text-align:center;">
                                    <td>{{$checkin->id}}</td>
                                    <td>{{$checkin->PhieuThu_id}}</td>
                                    <td>{{$checkin->KhachHang_id}}</td>
                                    <td>
                                        <button class="btn btn-success btn-circle" type="button">
                                            <i class="fa fa-check"></i>
                                        </button>
                                        <button class="btn btn-danger btn-circle" type="button">
                                            <i class="fa fa-times"></i>
                                        </button>
                                    </td>
                                    <td>
                                        <button class="btn btn-warning editValue" data-toggle="" data-target="" value=""><i class="fa fa-pencil-square-o"></i> Sửa</button>
                                    </td>
                                    <td>
                                        <button class="btn btn-danger deleteValue" type="" value=""><i class="fa fa-trash-o" ></i> Xóa</button>
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