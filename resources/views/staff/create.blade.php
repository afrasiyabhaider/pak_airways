@extends('layouts.app')
@section('title')
    Register Staff | {{config('app.name','Pak Airways')}} 
@endsection
@section('content')
    <div class="jumbotron">
        <h1 class="text-success">
            Register Staff
        </h1>
    </div>
    <div class="container">
        <form action="{{action('StaffController@store')}}" method="post">
            @csrf
            <div class="form-row">
                <div class="col-sm-6">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" placeholder="Enter Name">
                </div>
                <div class="col-sm-6">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter Email">
                </div>
            </div>
            <div class="form-row">
                <div class="col-sm-6">
                    <label>Name</label>
                    <select name="" id=""></select>
                </div>
                <div class="col-sm-6">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter Email">
                </div>
            </div>
        </form>
    </div>
@endsection