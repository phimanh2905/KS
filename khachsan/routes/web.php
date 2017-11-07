<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home','HomeController@index')->name('home');
Route::resource('/admin','AdminController');
Route::get('/search','AdminController@search');

// chính sách trả phòng
// P.Manh - 4/11/17
Route::resource('checkoutpolicy','CheckoutpolicyController');
// Route::get('/search','CheckoutpolicyController@search');

// khách hàng
// P.Manh - 4/11/17
Route::resource('customer','CustomerController');
// Route::get('/customer/search','CustomerController@search');

// thiết bị
// P.Manh - 6/11/17
Route::resource('device','DeviceController');

// chi tiêt hóa đơn
// P.Manh - 6/11/17
Route::resource('billdetail','BilldetailController');

// chi tiết phiếu nhận phòng
// P.Manh - 6/11/17
Route::resource('checkindetail','CheckindetailController');

// chi tiết phiếu thuê phòng
// P.Manh - 6/11/17
Route::resource('roomreservationdetail','RoomreservationdetailController');

// danh sách sử dụng dịch vụ
// P.Manh - 6/11/17
Route::resource('serviceusagelist','ServiceusagelistController');

// dịch vụ
// P.Manh - 6/11/17
Route::resource('service','ServiceController');

// đơn vị
// P.Manh - 6/11/17
Route::resource('unit','UnitController');

// hóa đơn
// P.Manh - 6/11/17
Route::resource('bill','BillController');

// loại dịch vụ
// P.Manh - 6/11/17
Route::resource('typeofservice','TypeofserviceController');

// loại phòng
// P.Manh - 6/11/17
Route::resource('roomtype','RoomtypeController');

// loại tình trạng phòng
// P.Manh - 6/11/17
Route::resource('statusroomtype','StatusroomtypeController');

// phiếu nhận phòng
// P.Manh - 6/11/17
Route::resource('checkin','CheckinController');

// phòng
// P.Manh - 6/11/17
Route::resource('room','RoomController');

// quy định
// P.Manh - 6/11/17
Route::resource('regulations','RegulationsController');


