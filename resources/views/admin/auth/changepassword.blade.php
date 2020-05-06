@extends('admin.app')
@section('content')
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div class="user-data" style="padding-top:0px;">
            <div class="tile" style="padding:30px;">
                <h3 class="tile-title">Change password</h3>
                @if (session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                    <form class="form-horizontal" method="POST" action="{{ route('changePassword') }}">
                        @csrf

                        <div class="form-group{{ $errors->has('current-password') ? ' has-error' : '' }}">
                            <label for="current-password" class=" control-label">Current Password</label>

                            <div class="">
                                <input id="current-password" type="password" class="form-control" name="current-password" required>

                                @if ($errors->has('current-password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('current-password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('new-password') ? ' has-error' : '' }}">
                            <label for="new-password" class=" control-label">New Password</label>

                            <div class="">
                                <input id="new-password" type="password" class="form-control" name="new-password" required>

                                @if ($errors->has('new-password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('new-password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="new-password-confirm" class=" control-label">Confirm New Password</label>

                            <div class="">
                                <input id="new-password-confirm" type="password" class="form-control" name="new-password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">
                                    Change Password
                                </button>
                            </div>
                        </div>
                    </form>
            </div>
        </div>
        </div>
    </div>
@endsection
@push('scripts')

@endpush

