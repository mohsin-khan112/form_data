
import 'package:flutter/material.dart';
import 'package:form_data_ui/util/validation/validation.dart';
import 'package:form_data_ui/util/widget/field_label.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FieldAndLabel(
                  validator:nameValidation,
                  /*(value) {
                    if (value!.isEmpty) {
                      return "Please Enter Name ";
                    } else if (value.toString().length < 5) {
                      return "Please atleast 5  length";
                    } else {
                      return null;
                    }
                  },*/

                  textEditingController: nameController,
                  hintText: "Enter name",
                  fillColor: Colors.transparent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  maxLines: 1,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                  prefixIcon: const Icon(Icons.perm_identity),
                  /* prefixWidget: Icon(Icons.ac_unit,color: Colors.blue,),*/
                  suffixIcon: const Icon(Icons.person),
                  /*suffixWidget: Icon(Icons.g_mobiledata),*/
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FieldAndLabel(
                  validator: locationValidation,
                  textEditingController: nameController,
                  hintText: "Enter Address",
                  fillColor: Colors.transparent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  maxLines: 1,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                  prefixIcon: const Icon(Icons.location_city),
                  /* prefixWidget: Icon(Icons.ac_unit,color: Colors.blue,),*/
                  suffixIcon: const Icon(Icons.location_on),
                  /*suffixWidget: Icon(Icons.g_mobiledata),*/
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FieldAndLabel(
                  validator:validateEmail,
                  textEditingController:emailController,
                  hintText: "Enter Email",
                  fillColor: Colors.transparent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  maxLines: 1,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                  prefixIcon: const Icon(Icons.email),
                  /* prefixWidget: Icon(Icons.ac_unit,color: Colors.blue,),*/
                  suffixIcon: const Icon(Icons.attach_email_outlined),
                  /*suffixWidget: Icon(Icons.g_mobiledata),*/
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FieldAndLabel(
                  validator:jobTitleValidation,
                  textEditingController:jobTitleController,
                  hintText: "Enter designation",
                  fillColor: Colors.transparent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  maxLines: 1,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                  prefixIcon: const Icon(Icons.home_repair_service),
                  /* prefixWidget: Icon(Icons.ac_unit,color: Colors.blue,),*/
                  suffixIcon: const Icon(Icons.work),
                  /*suffixWidget: Icon(Icons.g_mobiledata),*/
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FieldAndLabel(
                  validator:validateCompanyName,
                  textEditingController:companyNameController,
                  hintText: "Enter company name",
                  fillColor: Colors.transparent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  maxLines: 1,
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 18),
                  prefixIcon: const Icon(Icons.house_sharp),
                  /* prefixWidget: Icon(Icons.ac_unit,color: Colors.blue,),*/
                  suffixIcon: const Icon(Icons.warehouse_outlined),
                  /*suffixWidget: Icon(Icons.g_mobiledata),*/
                ),
              ),
              const SizedBox(height: 30,),


              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print("inside the value check ");
                    }
                  },
                  child: const Text("Add Details"))
            ],
          ),
        ),
      ),
    );
  }
}







