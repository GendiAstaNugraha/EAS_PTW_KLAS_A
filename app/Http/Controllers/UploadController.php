<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\models\Gambar;

class UploadController extends Controller
{
	public function upload(){
		$barang = Gambar::get();
		return view('upload',['barang' => $barang]);
	}

	public function proses_upload(Request $request){
		$this->validate($request, [
		    
			'file' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
			'keterangan' => 'required',
		]);

		// menyimpan data file yang diupload ke variabel $file
		
		$file = $request->file('file');

		$nama_file = time()."_".$file->getClientOriginalName();

      	        // isi dengan nama folder tempat kemana file diupload
		$tujuan_upload = 'data_file';
		$file->move($tujuan_upload,$nama_file);

		Gambar::create([
		    'kode_barang' => $request->kodebarang,
		    'nama_barang' => $request->namabarang,
			'harga' => $request->hargabarang,
			
			'file' => $nama_file,
			'keterangan' => $request->keterangan,
			'stok' => $request->stok,
		]);

		return redirect()->back();
	}
}