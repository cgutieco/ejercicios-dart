void main() {
  String mensaje = "        Java es    mejor en Cibertec   ";

  listado(mensaje);
}

void listado(String texto) {
  print("Ingreso de texto validado   : $texto");
  print("Longitud del texto validado : ${texto.length}");
  print("Primer caracter             : ${texto.trim()[0]}");
  print("Último caracter             : ${texto.trim()[texto.trim().length - 1]}\n");
  print("Texto ajustado              : ${ajustarEspacios(texto)}");
  print("Longitud del texto ajustado : ${ajustarEspacios(texto).length}");
  print("Cantidad de palabras        : ${ajustarEspacios(texto).split(" ").length}");
  print("Texto en minúsculas         : ${ajustarEspacios(texto).toLowerCase()}");
  print("Texto en mayúsculas         : ${ajustarEspacios(texto).toUpperCase()}");
  print("Espacios por guiones        : ${ajustarEspacios(texto).replaceAll(" ", "-")}");
  print("Posición del primer espacio : ${ajustarEspacios(texto).indexOf(" ")}");
  print("Primera palabra             : ${ajustarEspacios(texto).split(" ")[0]}");
  print("Posición del último espacio : ${ajustarEspacios(texto).lastIndexOf(" ")}");
  print("Última palabra              : ${ajustarEspacios(texto).split(" ").last}");
}

String ajustarEspacios(String texto) {
  String textoAjustado = texto.trim().replaceAll(RegExp(r'\s+'), ' ');
  return textoAjustado;
}