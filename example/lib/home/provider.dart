part of home;

class HomePageProvider extends OPProvider<HomePageCreator> {
  int counter = 0;

  void increment() {
    counter++;
    read<GlobalProvider>().increment();
    notifyListeners();
  }

  void launchRootPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RootPageCreator().build(),
      ),
    );
  }

  void incrementWithoutNotify() => counter++;

  void printProviderLifecycle(String lifecycle) {
    print("HomePageProvider -> $lifecycle");
  }

  @override
  void initState() {
    super.initState();
    printProviderLifecycle("initState");
    print("HomePageCreator.title -> ${creator.title}");
    print("context -> $context");
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
