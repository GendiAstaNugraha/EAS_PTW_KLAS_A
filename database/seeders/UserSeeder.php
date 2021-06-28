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
            'name' => 'admin',
            'email' => 'admin@example.com',
            'role' => 'admin',
            'password' => bcrypt('admin',)
        ],
        $user = [
            'name' => 'gendi',
            'email' => 'gendi@example.com',
            'role' => 'user',
            'password' => bcrypt('gendi'),
        ],

    ];
        foreach ($user as $key => $value){
            User::create($value);
        }
    }
}
