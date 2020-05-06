$(document).ready(function() {


    (function($) {
        "use strict";

        // Datepickers
        $('#data_1').datepicker({
            dateFormat: 'yy-mm-dd',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            viewMode: 'years',
            onSelect: function(selectedDate) {
                $('#data_1').datepicker('option', 'minDate', selectedDate);
            }
        });
        $('#data_2').datepicker({
            dateFormat: 'yy-mm-dd',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            viewMode: 'years',
            onSelect: function(selectedDate) {
                $('#data_2').datepicker('option', 'maxDate', selectedDate);
            }
        });
        $('#finish2').datepicker({
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onSelect: function(selectedDate) {
                $('#start').datepicker('option', 'maxDate', selectedDate);
            }
        });
        $('#finish3').datepicker({
            dateFormat: 'dd.mm.yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onSelect: function(selectedDate) {
                $('#start').datepicker('option', 'maxDate', selectedDate);
            }
        });
        $('#finish4').datepicker({
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onSelect: function(selectedDate) {
                $('#start').datepicker('option', 'maxDate', selectedDate);
            }
        });

    })(jQuery);
});