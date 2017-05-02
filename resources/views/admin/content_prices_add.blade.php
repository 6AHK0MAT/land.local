<div class="wrapper container-fluid">

{!! Form::open(['url' => route('pricesAdd'),'class'=>'form-horizontal','method'=>'POST','enctype'=>'multipart/form-data']) !!}
    <div class="form-group">
	     {!! Form::label('name', 'Название:',['class'=>'col-xs-3 control-label']) !!}
	     <div class="col-xs-7">
		 	{!! Form::text('name', old('name'), ['class' => 'form-control','placeholder'=>'Введите наименование продукции']) !!}
		 </div>
    </div>

	<div class="form-group">
		{!! Form::label('text', 'Единицы измерения:',['class'=>'col-xs-3 control-label']) !!}
		<div class="col-xs-7">
			{!! Form::text('text', old('text'), ['class' => 'form-control','placeholder'=>'Введите единицы измерения']) !!}
		</div>
	</div>

    <div class="form-group">
	     {!! Form::label('cena', 'Цена:',['class'=>'col-xs-3 control-label']) !!}
	     <div class="col-xs-7">
		 	{!! Form::text('cena', old('cena'), ['class' => 'form-control','placeholder'=>'Введите цену']) !!}
		 </div>
    </div>

	<div class="form-group">
		{!! Form::label('kol', 'Количество на складе:',['class'=>'col-xs-3 control-label']) !!}
		<div class="col-xs-7">
			{!! Form::text('kol', old('kol'), ['class' => 'form-control','placeholder'=>'Введите количество на складе']) !!}
		</div>
	</div>
    

      <div class="form-group">
	    <div class="col-xs-offset-2 col-xs-10">
	      {!! Form::button('Сохранить', ['class' => 'btn btn-primary','type'=>'submit']) !!}
	    </div>
	  </div>
    
{!! Form::close() !!}

</div>