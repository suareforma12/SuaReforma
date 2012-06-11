// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var num_tasks = 0;

function add_task(){
  name_task  = $('#new_task').val();
  id_task    = 'task_'+num_tasks;

  content = "<li>";
  content += "<input type='hidden' name='new_tasks[]' value='"+name_task+"' />";
  content += "<p>"+name_task+"</p>";
  content += "<a href='javascript:void(0);' class='excluir' onclick=\"del_task('"+id_task+"');return false;\"> x excluir</a>";
  content += "</li>";
  $('<p>',{
    html : content,
    id   : id_task
  }).appendTo("#new_tasks ul");
  num_tasks++;
  $('#new_task').val('');
}
function del_task(id){
  id = '#'+id;
  $(id).remove();
}
