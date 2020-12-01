part of home;

class HomePageComponent extends OPComponent<HomePageCreator> {
  Widget buildText() => Text("这是Component的Text");

  Widget buildCreatorText() {
    return Text(
      "这是Component从Creator拿到的"
      "title: ${creator.title}",
    );
  }

  Widget buildProviderText() {
    return Text(
      "这是Provider从Creator拿到的"
      "title: ${context.watch<HomePageProvider>().creator.title}",
    );
  }
}
