@extends('layout.main',['title' => 'Data Siswa'] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Data Siswa</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <a href="addSiswa">
                    <button type="button" class="btn btn-primary">Tambah Data Siswa</button>

                </a>
            </ol>
        </div>
    </div>
</div><!-- /.container-fluid -->


<body class="hold-transition sidebar-mini">
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">

                    <div class="card">



                        <td>


                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>NISN </th>
                                            <th>Nama</th>
                                            <th>Tempat Lahir</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Agama</th>
                                            <th>Alamat</th>
                                            <th>Nama Ayah</th>
                                            <th>Nama Ibu</th>

                                            <th>Aksi</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach($datas as $key=>$values)
                                        <tr>

                                            <td>{{ $values->nisn }}</td>
                                            <td>{{ $values->nama }}</td>
                                            <td>{{ $values->tempat_lahir }}</td>
                                            <td>{{ $values->tgl_lahir }}</td>
                                            <td>{{ $values->agama }}</td>
                                            <td>{{ $values->alamat}}</td>
                                            <td>{{ $values->nama_ayah }}</td>
                                            <td>{{ $values->nama_ibu }}</td>


                                            <td><a href="{{url('siswa',$values->id.'/edit')}}" class="btn btn-info" style="margin-bottom: 5px;">Update</a>


                                                <form id="delete-confirm" action="{{url('siswa',$values->id)}}" method="POST">

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