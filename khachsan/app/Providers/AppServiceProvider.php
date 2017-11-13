<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Schema;
use View;
use App\RoomType;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        view()->composer('admin.room.room', function($view) {
            $loaiPhong = RoomType::all();
            $view->with('loaiPhong', $loaiPhong);
        });
        view()->composer('admin.room.room', function($view) {
            $tinhTrangPhong = StatusRoomType::all();
            $view->with('tinhTrangPhong', $tinhTrangPhong);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
