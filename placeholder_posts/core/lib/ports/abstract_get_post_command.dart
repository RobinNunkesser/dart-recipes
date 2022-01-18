import 'package:common_ports/common_ports.dart';
import 'abstract_post_id.dart';

abstract class AbstractGetPostCommand
    implements Command<AbstractPostId, String> {}
