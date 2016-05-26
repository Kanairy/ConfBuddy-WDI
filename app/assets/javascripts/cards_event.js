// $(document).ready(function(){

  function showCards() {

    $.ajax({
      url: "http://127.0.0.1:3000/api/events"
    }).done(function(events){

      $.each(events, function(index, event){
        var template = $("#event-card-template").html();
        var templateFunction = Handlebars.compile(template);

        var html = templateFunction({
            eventName: event.name,
            id: event.id,
            eventPresenter: event.presenter ,
            eventTime: event.time,
            eventDescription: event.description,
            eventStream: event.stream,
            eventSponsor: event.sponsor,
            eventImg: event.image

          });

          var $newDiv = $(html);
          $('.row-test').append($newDiv);

          $('.modal-trigger').leanModal();



      });
    });
  }
