@extends('layout.main',['title' => 'Tambah Tahun Ajaran '] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Tambah Tahun Ajaran</h1>
        </div>
    </div>
</div>
<!-- Main content -->
<section class="content" style="margin-left: 20px;">
    <div class="col-md-9">
        <form class="col-md-9">
            <div class="form-group" style="width: 50%">
                <label for="nama">Tahun Ajaran</label>
                <input class="form-control" id="tahun" aria-describedby="tahun" required placeholder="Tahun">
                <small style="margin-left: 10px;">cth Format : 2011/2012</small>
            </div>
            <div class="form-group">
                <label>Status</label>
                <select class="form-control select2" style="width: 50%;">
                    <option selected="selected">Pilih</option>
                    <option>Aktif</option>
                    <option>Tidak Aktif</option>
                </select>
            </div>


            <button type="submit" class="btn btn-primary">Tambahkan</button>
        </form>


    </div>

</section>

@endsection