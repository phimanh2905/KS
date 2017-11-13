<?php

namespace App;

use App\ChiTietPhieuThuePhong;
use App\BillDetail;
use App\LoaiTinhTrang;
use App\LoaiPhong;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    //
    protected $table = "phongs";

    protected $fillable = ['MaLoaiPhong','MaLoaiTinhTrangPhong','GhiChu'];
    // protected $hidden = ['',''];
    
    public function chiTietPhieuThuePhongs() {
        return $this->hasMany(ChiTietPhieuThuePhong::class, 'MaPhong');
    }
    public function chiTietHoaDons() {
        return $this->hasMany(BillDetail::class, 'MaPhong');
    }
    public function loaiTinhTrang() {
        return $this->belongsTo(LoaiTinhTrang::class, 'MaLoaiTinhTrangPhong');
    }
    public function loaiPhong() {
        return $this->belongsTo(LoaiPhong::class, 'MaLoaiPhong');
    }
}
