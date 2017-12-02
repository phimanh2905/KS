<?php

namespace App;

use App\HoaDon;
use App\PhieuThuePhong;
use App\PhieuNhanPhong;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
   protected $table = "khach_hangs";
   
   protected $fillable = ['TenKhachHang','CMND','GioiTinh','DiaChi','DienThoai','QuocTich'];

   public function hoaDons() {
        return $this->hasMany(HoaDon::class, 'MaKhachHang');
    }
    public function phieuThuePhongs() {
        return $this->hasMany(PhieuThuePhong::class, 'MaKhachHang');
    }
    public function phieuNhanPhongs() {
        return $this->hasMany(PhieuNhanPhong::class, 'MaKhachHang');
    }
}
