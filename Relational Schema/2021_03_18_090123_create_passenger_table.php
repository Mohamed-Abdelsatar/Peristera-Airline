<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePassengerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('passenger', function (Blueprint $table) {
            $table->integer('PassportNo')->primary()->nullable();
            $table->string('Fname')->nullable();
            $table->string('Lname')->nullable();
            $table->date('DoB')->nullable();
            $table->char('Gender')->nullable();
            $table->string('Pstreet')->nullable();
            $table->string('Pcity')->nullable();
            $table->integer('CC_Cvv')->index()->comment("FK");
            $table->integer('PP_UserName')->index()->comment("FK");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('passenger');
    }
}
