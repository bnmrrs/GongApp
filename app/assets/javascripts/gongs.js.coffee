$ ->

  onVote = (vote, $voteEl) ->
    gong = vote.gong

    $voteEl.parent().html('| Voted!')
    $('.vote_count').text(gong.vote_count)

    $('body').removeClass('threshold_exceeded')
    window.gong = gong
    $('body').addClass('threshold_exceeded') if gong.vote_count >= gong.threshhold


  $( '.vote' ).click (e) ->
    $voteEl = $(@)
    $voteEl.off('click')
    $.ajax
      type: "POST"
      url: $voteEl.attr('href')
      dataType: 'json'
      success: (data) -> onVote(data, $voteEl)
    e.preventDefault()
