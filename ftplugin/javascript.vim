function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
endfunction

" HTML5 canvas
syntax keyword jsHtmlEvents      fillStyle strokeStyle shadowColor shadowBlur shadowOffsetX shadowOffsetY createLinearGradient createPattern createRadialGradient addColorStop lineCap lineJoin lineWidth miterLimit rect fillRect strokeRect clearRect fill stroke beginPath moveTo closePath lineTo clip quadraticCurveTo bezierCurveTo arc arcTo isPointInPath scale rotate translate transform setTransform fillText strokeText measureText drawImage createImageData getImageData putImageData getContext

" DOM API
syntax keyword jsHtmlEvents      createEvent createElement createTextNode getElementsByClassName getElementsByTagName getElementById

syntax match jsOperator '>=' conceal cchar=≥
syntax match jsOperator '<=' conceal cchar=≤
syntax match jsOperator '==' conceal cchar=≡
syntax match jsOperator '||' conceal cchar=∥
syntax match jsOperator '*' conceal cchar=∗
