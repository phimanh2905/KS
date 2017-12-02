<?php

namespace App;

use App\PhieuThuePhong;
use App\DanhSachSuDungDichVu;
use App\KhachHang;
use App\HoaDon;
use Illuminate\Database\Eloquent\Model;

class CheckIn extends Model
{
    //
    protected $table = "phieu_nhan_phongs";
    protected $fillable = ['MaPhieuThue','MaKhachHang'];
    // protected $hidden = ['',''];
    public function phieuThuePhong() {
        return $this->belongsTo(PhieuThuePhong::class, 'MaPhieuThue');
    }
    public function danhSachSuDungDichVus() {
        return $this->hasMany(DanhSachSuDungDichVu::class, 'MaNhanPhong');
    }
    public function khachHang() {
        return $this->belongsTo(KhachHang::class, 'MaKhachHang');
    }
    public function hoaDon() {
        return $this->hasMany(HoaDon::class, 'MaNhanPhong');
    }
}
