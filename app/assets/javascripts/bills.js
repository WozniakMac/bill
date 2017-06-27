// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
  $('#calls').datatable({
      pageSize: 5,
      pagingDivSelector: '#paging-calls',
      sort: '*',
      filterText: 'Type to filter... '
  });
});

$(function() {
  $('#store').datatable({
      pageSize: 5,
      pagingDivSelector: '#paging-store',
      sort: '*',
      filterText: 'Type to filter... '
  });
});

$(function() {
  $('#subs').datatable({
      pageSize: 5,
      pagingDivSelector: '#paging-subs',
      sort: '*',
      filterText: 'Type to filter... '
  });
});
