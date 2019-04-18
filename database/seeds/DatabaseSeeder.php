<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
         Eloquent::unguard();

         $db = 'resources/sql/db.sql';
         $index = 'resources/sql/index.sql';
         $triggers = 'resources/sql/triggers.sql';
         $populate = 'resources/sql/populate.sql';
         DB::unprepared(file_get_contents($db) . file_get_contents($triggers) . file_get_contents($populate) . file_get_contents($index));
         $this->command->info('Database seeded!');
     }
}
