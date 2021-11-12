function ponValor(nombre,valor,dias) {
  if(typeof(dias) == "undefined") dias = 7;
  // una semana por defecto
  var fecha = new Date;
  fecha.setTime(fecha.getTime() + dias * 24 * 3600000);
  var caduca = "; expires=" + fecha.toGMTString();
  galleta = nombre + "=" + valor + caduca;
  document.cookie = galleta;
}

function borraValor(nombre) {
  ponValor(nombre,"",-1);
}

function dameValor(nombre) {
  var ini = document.cookie.indexOf(nombre);
  if(ini == -1) return ""; // no existe ese valor
  var sep = document.cookie.indexOf("=", ini);
  var fin = document.cookie.indexOf(";", ini);
  if(fin == -1) // el último no acaba en ;
    fin = document.cookie.length;
  return document.cookie.substring(sep+1, fin);
}
