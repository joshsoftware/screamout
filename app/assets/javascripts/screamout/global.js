loadTags = function(){
$('.search-query').on('change', function(e) {
  var selected_vals = $.map($('.search-query').select2('data'), function(e, i){return e.text}).join(',')
  $('#content_tags').val(selected_vals);
});
$('div.container').on('click', 'a.select2-choice', function(e) {
   
});
};

function filterInit(){
  var template = $("#template").html(); //got template
  var view = function(conc){
    conc.tags = conc.tags_array.join(',')
    if(current_user == conc.user_id || current_user_role == 'Admin' || current_user_role == 'Super Admin')
      conc.valid_user = true;
    else if(current_user == "")
      conc.valid_user = true;
    else
      conc.valid_user = false;
    return Mustache.render(template, conc);
  }

  var afterFilter = function(result){
    if(result.length == 0){
      $('.fjs-ele').css('display', 'block');
    }
  }

  var settings = {
    template: '#template',
    view: view,
    criterias: [{
      field: 'tags_array',
      ele: '#content_tags',
      event: 'change',
      selector: 'input',
    }],
    callbacks: {
      afterFilter: afterFilter
    },
    pagination: {
      container: '#contents_pagination',
      visiblePages: 5,
      perPage: {
        values: [20],
        container: '#contents_per_page',
      }
    }
  }
  return FilterJS(conc, "#content_list", settings)
}
