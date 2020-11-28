part of home;

class HomePageProvider extends OPProvider<HomePageCreator> {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void printProviderLifecycle(String lifecycle) {
    print("HomePageProvider -> $lifecycle");
  }

  @override
  FutureOr<void> initState() async {
    await super.initState();
    printProviderLifecycle("initState");
  }

  @override
  FutureOr<void> didChangeDependencies() async {
    await super.didChangeDependencies();
    printProviderLifecycle("didChangeDependencies");
  }

  @override
  FutureOr<void> didUpdateCreator(covariant HomePageCreator oldCreator) async {
    await super.didUpdateCreator(oldCreator);
    printProviderLifecycle("didUpdateCreator");
  }

  @override
  FutureOr<void> deactivate() async {
    await super.deactivate();
    printProviderLifecycle("deactivate");
  }

  @override
  FutureOr<void> dispose() async {
    printProviderLifecycle("dispose");
    await super.dispose();
  }
}
