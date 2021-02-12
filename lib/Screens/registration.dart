import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController middleNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController contactController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController horoscope = new TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Map> horoscopes = [
      {"horoname": "Aries"},
      {"horoname": "Taurus"},
      {"horoname": "Taurus"},
      {"horoname": "Gemini"},
      {"horoname": "Cancer"},
      {"horoname": "Leo"},
      {"horoname": "Virgo"},
      {"horoname": "Libra"},
      {"horoname": "Scorpio"},
      {"horoname": "Sagittarius"},
      {"horoname": "Capricorn"},
      {"horoname": "Aquarius"},
      {"horoname": "Pisces"}
    ];

    final firstNametextfield = TextFormField(
      controller: firstNameController,
      decoration: InputDecoration(
          labelText: "First Name",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final middleNametextfield = TextFormField(
      controller: middleNameController,
      decoration: InputDecoration(
          labelText: "Middle Name",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final lastNametextfield = TextFormField(
      controller: lastNameController,
      decoration: InputDecoration(
          labelText: "Last Name",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final contacttextfield = TextFormField(
      controller: contactController,
      decoration: InputDecoration(
          labelText: "Contact",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final emailtextfield = TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final agetextfield = TextFormField(
      controller: ageController,
      decoration: InputDecoration(
          labelText: "Age",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );

    final addresstextfield = TextFormField(
      controller: addressController,
      decoration: InputDecoration(
          labelText: "Addres",
          labelStyle: TextStyle(
            fontSize: height * 0.02,
            color: Color.fromRGBO(237, 47, 91, 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(237, 47, 91, 1)),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );
    return Padding(
      padding: EdgeInsets.only(top: height * 0.035),
      child: SingleChildScrollView(
        child: Container(
          height: height * 0.9,
          child: Form(
            key: formKey,
            child: Card(),
          ),
        ),
      ),
    );
  }
}
