<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->integer('amount');
            $table->unsignedBigInteger('order_id');
            $table->unsignedBigInteger('menu_id');
            $table->integer('totalAmount')->unsigned();
            $table->string('no_of_serving');
            $table->foreign('totalAmount')->references('totalAmount')->on('order')->onDelete('cascade');
            $table->foreign('order_id')->references('id')->on('order');
            $table->foreign('menu_id')->references('id')->on('menu');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_details');
    }
}
