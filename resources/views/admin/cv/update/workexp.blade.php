@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 1) + 1;
            var tr = '<tr>' +
                    '<td>'+
                        '<div class="card-body">'+
                            '<div class="form-group">'+
                                '<label for="company_name">Company name</label>'+
                                '<input type="text" class="company_name form-control" id="company_name" name="company_name[]" value="{{ old('company_name') }}">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="position">Position</label>'+
                                '<input type="text" class="position form-control" id="position" name="position[]" value="{{ old('position') }}">'+
                            '</div>'+
                            '<div class="form-group">'+
                                ' <label for="from">From</label>'+
                                 '<input type="date" class="from form-control" name="from[]" value="{{  old('from') }}">'+
                            ' </div>'+
                             '<div class="form-group">'+
                                ' <label for="to">To</label>'+
                                 '<input type="date" class="to form-control" name="to[]" value="{{ old('to') }}">'+
                            ' </div>'+
                            '<div class="form-group">'+
                                '<label for="editor'+ n +'">Project Name & Responcibility</label>'+
                                '<div id="fieldList'+ n +'">'+
                                '</div>'+
                            '</div>'+
                            '<div class="text-right">'+
                               ' <input type="button" class="btn btn-danger delete" value="Remove Item">'+
                            '</div>'+
                       ' </div>'+
                   ' </td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });

</script>
@section('workexp')
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                @if($data == 1)
                <form action="{{ route('admin.cv.update.workexp.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table" width="100%">
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                   $n = 0;
                                @endphp
                                @foreach ($workexp as $item)
                                <tr>
                                    <td>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="company_name">Company name</label>
                                                <input type="text" class="company_name form-control" id="company_name" name="company_name[]" value="{{ $item->company_name, old('company_name') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="position">Position</label>
                                                <input type="text" class="position form-control" id="position" name="position[]" value="{{  $item->position, old('position') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="from">From</label>
                                                <input type="date" class="from form-control" name="from[]" value="{{  $item->from, old('from') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="to">To</label>
                                                <input type="date" class="to form-control" name="to[]" value="{{  $item->to, old('to') }}">
                                            </div>
                                            <div class="form-group">
                                                <div id="fieldList">
                                                    <label for="project_name-{{ $n }}">Project Name & Responcibility</label>
                                                    <textarea  class='form-control fixborder' id="project_name-{{ $n }}" name='project_name[]'>{{ $item->project_name, old('project_name') }}</textarea>
                                                </div>
                                            </div>
                                            {{--  <div class="text-right">
                                                <input type="button" class="btn btn-danger delete" value="Remove Item">
                                            </div>  --}}
                                        </div>
                                    </td>
                                </tr>
                                @php
                                 $x++;
                                 $n++;
                                @endphp
                                @endforeach


                            </tbody>
                        </table>
                        <div class="text-right">
                            {{--  <input type="button" class="btn btn-info add" id="addMore" rel="1" value="Add New Item">  --}}
                        </div>
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Work Expreance</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
                <script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
                                 @if($n == 1)
                                <script>
                                     CKEDITOR.replace( 'project_name-0' );
                                </script>
                                @elseif($n == 2)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );

                                </script>
                                @elseif($n == 3)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );

                                </script>
                                @elseif($n == 4)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );

                                </script>
                                @elseif($n == 5)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );

                                </script>
                                @elseif($n == 6)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );
                                    CKEDITOR.replace( 'project_name-5' );

                                </script>
                                @elseif($n == 7)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );
                                    CKEDITOR.replace( 'project_name-5' );
                                    CKEDITOR.replace( 'project_name-6' );

                                </script>
                                @elseif($n == 8)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );
                                    CKEDITOR.replace( 'project_name-5' );
                                    CKEDITOR.replace( 'project_name-6' );
                                    CKEDITOR.replace( 'project_name-7' );

                                </script>
                                @elseif($n == 9)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );
                                    CKEDITOR.replace( 'project_name-5' );
                                    CKEDITOR.replace( 'project_name-6' );
                                    CKEDITOR.replace( 'project_name-7' );
                                    CKEDITOR.replace( 'project_name-8' );

                                </script>
                                @elseif($n == 10)
                                <script>
                                    CKEDITOR.replace( 'project_name-0' );
                                    CKEDITOR.replace( 'project_name-1' );
                                    CKEDITOR.replace( 'project_name-2' );
                                    CKEDITOR.replace( 'project_name-3' );
                                    CKEDITOR.replace( 'project_name-4' );
                                    CKEDITOR.replace( 'project_name-5' );
                                    CKEDITOR.replace( 'project_name-6' );
                                    CKEDITOR.replace( 'project_name-7' );
                                    CKEDITOR.replace( 'project_name-8' );
                                    CKEDITOR.replace( 'project_name-9' );

                                </script>
                                @else
                                <script>

                                </script>
                                @endif
                @else
                <form action="{{ route('admin.cv.update.workexp.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table" width="100%">
                            <tbody class="resultbody">
                                <tr>
                                    <td>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="company_name">Company name</label>
                                                <input type="text" class="company_name form-control" id="company_name" name="company_name[]" value="">
                                            </div>
                                            <div class="form-group">
                                                <label for="position">Position</label>
                                                <input type="text" class="position form-control" id="position" name="position[]" value="">
                                            </div>
                                            <div class="form-group">
                                                <label for="from">From</label>
                                                <input type="date" class="from form-control" id="from" name="from[]">
                                            </div>
                                            <div class="form-group">
                                                <label for="to">To</label>
                                                <input type="date" class="to form-control" id="to" name="to[]">
                                            </div>
                                            <div class="form-group">
                                                <div id="fieldList">
                                                    <label for="project_name-0">Project Name & Responcibility</label>
                                                    <textarea  class='form-control fixborder' id="project_name-0" name='project_name[]'></textarea>
                                                </div>
                                            </div>
                                            <div class="text-right">
                                                <input type="button" class="btn btn-danger delete" value="Remove Item">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-right">
                            <input type="button" class="btn btn-info add" id="addMore" rel="1" value="Add New Item">
                        </div>
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Work Expreance</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
                @endif
            </div>
@endsection
@push('scripts')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/4.8.0/full-all/ckeditor.js"></script>

<script>
	$(document).ready(function() {
		CKEditorChange('project_name-0');
	});

	var i = 1;
	$(function() {
		$("#addMore").click(function(e) {
			e.preventDefault();
			$("#fieldList" + i ).append("<textarea id='project_name-"+i+"' class='form-control fixborder' name='project_name[]'></textarea>");
			CKEditorChange('project_name-' + $(this).attr('rel'));
			$(this).attr('rel', parseInt($(this).attr('rel')) + parseInt(1));
			i++;
		});
	});

	function CKEditorChange(name) {
		CKEDITOR.replace(name, {
			toolbar: [{
			name: 'document',
			items: ['Print']
			},
			{
			name: 'clipboard',
			items: ['Undo', 'Redo']
			},
			{
			name: 'styles',
			items: ['Format', 'Font', 'FontSize']
			},
			{
			name: 'basicstyles',
			items: ['Bold', 'Italic', 'Underline', 'Strike', 'RemoveFormat', 'CopyFormatting']
			},
			{
			name: 'colors',
			items: ['TextColor', 'BGColor']
			},
			{
			name: 'align',
			items: ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
			},
			{
			name: 'links',
			items: ['Link', 'Unlink']
			},
			{
			name: 'paragraph',
			items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote']
			},
			{
			name: 'insert',
			items: ['Image', 'Table']
			},
			{
			name: 'tools',
			items: ['Maximize']
			},
			{
			name: 'editing',
			items: ['Scayt']
			}
			],
			filebrowserUploadUrl: 'request.php?pID=Upload',
			customConfig: '',
			disallowedContent: 'img{width,height,float}',
			extraAllowedContent: 'img[width,height,align]',
			extraPlugins: 'tableresize,uploadimage,uploadfile',
			height: 800,
			contentsCss: ['https://cdn.ckeditor.com/4.8.0/full-all/contents.css'],
			bodyClass: 'document-editor',
			format_tags: 'p;h1;h2;h3;pre',
			removeDialogTabs: 'image:advanced;link:advanced',
			stylesSet: [{
			name: 'Marker',
			element: 'span',
			attributes: {
			'class': 'marker'
			}
			},
			{
			name: 'Cited Work',
			element: 'cite'
			},
			{
			name: 'Inline Quotation',
			element: 'q'
			},
			{
			name: 'Special Container',
			element: 'div',
			styles: {
			padding: '5px 10px',
			background: '#eee',
			border: '1px solid #ccc'
			}
			},
			{
			name: 'Compact table',
			element: 'table',
			attributes: {
			cellpadding: '5',
			cellspacing: '0',
			border: '1',
			bordercolor: '#ccc'
			},
			styles: {
			'border-collapse': 'collapse'
			}
			},
			{
			name: 'Borderless Table',
			element: 'table',
			styles: {
			'border-style': 'hidden',
			'background-color': '#E6E6FA'
			}
			},
			{
			name: 'Square Bulleted List',
			element: 'ul',
			styles: {
			'list-style-type': 'square'
			}
			}
			]
		});
	}
</script>
@endpush
