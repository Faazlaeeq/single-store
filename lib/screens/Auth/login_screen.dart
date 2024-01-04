import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(padding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height(context) / 8),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo-black.png',
                    fit: BoxFit.contain,
                  )),
              SizedBox(height: height(context) / 9),
              Text(
                'Welcome!',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
              Text(
                'please login or sign up to continue our app',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(
                        Icons.check_circle,
                        color: MyColors.primaryColor,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(Icons.check_circle,
                          color: MyColors.primaryColor),
                    ),
                  ),
                  SizedBox(height: height(context) / 20),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: MyColors.secondaryColor,
                                  fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(padding / 2),
                    child: Row(children: <Widget>[
                      const Expanded(child: Divider()),
                      Text(
                        'Or',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const Expanded(child: Divider()),
                    ]),
                  ),
                  Text(
                    'Do you have an Account?\n',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),

                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text('Sign Up Now',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: MyColors.secondaryColor,
                                    fontWeight: FontWeight.w700))),
                  ),

                  // SizedBox(height: height(context) / 9),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
