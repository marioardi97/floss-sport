@extends('layouts.app')

@section('content')

@if(!$orders->isEmpty())
<div class="container sixtyvh">
    <div class="row ml-2 mr-2">
        <div class="col-12">
            <h3>Riwayat Belanja</h3>
            <hr>
            <div class="row d-flex ">
                @foreach($orders as $order)
                <div class="col-sm-12 col-md-8 col-lg-8 d-flex order-history mx-auto">
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
                                        <h6>Kuantitas: {{ $item['quantity'] }}</h6>
                                    </div>
                                    <div class="detail-4">
                                        <h6>Price: IDR {{ $item['price'] }}</h6>
                                    </div>
                                </div> 
                            </div>
                        @endforeach
                    </div>                      
                </div>
                <div class="col-sm-12 col-md-4 col-lg-4 d-flex flex-column justify-content-center mx-auto order-info">
                    <div class="row d-flex ">
                        <div class="col-4 ">
                            <h6>Order ID</h6>
                            <h6>Tanggal</h6>
                            <h6>Total Harga</h6>
                            <h6>No Pembayaran</h6>
                        </div>
                        <div class="col-8">
                            <h6>: {{ $order['id'] }}</h6>
                            <h6>: {{ $order['created_at'] }}</h6>
                            <h6>: IDR {{ $order->cart->totalPrice}}</h6>
                            <h6>: MERCUSUAR133EWQ</h6>
                        </div>
                    </div>
                    <button onclick="printOrder({{ $order->id }})" class="btn btn-primary mt-2">Cetak Pesanan</button>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

@else
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex flex-column justify-content-center align-items-center sixtyvh empty-history">
                <div><i class="fa fa-th-list"></i></div>
                <div><h4><b>Yah, keranjang kamu masih kosong nih..</b></h4></div>
                <div><a href="{{ route('product.index') }}">Beli sepatu impian mu disini :)</a></div>
            </div>
        </div>
    </div>
@endif

<script>
function printOrder(orderId) {
    // Ambil data order berdasarkan ID
    const order = @json($orders);

    const selectedOrder = order.find(o => o.id === orderId);

    // Membuat elemen baru untuk menyimpan konten yang akan dicetak
    const printContent = document.createElement('div');
    printContent.innerHTML = `
        <h3>Order ID: ${selectedOrder.id}</h3>
        <h6>Date: ${selectedOrder.created_at}</h6>
        <h6>Total Price: IDR ${selectedOrder.cart.totalPrice}</h6>
        <hr>
        <h4>Products:</h4>
        <ul>
            ${selectedOrder.cart.items.map(item => `
                <li>
                    <img src="${item.item.image}" alt="${item.item.name}" style="width: 50px;"> 
                    ${item.item.name} - Size: ${item.size} - Quantity: ${item.quantity} - Price: IDR ${item.price}
                </li>
            `).join('')}
        </ul>
    `;
    
    // Menyisipkan elemen ke dalam body dan mencetak
    document.body.appendChild(printContent);
    
    window.print();
    
    // Menghapus elemen setelah selesai mencetak
    document.body.removeChild(printContent);
}
</script>

@endsection
