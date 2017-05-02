<?php

namespace App\Http\Controllers;

use App\Prices;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Service;

class PriceController extends Controller
{
     public function execute() {
		
		if(view()->exists('admin.prices')) {

            $prices = Prices::all();
			
			$data = [
					'title'=>'Прайс',
					'prices'=>$prices
					];
			
			return view('admin.prices',$data);
		}
		
	}
}
