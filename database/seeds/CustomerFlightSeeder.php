<?php
use App\Customer;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class CustomerFlightSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $customers_id = Customer::pluck('id');
        for($i = 0; $i < 3; $i++)
        {
            DB::table('customer_flights')->insert([
                'customers_id' => $faker->unique()->randomElement($customers_id),
                'flight_no' => 'PK-' . $faker->numberBetween(1, 6),
                'departure_time' => $faker->time,
                'arrival_time' => $faker->time,
                'from' => $faker->city,
                'to' => $faker->city,
                'no_of_passenger' => $faker->randomElement([1,2,3]),
                'total_price' => $faker->randomElement([100,200,300])
            ]);
        }
    }
}
