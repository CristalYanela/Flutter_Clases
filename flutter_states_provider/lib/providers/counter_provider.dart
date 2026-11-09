import 'package:flutter/material.dart';

//ChangeNotifier: permite notificar a los widgets cuando el estado cambie
//La clase ChangeNotifier utiliza el patron: Observer 
//with: mixins
//class CounterProvider extends ChangeNotifier{ 
class CounterProvider with ChangeNotifier{
  //variable con contiene el estado
  int _counter = 0;

  //int _doubleCounter = 2;

  //variable que guarda de cuanto en cuanto se incrementa/decrementa (1 o 2)
  int _step = 1;

  //propiedad de lectura
  /*int get counter {
    return _counter;
  }*/
  //lo mismo que aca arriba
  int get counter => _counter;

  int get step => _step;

  //propiedad de escritura
  /*set counter(int value){
    _counter = value;
  }*/

  //cambia el paso (1 o 2)
  void setStep(int value){
    _step = value;
    notifyListeners();
  }

  void increment(){
    _counter += _step;

    //este metodo permite que el widget que tenga el metodo: context.watch()
    //se actualice cuando el proveedor notifica a sus oyentes(listeners), por 
    //ejemplo esto hace la llamada al metodo: notifyListeners() que el estado
    // de la informacion que administra se ha cambiado
    notifyListeners();
  }

  void reset(){
    _counter = 0;
    notifyListeners();
  }

  void decrement(){
    //no permite bajar de 0
    if(_counter - _step >= 0){
      _counter -= _step;
    } else {
      _counter = 0;
    }
    notifyListeners();
  }
}