$.extend($.fn.dataTableExt.oSort, {
	"date-br-pre": function(a) {
		if (a == null || a == "") {
			return 0;
		}
		var brDatea = a.split('/');
		return (brDatea[2] + brDatea[1] + brDatea[0]) * 1;
	},

	"date-br-asc": function(a, b) {
		return ((a < b) ? -1 : ((a > b) ? 1 : 0));
	},

	"date-br-desc": function(a, b) {
		return ((a < b) ? 1 : ((a > b) ? -1 : 0));
	}
});


$(document)
.ready(
		function tabela_dinamica () 
		{
			
			$("#tabela")
			.dataTable(
					{
					
						
						"oLanguage": {
							"sProcessing": "Process...",
							"sLengthMenu": " _MENU_ ",
							"sZeroRecords": "*---*",
							"sInfo": " _START_ - _END_ --- _TOTAL_ ",
							"sInfoEmpty": " 0 - 0 --- 0 ",
							"sInfoFiltered": "",
							"sInfoPostFix": "",
							"sSearch": "Global:",
							"sUrl": "",
							"oPaginate": {
								"sFirst": "1º",
								"sPrevious": "<<",
								"sNext": ">>",
								"sLast": "N"
							
							}
						},
						
						"order": [[ 0, "desc" ]],
						
						"columns": [
							{ "type": "date-br" },
				            null,
				            null,
				            null,
				            null,
				            null
				            ]
						
						
					}
					
			);
			
			
		});

function filterGlobal () {
	$('#tabela').DataTable().search(
			$('#global_filter').val(),
			$('#global_regex').prop('checked'),
			$('#global_smart').prop('checked')
	).draw();
}

function filterColumn ( i ) {
	$('#tabela').DataTable().column(i).search(
			$('#col'+i+'_filter').val(),
			$('#col'+i+'_regex').prop('checked'),
			$('#col'+i+'_smart').prop('checked')
	).draw();
}

$(document).ready(function() {
	$('#tabela').DataTable();

	$('input.global_filter').on( 'keyup click', function () {
		filterGlobal();
	} );

	$('input.column_filter').on( 'keyup click', function () {
		filterColumn( $(this).parents('tr').attr('data-column') );
	} );
} );



$(document)
.ready(
		function tabela_dinamica () 
		{
			
			$("#runtastic")
			.dataTable(
					{	
						"oLanguage": {
							"sProcessing": "Process...",
							"sLengthMenu": " _MENU_ ",
							"sZeroRecords": "*---*",
							"sInfo": " _START_ - _END_ --- _TOTAL_ ",
							"sInfoEmpty": " 0 - 0 --- 0 ",
							"sInfoFiltered": "",
							"sInfoPostFix": "",
							"sSearch": "Global:",
							"sUrl": "",
							"oPaginate": {
								"sFirst": "1º",
								"sPrevious": "<<",
								"sNext": ">>",
								"sLast": "N"		
							}
						}
					}
			);
			
			
		});



