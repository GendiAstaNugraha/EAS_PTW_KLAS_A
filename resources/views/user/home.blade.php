@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
                <div class="card-header">Dashboard {{ $user->name }}</div>
					<tbody>
						@foreach($barang as $p)
						<tr><br>
							<td><img width="300px" src="{{ url('/data_file/'.$p->file) }}"></td><br>
                            <p class="font-weight-bold"><td>{{$p->nama_barang}}</td></p>
                            <td>Rp {{$p->harga}}</td><br>
						</tr>
						@endforeach
					</tbody>
                </div>
        </div>
    </div>
</div>
@endsection