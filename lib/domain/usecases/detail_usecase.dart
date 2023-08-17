import 'package:dicogram/domain/entity/detail/detail_entity.dart';
import 'package:dicogram/domain/repository/detail_repository.dart';

class DetailUseCase {
  final DetailRepository detailRepository;
  DetailUseCase({required this.detailRepository});

  Future<DetailEntity> getDetailStory(String id) {
    return detailRepository.getDetailStory(id);
  }
}
