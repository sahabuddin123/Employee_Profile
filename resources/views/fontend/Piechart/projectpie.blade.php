@extends('fontend.app')
@section('title')  @endsection
@section('content')
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30">
                <div class="tile">
                    <div class="tile-body">
                        <div class="card-header">
                            <h4 class="card-title text-center">
                                {{ $project->ptitle }}
                            </h4>
                        </div>
                      <div class="row">
                          <div class="col-md-6">
                            <div id="chart-container"></div>
                          </div>
                          <div class="col-md-6">
                            <div id="chart-container2"></div>
                          </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
    </div>
@endsection
@push('scripts')
<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
<script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
<script type="text/javascript">
    FusionCharts.ready(function(){
        var chartObj = new FusionCharts({
type: 'doughnut3d',
renderAt: 'chart-container',
width: '550',
height: '450',
dataFormat: 'json',
dataSource: {
    "chart": {
        "caption": "Total Work",
        "subCaption": "",
        "numberPrefix": "$",
        "bgColor": "#ffffff",
        "startingAngle": "310",
        "showLegend": "1",
        "defaultCenterLabel": "Total revenue: $64.08K",
        "centerLabel": "Revenue from $label: $value",
        "centerLabelBold": "1",
        "showTooltip": "0",
        "decimals": "0",
        "theme": "fusion"
    },
    "data": <?php echo json_encode($Data) ?>
}
}
);
        chartObj.render();
    });
</script>
<script type="text/javascript">
		FusionCharts.ready(function(){
			var chartObj = new FusionCharts({
    type: 'doughnut2d',
    renderAt: 'chart-container2',
    width: '550',
    height: '450',
    dataFormat: 'json',
    dataSource: {
        "chart": {
            "caption": "Completed Work",
            "subCaption": "",
            "numberPrefix": "%",
            "bgColor": "#ffffff",
            "startingAngle": "310",
            "showLegend": "1",
            "defaultCenterLabel": "Total revenue: <?php echo $totsl; ?>%",
            "centerLabel": "Revenue from $label: $value",
            "centerLabelBold": "1",
            "showTooltip": "0",
            "decimals": "0",
            "theme": "fusion"
        },
        "data": <?php echo json_encode($Data2) ?>
    }
}
);
			chartObj.render();
		});
	</script>
@endpush

