library root;

import 'package:example/home/creator.dart';
import 'package:online_provider/online_provider.dart';

part 'widget.dart';

class RootPageCreator extends OPCreator {
  @override
  RootPageWidget createWidget() => RootPageWidget();
}
