<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomerFlightsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer_flights', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customers_id');
            $table->string('flight_no');
            $table->time('departure_time');
            $table->time('arrival_time');
            $table->string('from');
            $table->string('to');
            $table->integer('no_of_passenger');
            $table->integer('total_price');
            $table->timestamps();

            $table->foreign('customers_id')->references('id')->on('customers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('customer_flights');
    }
}
