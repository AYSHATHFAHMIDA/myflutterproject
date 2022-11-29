import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home: HomePage(),));
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool viewenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('loginPage',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
             const Padding(
              padding:  EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.account_circle),
                label:  Text('UserName'),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.all((Radius.circular(20))),
                )
              ),
                textInputAction: TextInputAction.next,
              ),
            ),
             Padding(
              padding:  const EdgeInsets.all(15.0),
              child: TextField(
                obscuringCharacter: '*',
                obscureText: viewenable,
                decoration:  InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if(viewenable){
                            viewenable=false;
                          }
                          else{
                            viewenable=true;
                          }
                        });
                      },
                      icon: Icon(viewenable==true?Icons.visibility_off:Icons.visibility)),
                label: const Text('Password'),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

              ),textInputAction: TextInputAction.done,),
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){}, child: const Text("LOGIN")),
            ),
            TextButton(onPressed: (){}, child: const Text("NOt a user?Register Here!!!"))
          ],
        ),
      ),
    );
  }
}