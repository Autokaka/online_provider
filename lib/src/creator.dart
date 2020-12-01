part of online_provider;

class OPCreator extends StatefulWidget {
  const OPCreator({Key key}) : super(key: key);

  Widget build() {
    var providers = createProviders();
    if (providers == null || providers.isEmpty) return this;
    return MultiProvider(providers: providers, child: this);
  }

  List<SingleChildWidget> createProviders() => null;

  OPComponent createComponent() => null;

  OPWidget createWidget() => null;

  @override
  @protected
  @deprecated
  OPWidget createState() => createWidget();
}
