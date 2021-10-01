import "package:flutter/material.dart";

/// Contains the navigation of the app
class Navigation extends StatelessWidget {
  final Widget? _child;

  Navigation(this._child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      appBar: AppBar(
        title: Image.asset("images/logo.png", fit: BoxFit.contain),
        toolbarHeight: 80,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[200],
                            foregroundImage: const NetworkImage(
                                "https://www.habbo.de/habbo-imaging/avatarimage?user=sunny_daniel&direction=3&head_direction=3&action=&size=m&headonly=1"),
                            radius: 30,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsetsDirectional.only(top: 15),
                          child: const Text(
                            "sunny_daniel",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(padding: EdgeInsets.zero, children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: "Search", border: OutlineInputBorder()),
                  )),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text("Favorites"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ])),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
