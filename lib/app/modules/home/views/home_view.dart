import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                  text: "Muhammad",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print("klik qr");
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset(
                "assets/icons/qrcode.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "081290112333",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset("assets/logo/simpati.png")
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 34,000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFF7B731),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(
                              color: Colors.black,
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Berlaku sampai",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: "19 April 2020",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Telkomsel POIN ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 1.4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "172",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: "Internet",
                            data: "12.9",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telpon",
                            data: "0",
                            satuan: "min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "23",
                            satuan: "sms",
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                Container(
                  height: 7,
                  color: Colors.grey[400],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemCategory(
                                    title: "Internet",
                                    icon: "browser",
                                  ),
                                  ItemCategory(
                                    title: "Telpon",
                                    icon: "phone",
                                  ),
                                  ItemCategory(
                                    title: "SMS",
                                    icon: "message",
                                  ),
                                  ItemCategory(
                                    title: "Roaming",
                                    icon: "plane",
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemCategory(
                                    title: "Hiburan",
                                    icon: "cinema",
                                  ),
                                  ItemCategory(
                                    title: "Unggulan",
                                    icon: "toprated",
                                  ),
                                  ItemCategory(
                                    title: "Tersimpan",
                                    icon: "saved",
                                  ),
                                  ItemCategory(
                                    title: "Riwayat",
                                    icon: "history",
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru dari telkomsel",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Lihat semua",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    NewestItem(
                                      image: "assets/banners/banner-1.png",
                                    ),
                                    NewestItem(
                                      image: "assets/banners/banner-2.png",
                                    ),
                                    NewestItem(
                                      image: "assets/banners/banner-1.png",
                                    ),
                                    NewestItem(
                                      image: "assets/banners/banner-2.png",
                                    ),
                                    NewestItem(
                                      image: "assets/banners/banner-1.png",
                                    ),
                                    NewestItem(
                                      image: "assets/banners/banner-2.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 5,
                          ),
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Color(0xFF747D8C),
                              ),
                            ),
                          ),
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                status: true,
                                title: "Beranda",
                                icon: "home",
                              ),
                              ItemNav(
                                status: false,
                                title: "Riwayat",
                                icon: "clock",
                              ),
                              ItemNav(
                                status: false,
                                title: "Bantuan",
                                icon: "help",
                              ),
                              ItemNav(
                                status: false,
                                title: "Inbox",
                                icon: "inbox",
                              ),
                              ItemNav(
                                status: false,
                                title: "Akun Saya",
                                icon: "account",
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
          )
        ],
      ),
    );
  }
}

class NewestItem extends StatelessWidget {
  const NewestItem({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: Get.width * 0.7,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key, required this.icon, required this.title})
      : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            "assets/icons/$icon.png",
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 25,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFE52D27) : Color(0xFF747D8C),
          ),
        )
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard(
      {Key? key, required this.title, required this.data, required this.satuan})
      : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: data,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEC2028),
                  ),
                  children: [
                    TextSpan(
                        text: " $satuan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF747D8C),
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width - 65, size.height);
    path.lineTo(size.width, size.height - 65);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
