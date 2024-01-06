import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(padding3),
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
              SizedBox(height: height(context) / 15),
              Text(
                'Welcome!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.left,
              ),
              Text(
                'please login or sign up to continue our app',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 66),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      border: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: MyColors.accentColorDark)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: MyColors.accentColorDark)),
                      suffix: const Icon(Icons.check_circle,
                          color: MyColors.primaryColor, size: 13),
                    ),
                  ),
                  const SizedBox(height: 17),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      labelStyle: Theme.of(context).textTheme.titleMedium,
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      border: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: MyColors.accentColorDark)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: MyColors.accentColorDark)),
                      suffix: const Icon(Icons.check_circle,
                          color: MyColors.primaryColor, size: 13),
                    ),
                  ),
                  const SizedBox(height: 17),
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
                    padding: const EdgeInsets.all(padding2),
                    child: Row(children: <Widget>[
                      const Expanded(
                          child: Divider(
                        color: MyColors.accentColorDark,
                      )),
                      Text(
                        ' Or ',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const Expanded(
                          child: Divider(
                        color: MyColors.accentColorDark,
                      )),
                    ]),
                  ),
                  Text(
                    'Don\'t have an Account?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 10),
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
