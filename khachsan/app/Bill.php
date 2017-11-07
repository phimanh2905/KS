<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    //
    protected $table = "hoa_dons";
    protected $fillable = ['NhanVienLap','MaKhachHang','MaNhanPhong','TongTien','NgayLap'];
    // protected $hidden = ['',''];
}
