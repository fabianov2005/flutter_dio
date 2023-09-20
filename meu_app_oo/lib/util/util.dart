import "dart:io";

void exibe_familia(List<String> lista) {
  print("----------------------------------------");
  print("Com For");
  print("----------------------------------------");
  for (String nome in lista) {
    print(nome);
  }

  print("----------------------------------------");
  print("Com forEach do Objeto");
  print("----------------------------------------");
  lista.forEach((element) {
    print(element);
  });
}

List<String> lerFamilia(List<String> lista) {
  lista.add(stdin.readLineSync().toString());
  if (lista.length != 5) {
    lerFamilia(lista);
  }
  return lista;
}

void lerValoresInteiros() {
  print("Entre com um valor numérico:");
  try {
    int? numero = int.parse(stdin.readLineSync()!);
  } catch (exception) {
    throw IOException;
  }
}

bool comparaArrays(List array1, List array2) {
  if (array1.length == array2.length) {
    return array1.every((value) => array2.contains(value));
  } else {
    return false;
  }
}

verifica_familia(minha_familia, elementos) => ({
      if (comparaArrays(minha_familia, elementos))
        {print("Showde Bola!!! Essa é minha família :))))))")}
      else
        {print("Tô fora !!! Essa família é estranha. Não conheço.")}
    });
