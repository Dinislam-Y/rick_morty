import 'package:dartz/dartz.dart';
import 'package:rick_morty/core/error/failure.dart';
import 'package:rick_morty/feature/domain/entities/person_entity.dart';

//контракт
abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntity>>> getPerson(int page);
  //Either - тип, Failure - отлав ошибок

  Future<Either<Failure, List<PersonEntity>>> searchPerson(String query);
}
