<div class="wrapper container-fluid">

{!! Form::open(['url' => route('pricesEdit',['prices'=>$data['id']]),'class'=>'form-horizontal','method'=>'POST','enctype'=>'multipart/form-data']) !!}
    <div class="form-group">
	     {!! Form::label('name', 'Наименование продукции:',['class'=>'col-xs-3 control-label']) !!}
	     <div class="col-xs-7">
		 	{!! Form::text('name', $data['name'], ['class' => 'form-control','placeholder'=>'Введите наименование продукции']) !!}
		 </div>
    </div>
    {!! Form::hidden('id', $data['id']) !!}

	<div class="form-group">
		{!! Form::label('text', 'Ед. измерения:',['class'=>'col-xs-3 control-label']) !!}
		<div class="col-xs-7">
			{!! Form::text('text', $data['text'], ['class' => 'form-control','placeholder'=>'Введите единицы измерения']) !!}
		</div>
	</div>

	<div class="form-group">
	     {!! Form::label('cena', 'Цена:',['class'=>'col-xs-3 control-label']) !!}
	     <div class="col-xs-7">
		 	{!! Form::text('cena', $data['cena'], ['class' => 'form-control','placeholder'=>'Введите цену']) !!}
		 </div>
    </div>

	<div class="form-group">
		{!! Form::label('kol', 'Количество на складе:',['class'=>'col-xs-3 control-label']) !!}
		<div class="col-xs-7">
			{!! Form::text('kol', $data['kol'], ['class' => 'form-control','placeholder'=>'Введите цену']) !!}
		</div>
	</div>
    
    {{--<div class="form-group">--}}
	     {{--{!! Form::label('text', 'Текст:',['class'=>'col-xs-2 control-label']) !!}--}}
	     {{--<div class="col-xs-8">--}}
		 	{{--{!! Form::textarea('text', $data['text'], ['id'=>'editor','class' => 'form-control','placeholder'=>'Введите текст страницы']) !!}--}}
		 {{--</div>--}}
    {{--</div>--}}
	
    
      <div class="form-group">
	    <div class="col-xs-offset-2 col-xs-10">
	      {!! Form::button('Сохранить', ['class' => 'btn btn-primary','type'=>'submit']) !!}
	    </div>
	  </div>
    
{!! Form::close() !!}

</div>