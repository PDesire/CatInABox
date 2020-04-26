

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TripContactWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TripContactWidgetState();

}

class TripContactWidgetState extends State<TripContactWidget>{
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentContactMethod;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentContactMethod = _dropDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Card(
     child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Du bietest eine Fahrt an. Wie möchtest du kontaktiert werden ?"),
                DropdownButton(
                  value: _currentContactMethod,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                ),
                getTextfieldWithInputType(),
                RaisedButton(
                  child: Text("auswählen"),
                  onPressed: ()=>{
                    Navigator.of(context).pop()
                  },
                )
              ]
          )
      ),
   );
  }

  void changedDropDownItem(String selectedValue) {
    setState(() {
      _currentContactMethod = selectedValue;
    });
  }


  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> list = new List();
    list.add(new DropdownMenuItem(
      child: Row(children: [Icon(Icons.phone, color: Colors.green,),Text("Telefon")],),
      value: "phone"
    ));
    list.add(new DropdownMenuItem(
      child: Row(children: [Icon(MaterialCommunityIcons.whatsapp, color:Colors.green),Text("WhatsApp")],),
      value: "whatsapp"
    ));
    list.add(new DropdownMenuItem(
      child: Row(children: [Icon(Icons.email, color: Colors.green),Text("E-Mail")],),
      value: "email"
    ));
    return list;
  }

  Widget getTextfieldWithInputType(){
    switch(_currentContactMethod){
      case "phone":
        return TextField(
          keyboardType: TextInputType.phone,
        );

      case "whatsapp":
        return TextField(
          keyboardType: TextInputType.phone,
        );
      case "email":
        return TextField(
          keyboardType: TextInputType.emailAddress,
        );
    }
  }

}