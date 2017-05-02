<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Http\Requests\PagesRequest;
use Validator;
use App\Service;
use App\Price;

class PricesEditController extends Controller
{
    public function execute(Price $price,Request $request) {
		
		
		if(!$price) {
			return redirect('admin');
		}
		
		if($request->isMethod('delete')) {
			$price->delete();
			return redirect('admin')->with('status','Строка в прайсе удалена');
		}
		
		
		if($request->isMethod('post')) {
			
			$input = $request->except('_token');
				
			 
			 $validator = Validator::make($input, [
	            'name' => 'required|max:255',
	            'text' => 'required|max:255'
	        ]);

	        if ($validator->fails()) {
	        	
	            return redirect()->route('pricesEdit',['price'=>$input['id']])
	                        ->withErrors($validator);
	        }
	        

	        $price->fill($input);
	        if($price->update()) {
				return redirect('admin')->with('status', 'Прайс обновлен');
			}
		}
		
		
		
		$old = $price->toArray();
		
		//dd($old);
		if(view()->exists('admin.prices_edit')) {
			
			$data = [
					
					'title' => 'Редактирование прайса - '.$old['name'],
					'data'  => $old					
					];
				
			return view('admin.prices_edit',$data);
		}
	}
}
