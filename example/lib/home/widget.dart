part of home;

class HomePageWidget extends OPWidget<HomePageCreator, HomePageComponent> {
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
          SizedBox(height: mediaQuery.size.height / 3),
          Column(
            children: [
              Text("这是一个计数器, 当前数值为: "),
              Text(
                "${watch<HomePageProvider>().counter}",
                style: TextStyle(
                  fontSize: 50,
                ),
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
