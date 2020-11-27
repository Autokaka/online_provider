part of online_provider;

class OPCreator extends StatefulWidget {
  const OPCreator({Key key}) : super(key: key);

  Widget build() {
    var providers = createProviders();
    if (providers.isEmpty) return this;
    return MultiProvider(providers: providers, child: this);
  }

  List<SingleChildWidget> createProviders() => [];

  OPComponent createComponent() => OPComponent();

  OPWidget createWidget() => OPWidget();

  @override
  @protected
  OPWidget createState() => createWidget();
}
