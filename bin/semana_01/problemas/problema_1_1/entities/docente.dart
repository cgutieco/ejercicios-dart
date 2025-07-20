class Docente {
  int codigo;
  String nombre;
  int horasTrabajadas;
  double tarifaHoraria;

  Docente(this.codigo, this.nombre, this.horasTrabajadas, this.tarifaHoraria);

  double obtenerSueldoBruto() {
    return horasTrabajadas * tarifaHoraria;
  }

  double obtenerDescuento() {
    double sueldoBruto = obtenerSueldoBruto();
    if (sueldoBruto < 4500)
      return sueldoBruto * 0.12;
    else if (sueldoBruto >= 4599 && sueldoBruto < 6500)
      return sueldoBruto * 0.14;
    else
      return sueldoBruto * 0.16;
  }

  double obtenerSueldoNeto() {
    return obtenerSueldoBruto() - obtenerDescuento();
  }
}
