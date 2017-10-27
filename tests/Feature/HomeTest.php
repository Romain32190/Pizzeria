<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class HomeTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testHome()
    {
        $this->call('GET', '/');
        $this->assertResponseOk();
    }



    public function testmakeOrder()
    {
    	$this->call('GET', '/details');
    	$this->assertResponseStatus(404);
    }

    public function testmakeOrderWithParams()
    {
    	$this->call('GET', '/details/1');
    	$this->assertResponseStatus(200);
    	
    	$this->call('POST', '/makeOrder');
    	$this->assertResponseStatus(302);
    }

    public function testAdminChangeStatus(){
    	$this->call('GET', '/admin/changeStatus');
    	$this->assertResponseStatus(404);
    }

    public function testAdminChangeStatusWithParams()
    {
    	$this->call('GET', 'admin/changeStatus/2');
    	$this->assertResponseStatus(302);
    }
}
