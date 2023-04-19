import 'package:flutter_state_notifier_template/repository/shared_preference_repository.dart';
import 'package:flutter_state_notifier_template/repository/data_source/shared_preference_data_source.dart';
import 'package:flutter_state_notifier_template/usecase/counter_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'counter_usecase_test.mocks.dart';

@GenerateMocks([SharedPreferencesDataSource])
void main() {
  group('counter usecase', () {
    final mockSharedPreferencesRepository = MockSharedPreferencesDataSource();
    when(mockSharedPreferencesRepository.load<int>(SharedPreferencesKey.counter)).thenAnswer((_) async => Future.value(0));
    when(mockSharedPreferencesRepository.save<int>(SharedPreferencesKey.counter, 1)).thenAnswer((_) => Future.value(true));

    final counterUsecase = CounterUsecase()
      ..debugMockDependency<SharedPreferencesRepository>(mockSharedPreferencesRepository);

    test('increment', () async {
      counterUsecase.increment();

      expect(counterUsecase.debugState.count, 1);
    });
  });
}