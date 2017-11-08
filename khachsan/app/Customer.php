<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
   protected $table = "khach_hangs";
   protected $fillable = ['TenKhachHang','CMND','GioiTinh','DiaChi','DienThoai','QuocTich'];
}
