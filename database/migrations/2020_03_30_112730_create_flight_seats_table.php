<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFlightSeatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flight_seats', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_flights_id');
            $table->string('seat_no');
            $table->integer('singleseat_price');
            $table->timestamps();

            $table->foreign('customer_flights_id')->references('id')->on('customer_flights');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flight_seats');
    }
}
