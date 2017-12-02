<?php

namespace App;

use App\PhieuNhanPhong;
use App\KhachHang;
use App\ChiTietHoaDon;
use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    //
    protected $table = "hoa_dons";
    protected $fillable = ['NhanVienLap','MaKhachHang','MaNhanPhong','TongTien','NgayLap'];
    // protected $hidden = ['',''];

    public function phieuNhanPhong() {
        return $this->belongsTo(PhieuNhanPhong::class, 'MaNhanPhong');
    }
    public function khachHang() {
        return $this->belongsTo(KhachHang::class, 'MaKhachHang');
    }
    public function chiTietHoaDons() {
        return $this->hasMany(ChiTietHoaDon::class, 'MaHoaDon');
    }
}
