import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'mainScreen.dart';
void main()=>runApp(MaterialApp(
  home: LoginWithValidation(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.pink),
));
class LoginWithValidation extends StatelessWidget{
  @override
  var formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
           const Padding(
             padding: EdgeInsets.only(top: 10.0),
             child: Center(child: Text("Login Page",style: TextStyle(fontSize: 30),)),
           ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'UserName',border: OutlineInputBorder(),
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
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  labelText: 'password',
                  suffixIcon: Icon(Icons.password),
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

              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                      final isValid=formkey.currentState!.validate();
                      if(isValid){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>mainScreen()));
                      }
                      else{
                        Fluttertoast.showToast(
                            msg: "incorrect username or password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                    child: const Text('Login'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}