@extends('layout.main',['title' => 'Data Guru '] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Guru</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <a href="add">
                    <button type="button" class="btn btn-primary">Tambah Data Guru</button>

                </a>
            </ol>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

<body class="hold-transition sidebar-mini">
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Data Guru</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Nip</th>
                                        <th>Nama Guru</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Tempat lahir</th>
                                        <th>Tanggal lahir</th>
                                        <th>Alamat</th>
                                        <th>Kecamatan</th>
                                        <th>Pangkat</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach($datas as $key=>$values)
                                    <tr>
                                        <td>{{ $values->nip }}</td>
                                        <td>{{ $values->nama }}</td>
                                        <td>{{ $values->jenis_kelamin }}</td>
                                        <td>{{ $values->tempat_lahir }}</td>
                                        <td>{{ $values->tanggal_lahir }}</td>
                                        <td>{{ $values->alamat_jalan }}</td>
                                        <td>{{ $values->kecamatan }}</td>
                                        <td>{{ $values->pangkat_golongan }}</td>

                                        <td><a href="{{url('tendik',$values->id.'/edit')}}" class="btn btn-info" style="margin-bottom: 5px;">Update</a>


                                            <form action="{{url('tendik',$values->id)}}" method="POST">
                                                @csrf
                                                <input type="hidden" name="_method" value="delete">
                                                <button type="submit" class="btn btn-danger">Hapus</button>

                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>




                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->




</body>




@endsection
@section('content')