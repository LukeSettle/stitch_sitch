$ ->
  $(".up-vote").click (e) ->
    vote(1, e.currentTarget.dataset.id)
  $(".down-vote").click (e) ->
    vote(-1, e.currentTarget.dataset.id)

vote = (score, id) ->
  $.ajax({
    type: "POST",
    url: "/pictures/#{id}/vote",
    data: { score: score, id: id },
    success:(data) ->
      $("#score_#{id}").text(data.score)
    error:(data) ->
      alert 'failure'
  })
