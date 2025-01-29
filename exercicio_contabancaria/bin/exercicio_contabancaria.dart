import 'package:exercicio_contabancaria/exercicio_contabancaria.dart' as exercicio_contabancaria;

class Contabancaria {
  String titulo = '';
  double _saldo = 0;


Contabancaria(this.titulo,this._saldo);

void mostrar (){
  print("Titular: $titulo  saldo $_saldo");
}

void depositar(double valor){
 if(valor>0){
_saldo = valor+ _saldo;
print("Deposito realizado com sucesso");
 }else {
  print ("Valor insulficiente");
 }
}

void sacar(double valor){
  if (_saldo >= valor){
    _saldo = _saldo - valor;

    print("Saque realizado com sucesso");
  } else {
    print("Saldo insulficiente");
  }
}

 double get saldo => this._saldo;

 set saldo(double value) => this._saldo = value;
}

void main(List<String> arguments) {
 Contabancaria  a = Contabancaria('aaaa', 120);
double saldo = a._saldo; 
 a.mostrar();
a.depositar(120);



print("Deposito realizado com sucesso, seu saldo ${saldo}");

a.mostrar();

a.sacar(120);

a.mostrar();

}
