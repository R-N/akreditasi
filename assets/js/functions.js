
function getTable($table){
    if(!$table.is("table")) {
        $table = $table.find("table");
    }
    return $table;
}

function getDataTable($table){
    return getTable($table).DataTable();
}

function intVal( i ) {
	if(typeof i === 'string'){
		let ret = i.replace(/[\$,]/g, '')*1;
		if (!isNaN(ret)) return ret;
		ret = $($.parseHTML(i));
		i = ret.text();
		return i.replace(/[\$,]/g, '')*1;
	}else if (typeof i === 'number'){
		return i;
	}else{
		throw Exception("Invalid value: " + i);
	}
};

function footSum(a, b){
    return intVal(a) + intVal(b);
}
$(document).ready(function(){
    $(".datatable").each(function(){
        let $table0 = $(this);
        let $table = getTable($table0);
        let option = {}
		option.order = [];
		ordering = true;
        dom = $table0.data("dom");
		pageLength = $table0.data("pagelength");
		if(!pageLength) pageLength = 10;
		option.pageLength = pageLength;
        if(!dom) dom = '<Bfr>t<ip>';
		if($table0.is(".simple")){
			if($table0.is(".export"))
				dom = "Bt";
			else
				dom = "t";
			ordering = false;
		}
        option.dom = dom;
		option.ordering = ordering;
        if($table0.is(".export")){
            option.buttons = {
                buttons: [
                    { 
                        "extend": 'excelHtml5', 
                        "text":'Excel',
                        "className": 'btn-primary btn-sm'
                    },
                    { 
                        "extend": 'pdfHtml5', 
                        "text":'PDF',
                        "className": 'btn-primary btn-sm'
                    },
                    { 
                        "extend": 'print', 
                        "text":'Print',
                        "className": 'btn-primary btn-sm'
                    }
                ],
                dom:{
                    button:{
                        className:"btn"
                    }
                }
            };
        }
        $footerEls = $table0.find("tfoot .footer-callback");
        if($footerEls.length > 0){
            option.footerCallback = function ( row, data, start, end, display ) {
                var api = this.api(), data;
                
                $table.find("tfoot .footer-callback").each(function(){
                    $el = $(this);
                    col = $el.data("column");
                    op = $el.data("operation");
                    if (!op) op = "sum";
                    paging = $el.data("paging"); // all or current
                    if(!paging) paging = "all";
                    
                    func = footSum;
                    switch(op){
                        case "sum":{
                            func = footSum;
                            break;
                        }
                        default:{
                            func = footSum;
                        }
                    }
					
					column = api.column( col, {page: paging});
                    data = column.data();
                    
                    val = api
                        .column( col, {page: paging})
                        .data()
                        .reduce(func, 0 );
						
					if(op == "avg"){
						val = val / Math.max(data.length, 1);
					}
                    
                    strVal = val;
                    format = $el.data("format");
                    if(format) //format = "0";
						strVal = numeral(val).format(format);
                    
                    $el.html(strVal);
                });
            };
        }
        
        table = $table.DataTable(option);
        
        if ($table0.is(".column-search")){
            $thead = $table.find('thead');
            $thead.find('tr').clone(true).appendTo($thead);
            $thead.find('tr:eq(1) th').each( function (i) {
                $thSearch = $(this);
                $(this).removeClass("sorting sorting_asc sorting_desc");
                var title = $(this).text();
                let classes = $(this).attr("class");
                $(this).html( '<div class="inner-addon left-addon"><span class="glyphicon glyphicon-search"></span><input type="text" class="w-100" /></div>' );

                $(this).addClass(classes);

                $( 'input', this ).on( 'keyup change', function () {
                    if ( table.column(i).search() !== this.value ) {
                        table
                            .column(i)
                            .search( this.value )
                            .draw();
                    }
                } );
            } );
        }
        if($table0.is(".auto-number")){
            table.on( 'order.dt search.dt', function () {
                table.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                    cell.innerHTML = i+1;
                } );
            } ).draw();
        }
    });
    $('table').each(function(){
		let width = $(this).css("width");
		if(width == 0 || width == "0px" || width <= $(this).parent().width()){
			$(this).css("width", "100%");
		}
	});
});