<div style="margin:0px 50px 0px 50px;">    
	@if($prices)
	<table class="table table-hover table-striped">
        <thead>
            <tr>
                <th>№ п/п</th>
                <th>Наименование продукции</th>
                <th>Ед. изм</th>
                <th>Цена</th>
                <th>Количество на складе</th>
                <th>Удалить</th>
            </tr>
        </thead>
        <tbody>
		@foreach($prices as $k => $price)
            <tr>
                <td>{{$price->id}}</td>
                <td>  {!! Html::link(route('pricesEdit',['price'=>$price->id]),$price->name,['alt'=>$price->name]) !!}  </td>
                <td>{{$price->text}}</td>
                <td>{{$price->cena}}</td>
                <td>{{$price->kol}}</td>
				{{--<td>{!! Html::image('assets/img/'.$price->images,'', array('style' => 'width:150px' )) !!}</td>--}}
                <td>	
                
                {!! Form::open(['url' => route('pricesEdit',['price'=>$price->id]),'class'=>'form-horizontal','method'=>'POST']) !!}
				    {{ method_field('DELETE') }}
				    {!! Form::button('Удалить', ['class' => 'btn btn-danger','type'=>'submit']) !!}
				{!! Form::close() !!}
				</td>
            </tr>
		@endforeach	
        </tbody>
    </table>
	
	@endif

	{!! Html::link(route('pricesAdd'),'Добавить в прайс', ['class' => 'btn btn-primary','type'=>'submit']) !!}
</div>