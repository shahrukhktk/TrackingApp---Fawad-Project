import 'package:flutter/material.dart';
import 'constants.dart';

class Item
{
  const Item(this.recipename);
  final String recipename;
//  final Icon icon;
}

class DropDownClass extends StatefulWidget {
  @override
  _DropDownClassState createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  @override
  Widget build(BuildContext context) {

    var selected_recipe;

    List<Item> recipes = <Item>[
      const Item('Hospitality'),
      const Item('Hospitality 2'),
      const Item('Hospitality 3'),
      const Item('Hospitality 4'),
      const Item('Hospitality 5'),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        color: Colors.white,
      ),
      child: DropdownButtonFormField<Item>(
        hint:  Text("\t\t Category of worker \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t", style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.grey,
        ),
        ),
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        value: selected_recipe,
        onChanged: (Item Value) {
          setState(() {
            selected_recipe = Value;
          });
        },
        items: recipes.map((Item recipe) {
          return  DropdownMenuItem<Item>(
            value: recipe,
            child: Row(
              children: <Widget>[
                Text(
                  recipe.recipename,
                  style:  TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Waiters
{
  const Waiters(this.waitername);
  final String waitername;
//  final Icon icon;
}

class WaiterDropdown extends StatefulWidget {
  @override
  _WaiterDropdownState createState() => _WaiterDropdownState();
}

class _WaiterDropdownState extends State<WaiterDropdown> {
  @override
  Widget build(BuildContext context) {

    var selected_waiter;

    List<Waiters> waiters_list = <Waiters>[
      const Waiters('Waiter'),
      const Waiters('Waiter 2'),
      const Waiters('Waiter 3'),
      const Waiters('Waiter 4'),
      const Waiters('Waiter 5'),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        color: Colors.white,
      ),
      child: DropdownButtonFormField<Waiters>(
        hint:  Text("\t\t Position needed \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t", style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.grey,
        ),
        ),
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        value: selected_waiter,
        onChanged: (Waiters Value) {
          setState(() {
            selected_waiter = Value;
          });
        },
        items: waiters_list.map((Waiters waiter) {
          return  DropdownMenuItem<Waiters>(
            value: waiter,
            child: Row(
              children: <Widget>[
                Text(
                  waiter.waitername,
                  style:  TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

