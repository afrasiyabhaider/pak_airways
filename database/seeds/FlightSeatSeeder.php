<?php
use App\CustomerFlight;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class FlightSeatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $customer_flights_id = CustomerFlight::pluck('id');
        for($i = 0; $i < 3; $i++)
        {
            DB::table('flight_seats')->insert([
                'customer_flights_id' => $faker->unique()->randomElement($customer_flights_id),
                'seat_no' => 'PK-' . $faker->numberBetween(1, 6),
                'singleseat_price' => $faker->randomElement([100,200,300])
            ]);
        }
    }
}
