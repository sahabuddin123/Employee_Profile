@extends('fontend.app')
@section('title') {{ "Employee Full CV" }} @endsection
@section('content')
@if($cvlink == 2)
<style>
ul li{
list-style: square;
}
.personalMian{
display: flex;
}
.emp_exp table{
width: 100% !important;
}
</style>
<link href="{{asset('backend/lightbox/css/jquery.magnify.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack-helper.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/docs.css')}}" rel="stylesheet">

<div class="row">
  <div class="col-md-12 col-sm-4 col-lg-12">
    <div class="tile">
      <div class="tile-body">
      <h4 class="text-center">ID:{{ $personal->Employee_id}} <span>Curriculum Vitea(CV)for Each Personal Professional Staff</span></h4>
        <div class="text-right" id="pnt">
        </div>
        <div class="card-body border">
          <div class="A4Size">
            <!--PersonalInfo Section-->
            <section>
              <article>

                <table width="100%" cellpadding="10">
                    <tr>
                      <th width="100%" align="center"><h1 class="text-center">Documents</h1></th>
                    </tr>
                </table>
                <table width="100%" cellpadding="10">
                    @foreach ($document as $item)
                    <tr width="20%">
                      <th >{{ $item->filename }}</th>
                    </tr>
                    <tr width="80%">
                        <th >
                            {{-- <embed src= "{{ asset('public/storage/'.$item->file_path) }}" width= "800" height= "500"> --}}
                               <object width= "100%" height= "500" type="application/pdf" data="{{ asset('public/storage/'.$item->file_path) }}">
                                  <p>Your web browser doesn't have a PDF plugin. Instead you can <a href="{{ asset('public/storage/'.$item->file_path) }}">click here to download the PDF file.</a></p>
                              </object>
                            </th>
                      </tr>
                      @endforeach
                  </table>
              </article>
              <div class="clear"></div>
            </section>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@else
<h1 class='text-center'>{{ "Access Denied" }}</h1>
@endif
@endsection
@push('scripts')
<script>
window.jQuery || document.write('<script src="{asset('+'backend/js/vendor/jquery-1.12.4.min.js'+')}}"><\/script>');
</script>
<script src="{{asset('backend/lightbox/js/jquery.magnify.js')}}"></script>
<script>
    $(document).ready(function(){
        $('#printPage').on('click', function(){
            window.print();
        });
    });
</script>

@endpush
