@extends('layouts.admin')

@section ('content')

<div class="col-12 col-md-12 col-sm-12 col-lg-10">

    <h5>Tambahkan Stok</h5>
    <hr>

    <form method="POST" action="{{ route('admin.addstock')}}" enctype="multipart/form-data">
        @csrf
        <div class="row ">

            <div class="col-12">
                <label for="product" class="">{{ __('Produk') }}</label>
                <div class="form-group">
                    <select name="product" id="addproductstock" class="form-control">
                        <option selected="true" value="" disabled hidden>Pilih Produk</option>
                        @foreach ($products as $product)
                            <option value="{{ $product->id }}">{{ $product->id.' - '.$product->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-12">
                <label for="size" class="">{{ __('Ukuran') }}</label>
                <div class="form-group">
                    <div>
                        <input id="size" type="text" class="form-control @error('size') is-invalid @enderror" name="size" value="{{ old('size') }}" required autocomplete="size" autofocus>
                        @error('size')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>

            <div class="col-12">
                <label for="quantity" class="">{{ __('Kuantitas') }}</label>
                <div class="form-group">
                    <div>
                        <input id="quantity" type="text" class="form-control @error('quantity') is-invalid @enderror" name="quantity" value="{{ old('quantity')}}" required autocomplete="quantity" autofocus oninput="validateNumericInput(this)">
                        @error('quantity')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>

        </div>
        
        <button type="submit" class="btn btn-success w-100">Tambahkan Stock</button>
    
    </form>

</div>

<script>
    function validateNumericInput(input) {
        input.value = input.value.replace(/\D/g, ''); // Hapus semua karakter non-numerik
    }
</script>

@endsection
