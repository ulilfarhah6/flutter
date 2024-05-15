import 'package:flutter/material.dart';
import 'package:projek_akhir/components/under_part.dart';
import 'package:projek_akhir/components/upside.dart';
import 'package:projek_akhir/components/page_title_bar.dart';
import 'package:projek_akhir/constants.dart';
import 'package:projek_akhir/screens/login_screen.dart';
import 'package:projek_akhir/widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Upside(
                  imgUrl: "assets/images/register.png",
                ),
                PageTitleBar(title: 'Buat akun baru'),
                Padding(
                  padding: EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        iconButton(context),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Atau buat dengan email",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Form(
                          child: Column(
                            children: [
                              RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                              RoundedInputField(
                                  hintText: "Nama", icon: Icons.person),
                              RoundedPasswordField(),
                              RoundedButton(text: 'REGISTER', press: () {}),
                              SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                  title: "Already have an account?",
                                  navigatorText: "Login here",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                  }),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

switchListTile() {
  return Padding(
    padding: EdgeInsets.only(left: 50, right: 40),
    child: SwitchListTile(
      dense: true,
      title: Text(
        'Remember me',
        style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
      ),
      value: true,
      activeColor: kPrimaryColor,
      onChanged: (val) {},
    ),
  );
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/twitter.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}
