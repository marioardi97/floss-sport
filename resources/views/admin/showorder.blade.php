@extends('layouts.admin')

@section('content')

<div class="col-12 col-md-12 col-sm-12 col-lg-10">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-12 d-flex justify-content-between align-items-center">
                    <h5>ORDER DETAILS</h5>
                    <button onclick="window.print()" class="btn btn-primary">
                        Cetak Laporan Pemesanan
                    </button>
                </div>
            </div>
        </div>
        <div class="card-body">
            @foreach ($ids as $id)
            <div class="row">
                <div class="col-12 col-lg-6 col-md-6 col-sm-12 pt-2">
                    <h5>Order Information</h5>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            Order ID:<br>
                            ID Pembayaran:<br>
                            ID Pelanggan:<br>
                            Nama Pelanggan:<br>
                            No Pelanggan:<br>
                            Status:
                        </div>
                        <div class="col-7">
                            : {{ $id->id }} <br>
                            : {{ $id->payment_id }} <br>
                            : {{ $id->user_id }} <br>
                            : {{ $id->name }} <br>
                            : {{ $id->phonenumber }} <br>
                            : LUNAS
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-6 col-md-6 col-sm-12 pt-2">
                    <h5>ALAMAT PENGIRIMAN</h5>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            Negara:<br>
                            Kota:<br>
                            Kode Pos:<br>
                            Alamat Lengkap:<br>
                        </div>
                        <div class="col-7">
                            : {{ $id->country }} <br>
                            : {{ $id->city }} <br>
                            : {{ $id->zipcode }} <br>
                            : {{ $id->address }} <br>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            
            <h5>Order Items</h5>
            @foreach($order as $order)
            <div class="col-sm-12 col-md-12 col-lg-12 d-flex order-history mx-auto">
                <div class="row">
                    @foreach ($order->cart->items as $item)
                        <div class="col-12 d-flex justify-content-between ">
                            <div class="order-image">
                                <img src="{{ asset('/storage/'.$item['item']['image']) }}" alt="">
                            </div>

                            <div class="order-detail mr-auto d-flex flex-column justify-content-center">
                                <div class="detail-1">
                                    <h5>{{ $item['item']['name'] }}</h5>
                                </div>
                                <div class="detail-2">
                                    <h6>Ukuran: {{ $item['size'] }}</h6>
                                </div>
                                <div class="detail-3">
                                    <h6>Jumlah: {{ $item['quantity'] }}</h6>
                                </div>
                                <div class="detail-4">
                                    <h6>Price: IDR {{ $item['price'] }}</h6>
                                </div>
                            </div> 
                        </div>
                    @endforeach
                </div>                      
            </div>
            @endforeach
        </div>
    </div>
</div>

<style>
@media print {
    .btn, .card-header, .navbar, footer, .sidebar, .nav-link {
        display: none; /* Sembunyikan tombol, header, navigasi, footer, dan sidebar saat mencetak */
    }

    .order-history {
        page-break-inside: avoid; /* Mencegah pemisahan item dalam halaman cetak */
    }
    
    h5 {
        margin-top: 20px; /* Menambah jarak untuk judul */
    }

    hr {
        margin: 10px 0; /* Menambah jarak antara elemen */
    }
}
</style>

@endsection
