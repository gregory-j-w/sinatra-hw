$.ajax({
  method: 'GET',
  url:'http://localhost:9393/comedy/json',
  success: function(response){
    console.log(response);
    $('#movie').text(response.title);
    for(i = 0; i < response.top_movies.length; i++){
      $('#movies').append('<li>'+ response.top_movies[i] + '</li>')
    }
  }
})

$('.link').click(function(e){
  e.preventDefault();
  var myUrl = $(e.target).attr('href')

  $.ajax({
    method: 'GET',
    url: myUrl,
    success: function(response){
      $('#movies').empty();
      $('#movie').text(response.name);
      for(i = 0; i < response.top_movies.length; i++){
        $('#movies').append('<li>'+ response.top_movies[i] + '</li>')
      }
    }
  })
})
