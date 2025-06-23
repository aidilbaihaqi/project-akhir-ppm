<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
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
            "name" => "Administrator",
            "email" => "admin@example.com",
            "username" => "Admin Kece",
            "phone" => "08123456789",
            "roles" => "ADMIN",
            "password" => Hash::make("admin123")
        ]);
    }
}
