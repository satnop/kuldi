import 'package:kuldi/core/errors/failure.dart';
import 'package:kuldi/features/profile/domain/entities/profile.dart';
import 'package:kuldi/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllUser {
  final ProfileRepository profileRepository;
  const GetAllUser(this.profileRepository);

  Future<Either<Failure, List<Profile>>> execute(int page) async {
    return await profileRepository.getAllUser(page);
  }
}
