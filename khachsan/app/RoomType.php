<?php

namespace App;

use App\Phong;
use App\ThietBi;
use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    //
    protected $table = "loai_phongs";
    protected $fillable = ['TenLoaiPhong','DonGia','SoNguoiChuan','SoNguoiToiDa','TyLeTang'];
    // protected $hidden = ['',''];
    public function phongs() {
        return $this->hasMany(Phong::class, 'MaLoaiPhong');
    }
    public function thietBis() {
        return $this->hasMany(ThietBi::class, 'MaLoaiPhong');
    }
}
