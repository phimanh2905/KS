<?php

namespace App;

use App\Phong;
use Illuminate\Database\Eloquent\Model;

class StatusRoomType extends Model
{
    //
    protected $table = "loai_tinh_trangs";
    protected $fillable = ['TenLoaiTinhTrang'];
    // protected $hidden = ['',''];

    public function phongs() {
        return $this->hasMany(Phong::class, 'MaLoaiTinhTrangPhong');
    }
}
