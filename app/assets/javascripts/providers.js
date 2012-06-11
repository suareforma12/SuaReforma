// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var num_tasks = 0;

function add_task(){
  name_task  = $('#new_task').val();
  id_task    = 'task_'+num_tasks;

  content = "<input type='hidden' name='new_tasks[]' value='"+name_task+"' />";
  content += name_task;
  content += "<span class='link-excluir'>";
  content += "<a href='#' onclick=\"del_task('"+id_task+"');return false;\">excluir</a>";
  content += "</span>";
  $('<p>',{
    html : content,
    id   : id_task
  }).appendTo("#new_tasks");
  num_tasks++;
}
function del_task(id){
  id = '#'+id;
  $(id).remove();
}
