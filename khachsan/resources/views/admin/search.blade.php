@foreach($users as $user)
<tr>
    <td>
        {{ $user->id}}
    </td>
    <td>
        {{ $user->name}}
    </td>
    <td>
        {{ $user->email}}
    </td>
        <td>
        {{ $user->role}}
    </td>
    <td>
        {!! Form::button('<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit', ['class' => 'btn btn-primary editValue', 'data-toggle' => 'modal', 'data-target' => '#myModal','value'=> $user->id]) !!}
    </td>
    <td>
        {!! Form::open(['method'=>'DELETE','route' => ['admin.destroy',$user->id]]) !!}
        {!! Form::button(' <i class="fa fa-trash-o"></i>  Delete',['class'=> 'btn btn-danger deleteValue', 'type' => 'submit', 'value'=> $user->id]) !!}
        {!! Form::close() !!}
    </td>
</tr>
@endforeach