import 'package:rpg_baser/constants.dart';
import 'package:flutter/material.dart';
import 'package:rpg_baser/action_buttons.dart';

class SignUpWidget extends StatefulWidget {


  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.height > 770 ? 64 : size.height > 670 ? 32 : 16),
      child: Center(
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(70),
            )
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: size.height * (size.height > 770 ? 0.7 : size.height > 670 ? 0.8 : 0.9),
              width:  500,
              color: Colors.white,
              child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700]
                          ),),
                          
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 60,
                            child: Divider(
                              color: kPrimaryColor,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              labelText: "Username",
                              suffixIcon: Icon(
                                Icons.account_circle_outlined
                              )
                            ),
                          ),

                          SizedBox(
                            height: 14,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "E-mail",
                              labelText: "E-mail",
                              suffixIcon: Icon(
                                Icons.lock_outline_rounded
                              )
                            ),
                          ),
                          
                          SizedBox(
                            height: 14,
                          ),
                          
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Código Alpha",
                              labelText: "Código Alpha",
                              suffixIcon: Icon(
                                Icons.all_inclusive_rounded
                              )
                            ),
                          ),

                          SizedBox(
                            height: 14,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Senha",
                              labelText: "Senha",
                              suffixIcon: Icon(
                                Icons.lock_outline_rounded
                              )
                            ),
                          ),

                          SizedBox(
                            height: 20,
                            ),
                            actionBtn('Sign in'),

                          SizedBox(
                            height: 20,
                          ),

                          
                               Column(children: [
                                Text('Voltar',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 20
                                  ),),
                                Icon(Icons.arrow_back,
                                size: 20,
                                color: kPrimaryColor,),
                                
                                
                                ]
                                
                              )

                        ],
                      ),
                      
                      )
                  ),




                          

              ),
            ),
          ),

        ),
      ),
      
    );
  }
}