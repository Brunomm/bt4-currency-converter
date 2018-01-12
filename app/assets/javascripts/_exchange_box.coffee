$(document).ready ->
  {floatToString} = Rich.Number
  _form =
    $form:                      $('#exchange_form')
    $selectCurrency:            $("select#currency")
    $selectCurrencyDestination: $("select#currency_destination")
    $inputQuantity:             $("input#quantity")
    $inputResult:               $("input#result")

  handleSubmitForm = =>
    $.ajax '/exchange',
      type: 'POST'
      dataType: 'json'
      data:
        quantity:             _form.$inputQuantity.val()
        currency:             _form.$selectCurrency.val()
        currency_destination: _form.$selectCurrencyDestination.val()
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        text = "#{_form.$selectCurrency.val()} #{floatToString(_form.$inputQuantity.val())} = "
        text += "#{_form.$selectCurrencyDestination.val()} #{floatToString(data.value)}"
        _form.$inputResult.val(text)
    false


  _form.$form.on 'submit', (event) ->
    event.preventDefault()
    handleSubmitForm()
    false

  _form.$selectCurrency.on 'change', ->
    handleSubmitForm()

  _form.$selectCurrencyDestination.on 'change', ->
    handleSubmitForm()

  _form.$inputQuantity.on 'input', ->
    if parseInt(_form.$inputQuantity.val()) > 0
      handleSubmitForm()
    else
      _form.$inputResult.val('')

  $('.btn-invert-currency').on 'click', ->
    origin = _form.$selectCurrency.val()
    _form.$selectCurrency.val(_form.$selectCurrencyDestination.val())
    _form.$selectCurrencyDestination.val(origin)
    handleSubmitForm()

  handleSubmitForm()