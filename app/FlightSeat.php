<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FlightSeat extends Model
{
    public function customer_flight()
    {
        return $this->belongsTo(CustomerFlight::class, 'customer_flights_id', 'id');
    }
}
