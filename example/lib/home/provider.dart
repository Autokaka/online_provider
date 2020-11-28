part of home;

class HomePageProvider extends OPProvider<HomePageCreator> {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void incrementWithoutNotify() => counter++;

  void printProviderLifecycle(String lifecycle) {
    print("HomePageProvider -> $lifecycle");
  }

  @override
  void initState() {
    super.initState();
    printProviderLifecycle("initState");
    incrementWithoutNotify();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    printProviderLifecycle("didChangeDependencies");
    incrementWithoutNotify();
  }

  @override
  void didUpdateCreator(covariant HomePageCreator oldCreator) {
    super.didUpdateCreator(oldCreator);
    printProviderLifecycle("didUpdateCreator");
    incrementWithoutNotify();
  }

  @override
  void deactivate() {
    super.deactivate();
    printProviderLifecycle("deactivate");
  }

  @override
  void dispose() {
    printProviderLifecycle("dispose");
    super.dispose();
  }
}
