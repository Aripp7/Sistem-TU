@extends('layout.main',['title' => 'Edit Siswa '] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Edit Siswa</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
                <li class="breadcrumb-item "><a href="">Data Siswa</a></li>
                <li class="breadcrumb-item active">Edit Siswa</li>
            </ol>
        </div>
    </div>
</div>
<!-- Main content -->
<section class="content" style="margin-left: 20px;">
    <div class="card">


        <div class="col-md-9" style="display: flex; margin-top:10px">
            <form class="col-md-6" action="">
                <!-- {{csrf_field()}} -->
                <input type="hidden" name="_method" values='PATCH'>
                <div class="form-group" style="width: 50%">
                    <label for="nama">Nama Siswa</label>
                    <input class="form-control" id="nama" aria-describedby="nama" required value="{{$model->nama}}">
                </div>
                <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <select class="form-control select2" style="width: 50%;" value="{{$model->tempat_lahir}}">
                        <option selected="{{$model->tempat_lahir}}">Pilih Jenis Kelamin</option>
                        <option>Laki-laki</option>
                        <option>Perempuan</option>
                    </select>
                </div>
                <div class="form-group" style="width: 50%">
                    <label>NISN</label>
                    <input class="form-control" id="nisn" required value="{{$model->nisn}}">
                </div>
                <div class="form-group" style="width: 50%">
                    <label>Tempat Lahir</label>
                    <input class="form-control" id="tempat_lahir" required value="{{$model->tempat_lahir}}">
                </div>
                <div class="form-group" style="width: 50%">
                    <label>Agama</label>
                    <input class="form-control" id="agama" required value="{{$model->agama}}">
                </div>
                <button type="submit" class="btn btn-primary">Tambahkan</button>
            </form>

            <form class="col-md-6">
                <div class="form-group" style="width: 50%">
                    <label for="nama">Alamat</label>
                    <textarea class="form-control" id="alamat" aria-describedby="alamat" required value="{{$model->alamat}}"></textarea>
                </div>

                <div class="form-group" style="width: 50%">
                    <label for="nama">Tanggal Lahir</label>
                    <input class="form-control" id="tgl_lahir" aria-describedby="" required value="{{$model->tgl_lahir}}">
                    <small>Format : yy-mm-dd</small>
                </div>

                <div class="form-group" style="width: 50%">
                    <label>Nama Ayah</label>
                    <input class="form-control" id="nama_ayah" required value="{{$model->nama_ayah}}">
                </div>
                <div class="form-group" style="width: 50%">
                    <label>Nama Ibu</label>
                    <input class="form-control" id="nama_ibu" required value="{{$model->nama_ibu}}">
                </div>
                <div class="form-group" style="width: 50%">
                    <label>Kelas</label>

                    <input class="form-control" id="kelas" required value="{{$model->kelas}}">
                    <small>Contoh : XII IPA 4</small>

                </div>

            </form>
        </div>
    </div>
</section>

@endsection