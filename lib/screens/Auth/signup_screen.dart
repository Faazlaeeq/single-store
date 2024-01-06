import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/border_test_widget.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  bool checkValue = true;
  bool hidepassword = true;
  bool hiderepassword = true;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              SizedBox(height: height(context) / 9),
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.left,
              ),
              Text(
                'Create a new Account',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Form(
                  child: Column(
                children: [
                  const SizedBox(height: 17),

                  TextFormField(
                      decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'Enter your name',
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
                  )),
                  const SizedBox(height: 17),

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
                    obscureText: widget.hidepassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
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
                      suffix: SizedBox(
                        height: 30,
                        width: 30,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.hidepassword = !widget.hidepassword;
                              });
                            },
                            icon: const ImageIcon(
                                AssetImage("assets/icons/hide_password.png"),
                                color: MyColors.primaryColor,
                                size: 13)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 17),

                  TextFormField(
                    obscureText: widget.hiderepassword,
                    decoration: InputDecoration(
                      labelText: 'Re-Password',
                      hintText: 'Enter your password again',
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
                      suffix: SizedBox(
                        height: 30,
                        width: 30,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.hiderepassword = !widget.hiderepassword;
                              });
                            },
                            icon: const ImageIcon(
                                AssetImage("assets/icons/hide_password.png"),
                                color: MyColors.primaryColor,
                                size: 13)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          side:
                              const BorderSide(color: MyColors.accentColorDark),
                          visualDensity: VisualDensity.compact,
                          value: widget.checkValue,

                          // fillColor: MyColors.mPrimaryColor,
                          activeColor: MyColors.primaryColor,
                          checkColor: MyColors.secondaryColor,
                          onChanged: (bool? value) {
                            widget.checkValue = value!;
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
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
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RoutesManager.authSuccessfull);
                      },
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
