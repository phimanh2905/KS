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
        <button class="btn btn-success btn-circle" type="button">
            <i class="fa fa-check"></i>
        </button>
        <button class="btn btn-danger btn-circle" type="button">
            <i class="fa fa-times"></i>
        </button>
    </td>
    <td>
        {!! Form::button('<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sửa', ['class' => 'btn btn-warning editValue', 'data-toggle' => 'modal', 'data-target' => '#myModal','value'=> $user->id]) !!}
    </td>
    <td>
        {!! Form::open(['method'=>'DELETE','route' => ['admin.destroy',$user->id]]) !!}
        {!! Form::button(' <i class="fa fa-trash-o"></i>  Xóa',['class'=> 'btn btn-danger deleteValue', 'type' => 'submit', 'value'=> $user->id]) !!}
        {!! Form::close() !!}
    </td>
</tr>
@endforeach