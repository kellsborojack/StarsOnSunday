/**
 * Created by JetBrains RubyMine.
 * User: Nashboy
 * Date: 13/09/11
 * Time: 23:26
 * To change this template use File | Settings | File Templates.
 */

$(function(){
        oTable = $('#players').dataTable({
        "bRetrieve": true,
        "bJQueryUI": true,
        "aaSorting": [ [0,'asc'], [1,'asc'] ],
        "bLengthChange": false
    });
});

$(function(){
   $("#accordion").accordion({ header: "h3" });
   $("#DefaultStateButton").button() ;
   $("#BackButton").button() ;
   $("#flash_notice").effect('fade', {}, 7000) ;
});

$(function() {
		// a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375), ignore!
		$( "#dialog:ui-dialog" ).dialog( "destroy" );

		$( "#dialog-message" ).dialog({
			modal: true,
			buttons: {
				Ok: function() {
					$( this ).dialog( "close" );
				}
			}
		});
	});





