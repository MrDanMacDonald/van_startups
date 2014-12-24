jQuery ->
  $(document).ready ->
    $('#companiesTable').dataTable
      responsive: true,
      paging: false,
      bInfo: false,
      bfilter: false,
      "dom":' <"search_box"fl><"top">rt<"bottom"ip><"clear">'

# TODO: For customization of column definitions, use ajax 

# $(document).ready(function(){
#  $('#companiesTable').dataTable({
#    serverSide: true,
#    sAjaxSource: $('#companiesTable').data('source'),
#    columnDefs: [{
#      targets: 0,
#      data: 
#    }],
#    paging: false,
#    bInfo: false
#  });
# });

# $.ajax({
#  url: $('#companiesTable').data('source'),
#  dataType: 'json',
#  context: document.body
#  }).done(function(data) {
#    var companies_data = $.parseJSON(data);
#    console.log(data);
#    var company_names = function (data) {
#      data
#    }
# });
