$(document).ready(function(){
    $('#companiesTable').dataTable({
      paging: false,
      bInfo: false,
      ajaxSource: $('#companiesTable').data('source'),
    });
});

//How to read alt image tag info from

