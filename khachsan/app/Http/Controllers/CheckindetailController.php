<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Checkindetail;

class CheckindetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $checkindetails = Checkindetail::all();
        return view('admin.checkindetail.checkindetail',compact('checkindetails'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $checkindetail = new Checkindetail();
        $checkindetail->MaPhong = $request->MaPhong;
        $checkindetail->HoTenKhachHang = $request->HoTenKhachHang;
        $checkindetail->CMND = $request->CMND;
        $checkindetail->NgayNhan = $request->NgayNhan;
        $checkindetail->NgayTraDuKien = $request->NgayTraDuKien;
        $checkindetail->NgayTraThucTe = $request->NgayTraThucTe;
        
        // $checkindetail->TrangThai = $request->TrangThai;
        $checkindetail->save();
        return response()->json($checkindetail);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $checkindetail = Checkindetail::findOrFail($id);
        $checkindetail->MaPhong = $request->MaPhong;
        $checkindetail->HoTenKhachHang = $request->HoTenKhachHang;
        $checkindetail->CMND = $request->CMND;
        $checkindetail->NgayNhan = $request->NgayNhan;
        $checkindetail->NgayTraDuKien = $request->NgayTraDuKien;
        $checkindetail->NgayTraThucTe = $request->NgayTraThucTe;
        
        // $checkindetail->TrangThai = $request->TrangThai;
        $checkindetail->save();
        return response()->json($checkindetail);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $checkindetails = Checkindetail::find($request->id)->delete();
        return response()->json();
    }

    // tim kiem theo nhan vien lap va ma khach hang
    public function search(Request $req) {
        $result = '';
        $checkindetails = Checkindetail::where('MaPhong','like','%'.$req->key.'%')
        ->orWhere('HoTenKhachHang','like','%'.$req->key.'%')->get();
        $html = view('admin.checkindetail.search',compact('checkindetails'))->render();
        return response($html); 
    }
}
