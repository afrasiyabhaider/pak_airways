<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Model
{
    use SoftDeletes;

    protected $table = 'customers';

    public function user()
    {
        return $this->hasOne(User::class, 'users_id', 'id');
    }

    public function  customer_flight()
    {

        return $this->hasMany(CustomerFlight::class, 'customers_id', 'id');
    }
}
