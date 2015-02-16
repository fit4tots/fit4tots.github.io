$ ->
  $(document).foundation()

  $nav = $('nav')

  hash = window.location.hash
  if hash?
    $target = $nav.find("[data-slide-to][href='#{hash}']")
    if $target.length > 0
      slideTo $target

  $nav.on 'click', '[data-slide-to]', (e) ->
    e.preventDefault()
    slideTo $(e.target)

  return

slideTo = ($target) ->
  top = $($target.attr('href')).offset().top

  if matchMedia(Foundation.media_queries['small-only']).matches
    top = top - 340
    top = 0 if top < 0
  else
    top = top - 100
    top = 0 if top < 0

  $('html, body').animate { scrollTop: top }, 'fast'

  $('nav').find('li').removeClass 'active'
  $target.closest('li').addClass 'active'
