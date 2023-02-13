import 'package:flutter/material.dart';
import 'package:mylogin/signIn.dart';
main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 40),
              child: Text("Welcome\nBack",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:40,vertical: 10 ),
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))

                ),
                child :Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign In",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 45),),
                    SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",

                      ),
                    ),
                    SizedBox(height: 15,),
                    TextField(
                      obscureText: hide,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon:IconButton(onPressed:(){setState(() {
                            hide= !hide;
                          });

                          },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){},child: Text("Forget?"),),
                    ),
                    Center(
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
                          ),
                          onPressed: () {}, child: Text("Sign in")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("Don't have an account"),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpPage()));
                        },child: Text("Sign Up?"),)
                      ]

                    )

                  ],
                ),

              ),
            )
          ],
        )
    );
  }
}




