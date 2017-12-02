<?php

namespace App;

use App\HoaDon;
use App\DanhSachSuDungDichVu;
use App\ChinhSachTraPhong;
use App\Phong;
use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    //
    protected $table = "chi_tiet_hoa_dons";
    protected $fillable = ['MaPhong','MaSuDungDichVu','MaChinhSach','PhuThu','TienPhong','TienDichVu','GiamGiaKH','HinhThucThanhToan','SoNgay','ThanhTien'];
    // protected $hidden = ['',''];
    public function hoaDon() {
        return $this->belongsTo(HoaDon::class, 'MaHoaDon');
    }
    public function danhSachSuDungDichVu () {
        return $this->belongsTo(DanhSachSuDungDichVu::class, 'MaSuDungDichVu');
    }
    public function chinhSachTraPhong() {
        return $this->belongsTo(ChinhSachTraPhong::class, 'MaChinhSach');
    }
    public function phong() {
        return $this->belongsTo(Phong::class, 'MaPhong');
    }
}
