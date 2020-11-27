part of home;

class HomePageComponent extends OPComponent<HomePageCreator> {
  Widget buildText() => Text("这是Component的Text");

  Widget buildCreatorText() => Text("这是Component从Creator拿到的"
      "title: ${creator.title}");
}
