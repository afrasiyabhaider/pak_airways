<?php
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PackageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 10; $i++) {
            DB::table('packages')->insert([
                'type' => $faker->randomElement(['Umrah', 'Hajj']),
                'descrip[tion' => 'Detail of the Packages of hajj and umrah '.$faker->randomElement(['discount offer','from & to offer'])
                ]);
            }   
    }
}
