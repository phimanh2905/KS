<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    //
    protected $table = "loai_phongs";
    protected $fillable = ['TenLoaiPhong','DonGia','SoNguoiChuan','SoNguoiToiDa','TyLeTang'];
    // protected $hidden = ['',''];
}
