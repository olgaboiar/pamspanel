$(document).ready(function(){
    $( ".modal-trigger" ).click(function() {
        console.log( "Handler for .click() called." );
        $('#student-edit-modal').modal('open');
      });
    $('.modal').modal();
    $('select').formSelect();
    $('.datepicker').datepicker();
    $('.dropdown-trigger').dropdown(
        {
            container: $('nav'),
            coverTrigger: false,
            hover: true,
          }
    );
    
});