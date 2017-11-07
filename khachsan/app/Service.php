<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    //
    protected $table = "dich_vus";
    protected $fillable = ['MaLoaiDichVu','MaDonVi','DonGia'];
    // protected $hidden = ['',''];
}
