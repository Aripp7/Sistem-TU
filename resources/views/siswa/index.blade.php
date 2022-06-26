@extends('layout.main',['title' => 'Data Siswa'] )

@section('content-header')

<div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1>Data Siswa</h1>
        </div>
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
                <li class="breadcrumb-item active">Data Siswa</li>
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
                        <ol class="breadcrumb float-sm-left" style="margin-left: 20px; margin-top: 10px;">
                            <a href="addSiswa" class="btn btn-primary">
                                <i class="fa fa-plus"></i>
                                Tambah Data Siswa
                            </a>
                        </ol>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr style="background-color: #0069d9; color: white; size: 8px">
                                        <!-- <th>No </th> -->
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

                                <?php $no = 0; ?>
                                <tbody>

                                    @foreach($datas as $key=>$values)
                                    <?php $no++; ?>
                                    <tr>
                                        <td>{{ $values->nisn }}</td>
                                        <td>{{ $values->nama }}</td>
                                        <td>{{ $values->tempat_lahir }}</td>
                                        <td>{{ $values->tgl_lahir }}</td>
                                        <td>{{ $values->agama }}</td>
                                        <td>{{ $values->alamat}}</td>
                                        <td>{{ $values->nama_ayah }}</td>
                                        <td>{{ $values->nama_ibu }}</td>
                                        <td>
                                            <form action="{{ route('siswa.destroy', $values->id) }}" method="post">
                                                @csrf
                                                @method('DELETE')
                                                <!-- <a href="{{ route('siswa.show', $values->id) }}" class="btn btn-success btn-xs shadow"> <span class="fas fa-edit"></span></a> -->
                                                <a href="{{ route('siswa.edit', $values->id) }}" class="btn btn-success btn-xs shadow"> <span class="fas fa-edit"></span></a>

                                                <button type="submit" class="btn btn-sm btn-danger btn-xs shadow" onclick="return confirm('Yakin Ingin Menghapus {{ $values->nama }} ? ');" action="{{url('siswa',$values->id)}}"> <span class="fas fa-trash"></span>

                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- Modal -->
    <!-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Hapus?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Yakin Mengahapus?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">tidak</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div> -->


    <!-- <div class="modal fade" id="deleteCategory" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="deleteCategory" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <form>
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Perhatian!</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Apakan anda yakin ingin menghapus {{ $values->nama }} ?
                        <input type="hidden" name="_method" value="delete">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn bg-white" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger">hapus</button>
                    </div>
                </div>
            </form>
        </div>
    </div> -->
</body>
@endsection