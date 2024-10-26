@extends('layouts.app')

@section ('content')

<div class="container">
    <div class="row">
        <div class="col-7 mx-auto">
            <h3>CHECKOUT</h3>
            <hr>
            
            <form action="{{ route('checkout') }}" method="POST" id="checkout-form">
                @csrf
                <div class="row ">
                    
                    <div class="col-12">
                        <h5>Detail Pengiriman</h5>
                    </div>

                    <div class="col-12">
                        <label for="name" class="">{{ __('Nama') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') ?? $user->name ??'' }}" required autocomplete="name" autofocus>
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="phonenumber" class="">{{ __('Nomor Handphone') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="phonenumber" type="text" class="form-control @error('phonenumber') is-invalid @enderror" name="phonenumber" value="{{ old('phonenumber') ?? $user->profile->phonenumber ??'' }}" required autocomplete="phonenumber" autofocus>
                                @error('phonenumber')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="country" class="">{{ __('Negara') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="country" type="text" class="form-control @error('country') is-invalid @enderror" name="country" value="{{ old('country') ?? $user->profile->country ??'' }}" required autocomplete="country" autofocus>
                                @error('country')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="city" class="">{{ __('Kota') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="city" type="text" class="form-control @error('city') is-invalid @enderror" name="city" value="{{ old('city') ?? $user->profile->city ??'' }}" required autocomplete="city" autofocus>
                                @error('city')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="address" class="">{{ __('Alamat Lengkap') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="address" type="text" class="form-control @error('address') is-invalid @enderror" name="address" value="{{ old('address') ?? $user->profile->address ??'' }}" required autocomplete="address" autofocus>
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="zipcode" class="">{{ __('Kode Pos') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="zipcode" type="text" class="form-control @error('zipcode') is-invalid @enderror" name="zipcode" value="{{ old('zipcode') ?? $user->profile->zipcode ??'' }}" required autocomplete="zipcode" autofocus>
                                @error('zipcode')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <hr>
                        <h5>Alamat Penagihan</h5>
                    </div>
                    

                    <div class="col-12">
                        <label for="creditcardnumber" class="">{{ __('Nomor Kartu Kredit') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="creditcardnumber" type="text" class="form-control @error('creditcardnumber') is-invalid @enderror" name="creditcardnumber" value="{{ old('creditcardnumber') }}" required autocomplete="creditcardnumber" autofocus>
                                @error('creditcardnumber')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <label for="expiremonth" class="">{{ __('Expiration Month') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="expiremonth" type="text" class="form-control @error('expiremonth') is-invalid @enderror" name="expiremonth" value="{{ old('expiremonth') }}" required autocomplete="expiremonth" autofocus>
                                @error('expiremonth')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <label for="expireyear" class="">{{ __('Expiration Year') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="expireyear" type="text" class="form-control @error('expireyear') is-invalid @enderror" name="expireyear" value="{{ old('expireyear') }}" required autocomplete="expireyear" autofocus>
                                @error('expireyear')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    
                    <div class="col-12">
                        <label for="cvc" class="">{{ __('CVC') }}</label>
                        <div class="form-group">
                            <div>
                                <input id="cvc" type="text" class="form-control @error('cvc') is-invalid @enderror" name="cvc" value="{{ old('cvc') }}" required autocomplete="cvc" autofocus>
                                @error('cvc')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>


                </div>
                
                <button type="submit" class="button-primary w-100">Bayar Sekarang</button>
            
            </form>
        </div>
    </div>
</div>

@endsection