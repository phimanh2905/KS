<?php

namespace App;


use App\PhieuNhanPhong;
use App\ChiTietHoaDon;
use App\DichVu;
use Illuminate\Database\Eloquent\Model;

class ServiceUsageList extends Model
{
    //
    protected $table = "danh_sach_su_dung_dich_vus";
    protected $fillable = ['MaDichVu','MaNhanPhong','SoLuong'];
    // protected $hidden = ['',''];

    public function phieuNhanPhong() {
        return $this->belongsTo(PhieuNhanPhong::class, 'MaNhanPhong');
    }
    public function chiTietHoaDons() {
        return $this->hasMany(ChiTietHoaDon::class, 'MaSuDungDichVu');
    }
    public function dichVu() {
        return $this->belongsTo(DichVu::class, 'MaDichVu');
    }
}
