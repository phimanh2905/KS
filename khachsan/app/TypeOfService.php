<?php

namespace App;

use App\LoaiDichVu;
use Illuminate\Database\Eloquent\Model;

class TypeOfService extends Model
{
    //
    protected $table = "loai_dich_vus";
    
    protected $fillable = ['TenLoaiDichVu'];
    // protected $hidden = ['',''];

    public function dichVus() {
        return $this->hasMany(LoaiDichVu::class, 'MaLoaiDichVu');
    }
}
