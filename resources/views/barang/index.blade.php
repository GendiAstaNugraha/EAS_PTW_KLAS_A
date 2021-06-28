@extends('layouts.app')
@section('content')
	<div class="row">
		<div class="container">

		<div class="row">
        <div class="col-md-12">
            <a href="{{ url('admin') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
    </div>	
			<div class="col-lg-8 mx-auto my-5">
			<div class="card-header">Tambah Barang</div>
			<div class="card">
				<div class="card-body">	

				@if(count($errors) > 0)
				<div class="alert alert-danger">
					@foreach ($errors->all() as $error)
					{{ $error }} <br/>
					@endforeach
				</div>
				@endif

				<form action="/upload/proses" method="POST" enctype="multipart/form-data">
					{{ csrf_field() }}
	                <div class="form-group">
						<b>Kode Barang</b>
						<input type="text" class="form-control" name="kodebarang">
					</div>
                    <div class="form-group">
						<b>Nama Barang</b>
						<input type="text" class="form-control" name="namabarang">
					</div>
                      <div class="form-group">
						<b>Harga Barang</b>
						<input type="number" class="form-control" name="hargabarang">
					</div>

					<div class="form-group">
						<b>Keterangan</b>
						<textarea class="form-control" name="keterangan"></textarea>
					</div>

					<div class="form-group">
						<b>Stok Barang</b>
						<input type="number" class="form-control" name="stok">
					</div>

					<div class="form-group">
						<b>File Gambar</b><br/>
						<input type="file" name="file">
					</div>

					<input type="submit" value="Upload" class="btn btn-primary">
				</form>
				</div>
				</div>
			</div>
		</div>
	</div>
@endsection