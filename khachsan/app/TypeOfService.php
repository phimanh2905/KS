<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeOfService extends Model
{
    //
    protected $table = "loai_dich_vus";
    protected $fillable = ['TenLoaiDichVu'];
    // protected $hidden = ['',''];
}
