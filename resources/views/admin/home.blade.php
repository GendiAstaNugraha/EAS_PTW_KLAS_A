@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard {{ $user->name }}</div>
 
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
 
                    <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <a href="{{ url('barang') }}"><button type="submit" class="btn btn-primary">
                                    {{ __('Tambah Barang') }}
                                </button></a>
                            </div>
                    </div>

                </div>
            </div><br><br>
        </div>

				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Kode Barang</th>
							<th>Nama Barang</th>
							<th>Harga</th>
							<th width="1%">Gambar</th>
							<th>Keterangan</th>
                            <th>Stok Barang</th>
							<th width="1%">OPSI</th>
						</tr>
					</thead>
					<tbody>
						@foreach($barang as $p)
						<tr>
						    <td>{{$p->kode_barang}}</td>
							<td>{{$p->nama_barang}}</td>
							<td>{{$p->harga}}</td>
							<td><img width="100px" src="{{ url('/data_file/'.$p->file) }}"></td>
							<td>{{$p->keterangan}}</td>
                            <td>{{$p->stok}}</td>
							<td>
				                <a href="#">Edit</a><br>
                                  ------
				                <a href="#">Hapus</a>
                            </td>
						</tr>
						@endforeach
					</tbody>
				</table>

            </div>
        </div>
@endsection