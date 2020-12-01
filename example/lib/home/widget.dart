part of home;

class HomePageWidget extends OPWidget<HomePageCreator, HomePageComponent> {
  @override
  List<OPProvider> get bindContextProviders => bindLifecycleProviders;

  @override
  List<OPProvider> get bindLifecycleProviders {
    return [read<HomePageProvider>()];
  }

  void printWidgetLifecycle(String lifecycle) {
    print("HomePageWidget -> $lifecycle");
  }

  @override
  void initState() {
    super.initState();
    printWidgetLifecycle("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    printWidgetLifecycle("didChangeDependencies");
  }

  @override
  void didUpdateCreator(covariant HomePageCreator oldCreator) {
    super.didUpdateCreator(oldCreator);
    printWidgetLifecycle("didUpdateCreator");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(creator.title),
      ),
      body: ListView(
        children: [
          Text("这是Widget的视图"),
          component.buildText(),
          component.buildCreatorText(),
          component.buildProviderText(),
          SizedBox(height: mediaQuery.size.height / 4),
          Column(
            children: [
              Text("这是一个计数器, 当前数值为: "),
              SizedBox(height: 18),
              Text(
                "${watch<HomePageProvider>().counter}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 18),
              Text("这是一个全局计数器, 当前数值为: "),
              SizedBox(height: 18),
              Text(
                "${watch<GlobalProvider>().counter}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              TextButton(
                onPressed: watch<HomePageProvider>().launchRootPage,
                child: Text("再次打开一个RootPage"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: watch<HomePageProvider>().increment,
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    printWidgetLifecycle("deactivate");
  }

  @override
  void dispose() {
    printWidgetLifecycle("dispose");
    super.dispose();
  }
}
