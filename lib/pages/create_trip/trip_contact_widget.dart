

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TripContactWidget extends StatefulWidget {
  TripContactMethodCallback onContactSelected;

  TripContactWidget({this.onContactSelected}):
      assert (onContactSelected != null);

  @override
  State<StatefulWidget> createState() => TripContactWidgetState();

}

class TripContactWidgetState extends State<TripContactWidget> {
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentContactMethod;
  String _contactData;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentContactMethod = _dropDownMenuItems[0].value;
    _contactData ="";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "You're offering a trip. How do you want to be contacted ?",
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7),
                ),
                DropdownButton(
                  value: _currentContactMethod,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                ),
                getTextfieldWithInputType(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7),
                ),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: Text("Select"),
                  onPressed: (){
                    widget.onContactSelected(_currentContactMethod, _contactData);

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

  void changedContactData(String contactData) {
    setState(() {
      _contactData = contactData;
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
          onChanged: changedContactData,
        );

      case "whatsapp":
        return TextField(
          keyboardType: TextInputType.phone,
          onChanged: changedContactData,
        );
      case "email":
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: changedContactData,
        );
    }
  }

}

typedef TripContactMethodCallback = void Function(String contactMethod, String contactData);
