<?php

namespace App;

use App\ChiTietHoaDon;
use Illuminate\Database\Eloquent\Model;

class CheckOutPolicy extends Model
{
    //
    protected $table = "chinh_sach_tra_phongs";
    protected $fillable = ['ThoiGianQuiDinh','PhuThu'];
    // protected $hidden = ['',''];
    public function chiTietHoaDons () {
        return $this->hasMany(ChiTietHoaDon::class, 'MaChinhSach');
    }
}
