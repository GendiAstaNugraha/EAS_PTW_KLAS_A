<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = [
        [
            'name' => 'aditya',
            'email' => 'aditya@example.com',
            'role' => 'user',
            'password' => bcrypt('aditya',)
        ],

    ];
        foreach ($user as $key => $value){
            User::create($value);
        }
    }
}
