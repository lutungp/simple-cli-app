import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_cli_app/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "Silahkan masuk dengan nomor Telkomsel kamu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Nomor HP",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: controller.phoneController,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Cth. 08129011xxxx"),
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.privacyAgreementCheck.value,
                    onChanged: (value) =>
                        controller.privacyAgreementCheck.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Saya menyetujui ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "syarat",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("klik syarat");
                              },
                            style: TextStyle(color: Colors.red),
                          ),
                          TextSpan(
                            text: ", ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "ketentuan",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("klik ketentuan");
                              },
                            style: TextStyle(color: Colors.red),
                          ),
                          TextSpan(
                            text: ", dan ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                              text: "privasi",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("klik privasi");
                                },
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                  text: " Telkomsel",
                                  style: TextStyle(color: Colors.black),
                                )
                              ])
                        ]),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Masuk",
                style: TextStyle(color: Color.fromARGB(255, 111, 109, 109)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFE4E5EA),
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Atau masuk menggunakan"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      SizedBox(width: 7),
                      Text("Facebook",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF3B5998),
                          )),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/twitter.png"),
                      SizedBox(width: 7),
                      Text("Twitter",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1DA1F2),
                          )),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
