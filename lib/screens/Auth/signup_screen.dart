import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  bool checkValue = true;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                'Sign Up',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
              Text(
                'Create a new Account',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter your name',
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
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      labelText: 'Re-Password',
                      hintText: 'Enter your password again',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(Icons.check_circle,
                          color: MyColors.primaryColor),
                    ),
                  ),
                  SizedBox(height: height(context) / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: widget.checkValue,
                        // fillColor: MyColors.mPrimaryColor,
                        activeColor: MyColors.primaryColor,
                        checkColor: MyColors.secondaryColor,
                        onChanged: (bool? value) {
                          widget.checkValue = value!;
                          setState(() {});
                        },
                      ),
                      Expanded(
                        child: Text(
                          'By creating an account you have to agree with our term & conditions.',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height(context) / 30),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: MyColors.secondaryColor,
                                  fontWeight: FontWeight.w700)),
                    ),
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
