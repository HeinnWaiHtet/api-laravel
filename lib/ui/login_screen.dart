import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            SizedBox(height: 80,),

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [

                  SizedBox(height: 25,),

                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),

                  Center(
                    child: Text(
                      "Please Login!",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  )

                ],
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        SizedBox(height: 10,),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Form(
                                key: key,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 2, color: Colors.red),
                                        ),
                                      ),
                                      child: TextFormField(
                                        controller: emailController,
                                        validator: (value){
                                          if(value == null || value.isEmpty){
                                            return "Email Must Not Be Empty";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Enter Your Email",
                                          hintStyle: TextStyle(
                                            color: Colors.grey
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 2, color: Colors.red),
                                        ),
                                      ),
                                      child: TextFormField(
                                        controller: passwordController,
                                        validator: (value){
                                          if(value == null || value.isEmpty){
                                            return "Password Must Not Be Empty";
                                          }
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Enter Your Password",
                                          hintStyle: TextStyle(
                                            color: Colors.grey
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        obscureText: true,
                                        obscuringCharacter: "*",
                                      ),
                                    ),
                                  ],
                                )
                              ),

                              SizedBox(height: 40,),

                              TextButton(
                                onPressed: (){

                                },
                                child: Text(
                                  "Create New Account?",
                                  style : TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: OutlinedButton(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                    ),
                                  ),
                                  onPressed: (){
                                    if(key.currentState!.validate()){
                                      print(emailController.text);
                                    }
                                  }
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}