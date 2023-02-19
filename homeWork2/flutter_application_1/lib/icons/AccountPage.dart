import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add_alt,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "+ ism kiritish",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 51,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/11.jpg"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "@asadbek_bekchanov",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "0",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        "Kuzatilmoqda",
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        "999.9k",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        "Kuzatuvchilar",
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        "999.9k",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        "Layk",
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 180,
                  height: 50,
                  child: Container(
                    color: Colors.white,
                    width: 21,
                    height: 20,
                    child: const Center(
                      child: Text(
                        "Profilni tahrirlash",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.black26,
                  width: 80,
                  height: 20,
                  child: const Center(
                    child: Text(
                      "+ Tasif kiritish",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.save_alt,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.heart_broken,
                    color: Colors.black,
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: Image(
                          image: AssetImage("assets/images/13.png"),
                        ),
                      ),
                      Text(
                        "Retro surat ulashing",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Yuklash",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
