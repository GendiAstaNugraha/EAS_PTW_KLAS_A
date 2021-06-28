@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
				<table class="table">
					<thead class="table-dark">
						<tr>
                            <th width="1%">Gambar</th>
							<th>Nama Barang</th>
                            <th>jumlah</th>
							<th>Harga</th>
                            <th></th>
						</tr>
					</thead>
					<tbody>
						@foreach($barang as $p)
						<tr>                            <td><img width="100px" src="{{ url('/data_file/'.$p->file) }}"></td>
							<td>{{$p->nama_barang}}</td>
                            <td>{{$p->stok}}</td>
							<td>{{$p->harga}}</td>
                            <td>
                                    <form action="" method="post">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Anda yakin akan menghapus data ?');"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
						</tr>
						@endforeach
                        <th><th></th></th><th >Total</th>
					</tbody>
				</table>
                <a href="" class="btn btn-success" onclick="return confirm('Anda yakin akan Check Out ?');">
                                        <i class="fa fa-shopping-cart"></i> Check Out
                                    </a>

            </div>
        </div>
@endsection