<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Service;
use App\Price;
use Validator;

class PricesAddController extends Controller
{
    public function execute(Request $request) {
    	
    	if($request->isMethod('post')) {
			$input = $request->except('_token');
			
			
			
			 $validator = Validator::make($input, [
	            'name' => 'required|max:255'
//	            'text' => 'required'
	        ]);

	        if ($validator->fails()) {
	        	
	            return redirect()->route('pricesAdd')
	                        ->withErrors($validator)
	                        ->withInput();
	        }
	        
	        $price = new Price();
	        // Page::unguard();
	        $price->fill($input);
	        if($price->save()) {
				return redirect('admin')->with('status', 'Добавление успешно');
			}
		}
		
		if(view()->exists('admin.prices_add')) {
			
			$data = [
					
					'title' => 'Добавление в прайс'
					
					];
			return view('admin.prices_add',$data);
		}
	}
}
