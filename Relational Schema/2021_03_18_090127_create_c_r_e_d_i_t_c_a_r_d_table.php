<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCREDITCARDTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c_r_e_d_i_t_c_a_r_d', function (Blueprint $table) {
            $table->integer('Cvv')->primary()->nullable();
            $table->date('ExpirationDate')->nullable();
            $table->integer('CreditCardID')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('c_r_e_d_i_t_c_a_r_d');
    }
}
