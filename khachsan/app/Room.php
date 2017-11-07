<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    //
    protected $table = "phongs";
    protected $fillable = ['MaLoaiPhong','MaLoaiTinhTrangPhong','GhiChu'];
    // protected $hidden = ['',''];
}
