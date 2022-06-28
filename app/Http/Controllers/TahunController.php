<?php

namespace App\Http\Controllers;

use App\Models\Tahun;
use Illuminate\Http\Request;

class TahunController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = Tahun::all();
        return view('Tahun.index', compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Tahun();
        return view('Tahun.add', compact('model'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;

        $request->validate([
            'tahun' => 'required',
            'status' => 'required',
        ]);

        $model = new Tahun();
        $model->tahun = $request->tahun;
        $model->status = $request->status;

        $model->save();



        return redirect('tahun');
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tahun  $Tahun
     * @return \Illuminate\Http\Response
     */
    public function show($Tahun)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tahun  $Tahun
     * @return \Illuminate\Http\Response
     */
    public function edit($id_tahun)
    {
        $model =  Tahun::find($id_tahun);
        return view('Tahun.edit', compact('model'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tahun  $Tahun
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $id_tahun)
    {
        $model =  Tahun::find($id_tahun);
        $model->tahun = $request->tahun;
        $model->status = $request->status;

        $model->update();



        return redirect('Tahun');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tahun  $Tahun
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model =  Tahun::find($id);
        $model->delete();
        return redirect('tahun');
    }
}
