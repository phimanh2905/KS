<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoomReservationDetail extends Model
{
    //
    protected $table = "chi_tiet_phieu_thue_phongs";
    protected $fillable = ['MaPhong','MaKhachHang','NgayDangKy','NgayNhan'];
    // protected $hidden = ['',''];
}
