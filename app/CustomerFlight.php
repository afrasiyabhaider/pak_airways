<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CustomerFlight extends Model
{
    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customers_id', 'id');
    }

    public function  flight_seat()
    {

        return $this->hasMany(FlightSeat::class, 'customer_flights_id', 'id');
    }
}
