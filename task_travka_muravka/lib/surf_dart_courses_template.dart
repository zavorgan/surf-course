import 'maps.dart';

void main() {
  var allMachineries = <String, DateTime>{};

  // Вычисляем средний возраст техники
  mapBefore2010.values
      .expand((territories) => territories)
      .forEach((territory) {
    territory.machineries.forEach(
      (machinery) {
        allMachineries[machinery.id] = machinery.releaseDate;
      },
    );
  });

  mapAfter2010.values.expand((territories) => territories).forEach((territory) {
    territory.machineries.forEach(
      (machinery) {
        allMachineries[machinery.id] = machinery.releaseDate;
      },
    );
  });

  print(allMachineries);

  final currentYear = DateTime.now().year;
  var averageAgeSum = 0.0;

  for (DateTime date in allMachineries.values) {
    averageAgeSum += (currentYear - date.year);
  }

  final averageAge = averageAgeSum / allMachineries.length;
  print('Средний возраст техники: $averageAge лет');

  // Сортируем технику по возрасту и вычисляем средний возраст для 50% самой старой
  var sortedMachineries = allMachineries.values.toList();
  sortedMachineries.sort((a, b) => b.year.compareTo(a.year));
  final oldestMachinesCount = (sortedMachineries.length / 2).ceil();

  var oldestAverageAgeSum = 0.0;
  for (var i = 0; i < oldestMachinesCount; i++) {
    oldestAverageAgeSum += (currentYear - sortedMachineries[i].year);
  }

  final oldestAverageAge = oldestAverageAgeSum / oldestMachinesCount;
  print('Средний возраст 50% самой старой техники: $oldestAverageAge лет');
}
