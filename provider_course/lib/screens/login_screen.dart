import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email"
                ),
              ),

              SizedBox(
                height: 10,
              ),

               TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password"
                ),
              ),
               SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  authProvider.login(emailController.text,passwordController.text);
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child:authProvider.loading ? CircularProgressIndicator(color: Colors.black,) : Text(
                      'Login',
                      style:   TextStyle(
                        color: Colors.black
                      ),
                      )
                  ),
                ),
              )


          ],
        ),
      ),
    );
  }
}