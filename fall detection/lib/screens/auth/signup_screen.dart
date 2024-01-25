import 'package:fall_detection_app/constants/constants.dart';
import 'package:fall_detection_app/screens/homepage/homepage.dart';
import 'package:fall_detection_app/widgets/elevated_button_widget.dart';
import 'package:fall_detection_app/widgets/text_button_widget.dart';
import 'package:fall_detection_app/widgets/text_feild_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/register_container.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              RegisterContainer(size: size),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _key,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        //this textfeild for the email
                        TextFormFieldWidget(
                          Controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !value.contains('@') ||
                                !value.contains('.')) {
                              return ('You must enter your email');
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          text: "Email",
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //this textfeild for the password
                        TextFormFieldWidget(
                          Controller: _passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return ('You must enter your password');
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          text: "Password",
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //this textfeild for the name
                        TextFormFieldWidget(
                          Controller: _nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ('You must enter your name');
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.name,
                          text: "Name",
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //this textfeild for the gender
                        TextFormFieldWidget(
                          Controller: _genderController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ('You must enter your the gender');
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          text: "Gender",
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //this textfeild for the phone
                        TextFormFieldWidget(
                          Controller: _phoneController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 11) {
                              return ('You must enter your the phone');
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.phone,
                          text: "Phone",
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButtonWidget(
                          text: "Get Started",
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              print('valid');
                            } else {
                              print('not valid');
                            }
                            Navigator.pushNamed(context, homepageView.id);
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.3,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
