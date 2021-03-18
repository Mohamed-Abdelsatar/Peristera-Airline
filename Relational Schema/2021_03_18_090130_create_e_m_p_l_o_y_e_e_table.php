<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEMPLOYEETable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('e_m_p_l_o_y_e_e', function (Blueprint $table) {
            $table->integer('Eid')->primary()->nullable();
            $table->integer('Salary')->nullable();
            $table->string('Egender')->nullable();
            $table->string('JobType')->nullable();
            $table->string('Estreet')->nullable();
            $table->string('Ecity')->nullable();
            $table->string('EFname')->nullable();
            $table->string('ELname')->nullable();
            $table->integer('Age')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('e_m_p_l_o_y_e_e');
    }
}
