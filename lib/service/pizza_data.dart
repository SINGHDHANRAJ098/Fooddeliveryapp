import 'package:flutter/cupertino.dart';
import 'package:packagedeliveryapp/model/pizza_model.dart';

List<PizzaModel>getPizza(){
  List<PizzaModel>pizza=[];
  PizzaModel pizzaModel=new PizzaModel();

  pizzaModel.name="Cheese Pizza";
  pizzaModel.image="images/pizza1.png";
  pizzaModel.price="50";
  pizza.add(pizzaModel);
  pizzaModel= new PizzaModel();

  pizzaModel.name=" onion Pizza";
  pizzaModel.image="images/pizza2.png";
  pizzaModel.price="60";
  pizza.add(pizzaModel);
  pizzaModel= new PizzaModel();

  pizzaModel.name=" Margherita Pizza";
  pizzaModel.image="images/pizza3.png";
  pizzaModel.price="65";
  pizza.add(pizzaModel);
  pizzaModel= new PizzaModel();

  pizzaModel.name=" Tandoori Pizza";
  pizzaModel.image="images/pizza4.png";
  pizzaModel.price="65";
  pizza.add(pizzaModel);
  pizzaModel= new PizzaModel();
  return pizza;
}
