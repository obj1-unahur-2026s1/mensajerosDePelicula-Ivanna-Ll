object puenteBroklyn {
  method permitePaso(objeto){
    return objeto.pesoTotal() <= 1000
  }
}

object matrix {
  method permitePaso(objeto) {
    return objeto.puedeHacerLLamada()
  }
}  