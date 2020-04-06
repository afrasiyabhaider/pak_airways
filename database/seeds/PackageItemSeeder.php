<?php
use App\Package;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class PackageItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $packages_id = Package::pluck('id');
        for($i = 0; $i < 10; $i++)
        {
            DB::table('package_items')->insert([
                'packages_id' => $faker->unique()->randomElement($packages_id),
                'price' => $faker->randomElement([30000,20000,65000]),
                'from' => $faker->date,
                'to' => $faker->date
            ]);
        }
    }
}
