$ ->
  $select = $('form#contact_us select[name=subject]')

  if $select.length > 0
    subject = getQueryParam 'subject'

    if subject && subject.length > 0
      $select.children('option').removeAttr 'selected'
      try
        $select.children("option[value='#{subject}']").attr 'selected', true
      catch err
        # ignore

  return

getQueryParam = (param) ->
  regex = new RegExp("[?&]#{encodeURIComponent(param)}=([^&]*)")
  match = regex.exec(location.search)
  if match?
    decodeURIComponent(match[1])
  else
    null