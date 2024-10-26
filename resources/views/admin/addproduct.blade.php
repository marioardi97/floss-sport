@extends('layouts.admin')

@section ('content')

<div class="col-12 col-md-12 col-sm-12 col-lg-10">
    <h5>Tambahkan Produk :</h5>
    <hr>

    <form method="POST" action="{{ route('product.create') }}" enctype="multipart/form-data">
        @csrf
        <div class="row ">

            <div class="col-12">
                <label for="name" class="">{{ __('Nama Produk') }}</label>
                <div class="form-group">
                    <div>
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>

<div class="col-12">
  <label for="price" class="">{{ __('Harga') }}</label>
  <div class="form-group">
    <div>
      <input id="price" type="text" class="form-control @error('price') is-invalid @enderror" name="price" value="{{ old('price') }}" required autocomplete="price" autofocus oninput="formatPrice(this)">
      @error('price')
        <span class="invalid-feedback" role="alert">
          <strong>{{ $message }}</strong>
        </span>
      @enderror
    </div>
  </div>
</div>

<script>
  function formatPrice(input) {
    let value = input.value.replace(/\D/g, ''); // Hapus karakter non-numerik
    input.value = new Intl.NumberFormat('id-ID').format(value); // Format dengan titik
  }
</script>

            <div class="col-12">
                <label for="brand" class="">{{ __('Brand') }}</label>
                <div class="form-group">
                    <div>
                        <select name="brand" id="addproductbrand" class="form-control">
                            <option selected="true" value="" disabled hidden></option>
                            <option value="Nike">Nike</option>
                            <option value="Adidas">Adidas</option>
                            <option value="New Balance">New Balance</option>
                            <option value="Asics">Asics</option>
                            <option value="Puma">Puma</option>
                            <option value="Skechers">Skechers</option>
                            <option value="Fila">Fila</option>
                            <option value="Bata">Bata</option>
                            <option value="Burberry">Burberry</option>
                            <option value="Converse">Converse</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <label for="gender" class="">{{ __('Gender') }}</label>
                <div class="form-group">
                    <div>
                        <select name="gender" id="addproductgender" class="form-control">
                            <option selected="true" value="" disabled hidden></option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Unisex">Unisex</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <label for="category" class="">{{ __('Kategori') }}</label>
                <div class="form-group">
                    <div>
                        <select name="category" id="addproductcategory" class="form-control">
                                                        <option selected="true" value="" disabled hidden></option>
                            <option value="Shoes">Sepatu Gunung</option>
                            <option value="Running Shoes">Sepatu Running</option>
                            <option value="Sport Shoes">Sepatu Olahraga</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="form-group">
                    <label for="image" class="">Gambar Produk :</label>
                    <input type="file" class="form-control" id="image" name="image">
                    @error('image')

                    <div style="color:red; font-weight:bold; font-size:0.7rem;">{{ $message }}</div>

                    @enderror
                </div>
            </div>
            


        </div>
        
        <button type="submit" class="btn btn-success w-100">Tambahkan Produk</button>
    
    </form>

</div>
    
@endsection