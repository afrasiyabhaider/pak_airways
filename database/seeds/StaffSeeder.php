<?php

use App\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class StaffSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $users_id = User::where('type', 'Staff')->pluck('id');
        for ($i = 0; $i < 4; $i++) {
            DB::table('staffs')->insert([
                'users_id' => $faker->unique()->randomElement($users_id),
                'designation' => $faker->randomElement(['Manager', 'CEO', 'Operator', 'Others']),
                'employee_id' => 'PA-' . $faker->unique()->numberBetween(1, 5)
            ]);
        }
    }
}
