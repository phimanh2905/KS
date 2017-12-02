<?php

namespace App;

use App\DanhSachSuDungDichVu;
use App\DichVu;
use App\DonVi;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    //
    protected $table = "dich_vus";
    protected $fillable = ['MaLoaiDichVu','MaDonVi','DonGia'];
    // protected $hidden = ['',''];

    public function danhSachSuDungDichVus() {
        return $this->hasMany(DanhSachSuDungDichVu::class, 'MaDichVu');
    }
    public function loaiDichVu() {
        return $this->belongsTo(DichVu::class, 'MaLoaiDichVu');
    }
    public function donVi() {
        return $this->belongsTo(DonVi::class, 'MaDonVi');
    }
}
