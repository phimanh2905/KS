<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    //
    protected $table = "chi_tiet_hoa_dons";
    protected $fillable = ['MaPhong','MaSuDungDichVu','MaChinhSach','PhuThu','TienPhong','TienDichVu','GiamGiaKH','HinhThucThanhToan','SoNgay','ThanhTien'];
    // protected $hidden = ['',''];
}
