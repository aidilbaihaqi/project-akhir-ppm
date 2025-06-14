<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            "name" => "Admin Ganteng",
            "email" => "admin@gmail.com",
            "password" => Hash::make("admin123"),
            "roles" => "ADMIN"
        ]);
    }
}
