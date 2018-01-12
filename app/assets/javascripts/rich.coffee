_number =
  delimiter: '.'
  separator: ','
  floatToString: (number, precision) ->
    precision = if typeof precision == 'undefined' then 2 else precision
    jQuery.number _number.round(number, precision), precision, _number.separator, _number.delimiter

  round: (num, precision=2) ->
    num       = _number.toFloat(num)
    precision = Math.pow(10, parseInt(precision) )
    Math.round(num*precision)/precision;

  toFloat: (val) ->
    try
      val = parseFloat(val)
      val = 0.0 if isNaN(val)
    catch e
      val = 0.0
    val

@Rich =
  Number: _number