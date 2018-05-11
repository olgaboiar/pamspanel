$(document).ready(function(){
    $('.modal').modal();
    $('.datepicker').datepicker();
    $('.dropdown-trigger').dropdown(
        {
            container: $('nav'),
            coverTrigger: false,
            hover: true,
          }
    );
    
});