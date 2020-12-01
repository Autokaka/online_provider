part of root;

class RootPageWidget
    extends OPWidget<RootPageCreator, OPComponent<RootPageCreator>> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RootPage"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomePageCreator(title: "HomePage").build();
              },
            ),
          ),
          child: Text("打开HomePage"),
        ),
      ),
    );
  }
}
