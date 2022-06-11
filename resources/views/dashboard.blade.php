@extends('layout.main',['title' => 'Selamat Datang '] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Dashboard</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </div>
    </div>
</div><!-- /.container-fluid -->

@endsection

@section('content')

<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Selamat Datang</h3>

        <div class="card-tools">

        </div>
    </div>
    <div class="card-body">
        <div class="form-group" style="width: 50%">
            <label for="cari">Pencarian Data dengan Algorima Boyer-Moore</label>
            <input class="form-control" id="cari" aria-describedby="cari" required placeholder="Masukkan Kata/Kalimat"></input>

        </div>
        <button type="submit" class="btn btn-primary">Mulai Pencarian</button>
        <div style="margin-top: 10px;">
            <label for="">Kecepatan Pencarian : -</label>

        </div>


    </div>
    <!-- /.card-body -->
    <div class="card-footer">

    </div>
    <!-- /.card-footer-->
</div>
<!-- /.card -->
@endsection

@push('css')
<style>
    .btn-aq {
        background-color: aqua;
        color: black;
    }
</style>

@endpush

@push('js')
<script>
    $(function() {
        $('.btn-aq').click(function() {
            alert('OII Ba*i')
        });
    })
</script>

@endpush