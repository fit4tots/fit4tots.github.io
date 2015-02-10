$ ->
  $(document).foundation()

  $('[data-slide-to]').click (e) ->
    e.preventDefault()
    top = $($(this).attr('href')).offset().top

    if matchMedia(Foundation.media_queries['small']).matches
      top = top - 340
      top = 0 if top < 0

    $('html, body').animate { scrollTop: top }, 'fast'

  return
