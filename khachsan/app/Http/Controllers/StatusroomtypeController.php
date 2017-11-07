<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Statusroomtype;

class StatusroomtypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $statusroomtypes = Statusroomtype::all();
        return view('admin.statusroomtype.statusroomtype',compact('statusroomtypes'));
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
        $statusroomtype = new Statusroomtype();
        $statusroomtype->TenLoaiTinhTrang = $request->TenLoaiTinhTrang;
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
        $statusroomtype = Statusroomtype::findOrFail($id);
        $statusroomtype->TenLoaiTinhTrang = $request->TenLoaiTinhTrang;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $statusroomtypes = Statusroomtype::find($request->id)->delete();
        return response()->json();
    }

    // tim kiem theo nhan vien lap va ma khach hang
    public function search(Request $req) {
        $result = '';
        $statusroomtypes = Statusroomtype::where('TenLoaiTinhTrang','like','%'.$req->key.'%')
        ->get();
        $html = view('admin.statusroomtype.search',compact('statusroomtypes'))->render();
        return response($html); 
    }
}
