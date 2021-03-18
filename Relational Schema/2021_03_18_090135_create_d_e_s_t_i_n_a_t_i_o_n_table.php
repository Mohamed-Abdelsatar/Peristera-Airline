<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDESTINATIONTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('d_e_s_t_i_n_a_t_i_o_n', function (Blueprint $table) {
            $table->integer('DesNo')->primary()->nullable();
            $table->string('DepartureCity')->nullable();
            $table->string('ArrivalCity')->nullable();
            $table->time('DepartureTime')->nullable();
            $table->time('ArrivalTime')->nullable();
            $table->integer('Za_transit_id')->index()->comment("FK");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('d_e_s_t_i_n_a_t_i_o_n');
    }
}
