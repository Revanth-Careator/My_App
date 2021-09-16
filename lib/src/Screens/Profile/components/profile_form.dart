import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  static const routerName = '/updateform';
  const ProfileForm({Key? key}) : super(key: key);

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  var name = "";
  var email = "";
  var phone = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Update Profile Details'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name',
                      hintText: 'Enter Name',
                      suffixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter Email',
                        suffixIcon: Icon(Icons.email)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone No',
                        hintText: 'Enter Phone No',
                        suffixIcon: Icon(Icons.phone)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Phone No';
                      }
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: const Text('Update'),
                  onPressed: () {
                    setState(() {
                      name = nameController.text;
                      email = emailController.text;
                      phone = phoneController.text;
                    });
                    // ignore: avoid_print
                    print(nameController.text);
                    // ignore: avoid_print
                    print(emailController.text);
                    // ignore: avoid_print
                    print(phoneController.text);
                  },
                ),
                Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(25),
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(
                      email,
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(
                      phone,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                )
              ],
            )));
  }
}
