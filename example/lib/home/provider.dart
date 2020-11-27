part of home;

class HomePageProvider extends OPProvider {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
