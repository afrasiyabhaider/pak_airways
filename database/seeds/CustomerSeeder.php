<?php
use App\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $users_id = User::where('type', 'Customer')->pluck('id');
        for($i = 0; $i < 8; $i++)
        {
            DB::table('customers')->insert([
                'users_id' => $faker->unique()->randomElement($users_id),
                'passport_no' => 'PK' . $faker->unique()->numberBetween(1, 9),
                'city'=> $faker->city
            ]);
        }
    }
}
