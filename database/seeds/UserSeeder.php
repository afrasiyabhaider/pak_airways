<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 10; $i++) {
            DB::table('users')->insert([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'password' => Hash::make('password'), //password
                'type' => $faker->randomElement(['Staff', 'Customer']),
                'cnic' => '34201-1234456-' . $faker->unique()->numberBetween(0, 9),
                'image' => 'img/test.png',
                'phone_number' => $faker->unique()->phoneNumber,
                'address' => $faker->address,
                'gender' => $faker->randomElement(['Male', 'Female', 'Other']),
            ]);
        }
    }
}
