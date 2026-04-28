import 'package:dartz/dartz.dart';
import 'package:kuldi/core/errors/failure.dart';
import 'package:kuldi/features/profile/domain/entities/profile.dart';
import 'package:kuldi/features/profile/domain/repositories/profile_repository.dart';

class GetUser {
  final ProfileRepository profileRepository;
  const GetUser(this.profileRepository);

  Future<Either<Failure, Profile>> execute(int id) async {
    return await profileRepository.getUser(id);
  }
}
