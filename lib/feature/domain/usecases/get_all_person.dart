import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_morty/core/error/failure.dart';
import 'package:rick_morty/core/usecase/usecase.dart';
import 'package:rick_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_morty/feature/domain/repositories/person_repositories.dart';

abstract class GetAllPerson
    extends UseCase<List<PersonEntity>, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPerson(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      PagePersonParams params) async {
    return await personRepository.getPerson(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({required this.page});

  @override
  List<Object> get props => [page];
}
