@extends('layout.main',['title' => 'Data Tenaga Pendidik '] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Tenaga Pendidik</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Tendik</li>
            </ol>
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
                                <ol class="breadcrumb float-sm-left">
                                    <a href="addTendik" class="btn btn-primary">
                                        <i class="fa fa-plus"></i>
                                        Tambah Data
                                    </a>
                                </ol>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Nip </th>
                                            <th>Nama</th>
                                            <th>Tempat Lahir</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Agama</th>
                                            <th>Kecamatan</th>
                                            <th>Alamat</th>
                                            <th>Pangkat</th>
                                            <th>Aksi</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach($datas as $key=>$values)
                                        <tr>

                                            <td>{{ $values->nip }}</td>
                                            <td>{{ $values->nama }}</td>
                                            <td>{{ $values->tempat_lahir }}</td>
                                            <td>{{ $values->tanggal_lahir }}</td>
                                            <td>{{ $values->agama }}</td>
                                            <td>{{ $values->kecamatan }}</td>
                                            <td>{{ $values->alamat_jalan }}</td>
                                            <td>{{ $values->pangkat_golongan }}</td>

                                            <td class="text-center">
                                                <a href="{{url('tendik',$values->id.'/edit')}}">
                                                    <button class="btn btn-success btn-xs shadow">
                                                        <span class="fas fa-edit"></span>
                                                    </button>
                                                </a>
                                                <form onsubmit="return confirm('Yakin Ingin Menghapus {{ $values->nama }} ? ');" action="{{url('tendik',$values->id)}}" method="POST">

                                                    @csrf
                                                    <input type="hidden" name="_method" value="delete">

                                                    <button type="submit" class="btn btn-sm btn-danger btn-xs shadow"> <span class="fas fa-trash"></span></button>
                                                </form>
                                            </td>

                                        </tr>
                                        @endforeach

                                    </tbody>

                                    <tfoot>
                                        <tr>

                                        </tr>
                                    </tfoot>
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