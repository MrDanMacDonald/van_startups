

$(document).ready(function(){
  var data;
  data = $('#companiesTable').data('source');
  console.log(data);
    $('#companiesTable').dataTable({
      serverSide: true,
      sAjaxSource: $('#companiesTable').data('source'),
      // columnDefs: [ {
      //   targets: 0,
      //   type: 'alt-string'
      // } ],
      paging: false,
      bInfo: false
    });
});


// For column 1 (item 0 in array), specify that we want to sort by company name
// May need to use the Sort By Image Alt plugin