import '../entity/detail/detail_entity.dart';

abstract class DetailRepository {
  Future<DetailEntity> getDetailStory(String id);
}
