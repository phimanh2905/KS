<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    //
    protected $table = "customers";
    protected $fillable = ['TenKhachHang','CMND','GioiTinh','DiaChi','DienThoai','QuocTich'];
    // protected $hidden = ['',''];
}
