<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->enum('type', ['Staff', 'Customer']);
            $table->string('email')->unique();
            $table->string('password');
            $table->string('image');
            $table->char('cnic', 15)->unique();
            $table->string('phone_number')->unique();
            $table->string('address');
            $table->enum('gender', ['Male', 'Female', 'Other']);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
