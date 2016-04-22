$ ->
  $('.like').click (e) ->
    like(e.currentTarget.dataset.id)
    el = $(e.currentTarget)
    el.addClass('liked')

like = (id) ->
  $.ajax({
    type: "POST",
    url: "/likes",
    data: { picture_id: id },
    success:(data) ->
      $("#likes_#{id}").text(data)
  })
