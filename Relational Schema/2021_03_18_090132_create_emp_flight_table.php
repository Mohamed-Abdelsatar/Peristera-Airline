<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmpFlightTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('emp_flight', function (Blueprint $table) {
            $table->integer('ZaFlightNo')->primary()->nullable()->comment("FK");
            $table->integer('ZaEmpID')->nullable()->comment("FK");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('emp_flight');
    }
}
