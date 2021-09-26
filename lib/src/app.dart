import "package:flutter/material.dart";
import "package:habbo_furniture/src/furni_list/furni_list_screen.dart";
import "package:vrouter/vrouter.dart";

/// Start Point
class HabboFurniture extends StatelessWidget {
  // ignore: public_member_api_docs
  const HabboFurniture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      routes: [
        VWidget(path: "/", widget: FurniListScreen())
      ],
      mode: VRouterMode.history,
      initialUrl: "/",
      debugShowCheckedModeBanner: false,
      restorationScopeId: "habbo.furniture",
      onGenerateTitle: (BuildContext context) => "Habbo.Furniture",
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      );
  }
}
