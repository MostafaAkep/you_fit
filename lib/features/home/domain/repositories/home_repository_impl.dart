import 'package:injectable/injectable.dart';
import '../../data/data_source/home_data_source.dart';
import 'home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);
}
