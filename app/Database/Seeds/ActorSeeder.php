<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ActorSeeder extends Seeder
{
	public function run()
	{
		$faker = \Faker\Factory::create('en_US');

		for ($i = 0; $i < 100; $i++) {
			$gender = $faker->randomElement(['male', 'female']);
			$data = [
				'name' =>  $faker->name($gender),
				'gender' => $gender,
				'age' => $faker->numberBetween(7, 70)
			];
			$this->db->query(
				"INSERT INTO actor(name,gender,age) VALUES(:name:, :gender:, :age:)",
				$data
			);
		}
	}
}
