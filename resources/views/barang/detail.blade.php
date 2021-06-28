@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
            @foreach($barang as $p)
            <div class="col-md-4">
                <div class="card">
                  <a href=""><img src="{{ url('/data_file/'.$p->file) }}" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">{{ $p->nama_barang }}</h5>
                    <p class="card-text">
                        <strong>Harga :
                        </strong> Rp. {{ number_format ($p->harga)}} <br>
                        <Strong>Stok :
                        </strong>{{ $p->stok }} <br>
                        <hr>
                    </p>
                    <a href="" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Pesan</a>
                  </div></a>
                </div>
                </div>
            @endforeach
    </div>
</div>
@endsection