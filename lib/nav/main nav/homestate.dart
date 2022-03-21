import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const namaRoute = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text("Menu App"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 46,
            ),
            height: size.height * 0.28,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26)),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/menulist');
                  },
                  child: Container(
                    height: 70,
                    width: 330,
                    child: Column(
                      children: [
                        Icon(
                          Icons.camera_alt,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Gunakan kamera untuk\nSCAN BARCODE",
                          style: TextStyle(color: Colors.blue),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
              ),
              Text(
                "atau",
                style: TextStyle(color: Colors.white.withOpacity(0.6)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.blue.withOpacity(0.23))
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Colors.blue.withOpacity(0.5),
                                fontWeight: FontWeight.w500),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.blue.withOpacity(0.5),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
