@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">test</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ url('checkClientDetails') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('client_cnic') ? ' has-error' : '' }}">
                            <label for="client_cnic" class="col-md-4 control-label">cnic</label>

                            <div class="col-md-6">
                                <input id="client_cnic" type="text" class="form-control" name="client_cnic" value="{{ old('client_cnic') }}" required autofocus>

                                @if ($errors->has('client_cnic'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('client_cnic') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        

                    

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
