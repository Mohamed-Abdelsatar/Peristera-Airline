<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTRANSITSTATIONSTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('t_r_a_n_s_i_t_s_t_a_t_i_o_n_s', function (Blueprint $table) {
            $table->integer('TtransitId')->primary()->nullable();
            $table->string('stationName')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('t_r_a_n_s_i_t_s_t_a_t_i_o_n_s');
    }
}
