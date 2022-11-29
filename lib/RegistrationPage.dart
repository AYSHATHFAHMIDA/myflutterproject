import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'mainScreen.dart';
void main(){
  runApp(MaterialApp(home: RegPage(),debugShowCheckedModeBanner: false,));
}
class RegPage extends StatelessWidget{
  var formkey=GlobalKey<FormState>();
  TextEditingController pass=TextEditingController();
  TextEditingController Cpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(child: Text("Registration Page",style: TextStyle(fontSize: 30),)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.account_circle),
                ),
                validator: (text){
                  if(text!.isEmpty || !(text.contains('@'))){
                    return 'Enter a valid email address';
                  }
                  else{
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: pass,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  labelText: 'password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if(text!.isEmpty || text.length<6){
                    return 'Password should contail atleast 6 charecter';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: Cpass,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if(text!.isEmpty || text.length<6 ||pass.text!=Cpass.text){
                    return 'Password should be same';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),

              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    final isValid=formkey.currentState!.validate();
                    if(isValid){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('registration successfull!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                        ),
                      );
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>mainScreen()));
                    }
                    else{
                      Fluttertoast.showToast(
                          msg: "incorrect username or password",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 2,
                          webBgColor: "linear-gradient(to right, #ffffff, #ffffff)",
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text('Register'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}