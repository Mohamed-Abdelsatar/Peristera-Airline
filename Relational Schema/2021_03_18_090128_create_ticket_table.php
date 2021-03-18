<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTicketTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ticket', function (Blueprint $table) {
            $table->integer('TicketId')->primary()->nullable();
            $table->string('Class')->nullable();
            $table->date('tDate')->nullable();
            $table->integer('SeatNo')->nullable();
            $table->string('paymenteMethod')->nullable();
            $table->integer('PassportNoTicket')->index()->nullable()->comment("FK");
            $table->integer('FflightNo')->index()->comment("FK");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ticket');
    }
}
