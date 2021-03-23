import 'package:explicit_architecture/explicit_architecture.dart';
import 'abstract_post_id.dart';

abstract class AbstractGetPostCommand implements
    Command<AbstractPostId, String> {}