<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusRoomType extends Model
{
    //
    protected $table = " loai_tinh_trang_phongs";
    protected $fillable = ['TenLoaiTinhTrang'];
    // protected $hidden = ['',''];
}
