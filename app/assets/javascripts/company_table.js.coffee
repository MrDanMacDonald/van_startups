jQuery ->
  $(document).ready ->
    $('#companiesTable').dataTable
      responsive: true,
      paging: false,
      bInfo: false,
      bfilter: false,
      "dom":' <"search_box"fl><"top">rt<"bottom"ip><"clear">'