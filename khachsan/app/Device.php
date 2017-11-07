<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    //
    protected $table = "thiet_bis";
    protected $fillable = ['TenThietBi','MaLoaiPhong','SoLuong'];
    // protected $hidden = ['',''];
}
