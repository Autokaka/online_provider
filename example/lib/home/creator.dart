library home;

import 'package:online_provider/online_provider.dart';

part 'widget.dart';
part 'component.dart';
part 'provider.dart';

class HomePageCreator extends OPCreator {
  final String title;

  HomePageCreator({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  List<SingleChildWidget> createProviders() {
    return [
      ChangeNotifierProvider(create: (_) => HomePageProvider()),
    ];
  }

  @override
  HomePageComponent createComponent() => HomePageComponent();

  @override
  HomePageWidget createWidget() => HomePageWidget();
}
