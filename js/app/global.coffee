$ ->
  $doc = $(document)

  $doc.foundation()

  $doc.on 'replace', 'img', ->
    $doc.foundation 'equalizer', 'reflow'

  $('form[data-abide]').on 'invalid.fndtn.abide', ->
    $(this).find('input[type=submit], button').filter(':focus').blur()

  return
