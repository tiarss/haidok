import 'package:flutter/material.dart';
import 'package:haidok/components/card.dart';
import 'package:haidok/main.dart';
import 'package:haidok/model/dummy_profile.dart';
import 'package:haidok/model/dummy_service_meds.dart';

class HomeScreenState extends State<HomeScreen> {
  final int currentPageIndex = 0;
  final ProfileData profile = profileDataList[0];
  final List<ServiceMeds> services = serviceData;

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.green[700],
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text('Sehat Selalu',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                  Text(profile.name,
                                      style: const TextStyle(
                                          fontSize: 32.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    Image.asset(profile.imgProfile).image,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                width: totalWidth * 0.25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)),
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Flex(
                                      direction: Axis.vertical,
                                      children: [
                                        const Text(
                                          'Riwayat',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          '${profile.history[0].value}',
                                          style: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          profile.history[0].title,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: totalWidth * 0.6,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(
                                        "Profile",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: profile.body.map((data) {
                                            return Column(
                                              children: [
                                                const SizedBox(height: 10),
                                                Text(
                                                  '${data.value}',
                                                  style: const TextStyle(
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  data.title,
                                                  style: const TextStyle(
                                                      fontSize: 12),
                                                )
                                              ],
                                            );
                                          }).toList()),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Layanan Kami",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 15),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: services.map((service) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    surfaceTintColor: Colors.blue[100],
                                    foregroundColor: Colors.blue[100],
                                    backgroundColor: Colors.blue[500],
                                    fixedSize: const Size.square(100),
                                    padding: const EdgeInsets.all(5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 50,
                                      child: Icon(
                                        service.icon,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                      child: Text(
                                        service.title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          height: 1.2,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Artikel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24),
                              textAlign: TextAlign.left,
                            ),
                            GestureDetector(
                              child: const Text("Semua Artikel"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LayoutScreen(page: 1)),
                                );
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Cards(maxArticle: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}
