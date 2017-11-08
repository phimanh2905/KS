<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceUsageList extends Model
{
    //
    protected $table = "danh_sach_su_dung_dich_vus";
    protected $fillable = ['MaDichVu','MaNhanPhong','SoLuong'];
    // protected $hidden = ['',''];
}
