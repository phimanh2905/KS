<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CheckIn extends Model
{
    //
    protected $table = "phieu_nhan_phongs";
    protected $fillable = ['MaPhieuThue','MaKhachHang'];
    // protected $hidden = ['',''];
}
