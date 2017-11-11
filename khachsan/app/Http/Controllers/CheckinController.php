<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Checkin;

class CheckinController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $checkins = Checkin::all();
        return view('admin.checkin.checkin',compact('checkins'));
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
        $checkin = new Checkin();
        $checkin->MaPhieuThue = $request->MaPhieuThue;
        $checkin->MaKhachHang = $request->MaKhachHang;
        
        // $checkin->TrangThai = $request->TrangThai;
        $checkin->save();
        return response()->json($checkin);
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
        $checkin = Checkin::findOrFail($id);
        $checkin->MaPhieuThue = $request->MaPhieuThue;
        $checkin->MaKhachHang = $request->MaKhachHang;
        
        // $checkin->TrangThai = $request->TrangThai;
        $checkin->save();
        return response()->json($checkin);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $checkin = Checkin::find($request->id)->delete();
       return response()->json();
    }

    // tim kiem theo nhan vien lap va ma khach hang
    public function search(Request $req) {
        $result = '';
        $checkin = Checkin::where('MaPhieuThue','like','%'.$req->key.'%')
        ->orWhere('MaKhachHang','like','%'.$req->key.'%')->get();
        $html = view('admin.checkin.search',compact('checkin'))->render();
        return response($html); 
    }
}
