// Базовый класс, представляющий человека
class Person {
  String name;
  String?
      team; // Не обязательный параметр, но в среде геймеров почти всегда обязательный
  String?
      nickName; // Не обязательный параметр, но в среде геймеров почти всегда обязательный

  // Конструктор, принимающий обязательное имя и необязательные команду и псевдоним
  Person(this.name, {this.team, this.nickName});

  void displayInfo() {
    print('Имя: $name');
    if (nickName != null)
      print('Псевдоним: $nickName'); // Вывести псевдоним, если он есть
    if (team != null) print('Команда: $team'); // Вывести команду, если она есть
  }
}

// Класс, представляющий геймера (игрока), наследуется от класса Person
class Gamer extends Person {
  int matchesPlayed;

  Gamer(String name, this.matchesPlayed, {String? team, String? nickName})
      : super(name, team: team, nickName: nickName);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Сыграно матчей: $matchesPlayed');
  }
}

// Класс, представляющий тренера, наследуется от класса Person
class Coach extends Person {
  int trophiesWon;

  Coach(String name, this.trophiesWon, {String? team, String? nickName})
      : super(name, team: team, nickName: nickName);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Выиграно трофеев: $trophiesWon');
  }
}

// Абстрактный класс роли игрока
abstract class PlayerRole extends Gamer {
  String roleDescription;

  // Конструктор роли игрока, включающий описание роли
  PlayerRole(String name, int matchesPlayed, this.roleDescription,
      {String? team, String? nickName})
      : super(name, matchesPlayed, team: team, nickName: nickName);

  @override
  void displayInfo() {
    super.displayInfo(); // Вызов метода родительского класса Gamer
    print('Роль: $roleDescription');
  }
}

// Примеры реализации конкретных ролей
class CarryPlayer extends PlayerRole {
  CarryPlayer(String name, int matchesPlayed, {String? team, String? nickName})
      : super(name, matchesPlayed, 'Carry', team: team, nickName: nickName);
}

class SupportPlayer extends PlayerRole {
  SupportPlayer(String name, int matchesPlayed,
      {String? team, String? nickName})
      : super(name, matchesPlayed, 'Support', team: team, nickName: nickName);
}

void main() {
  // Создание игроков, тренера и их ролей
  CarryPlayer carryPlayer =
      CarryPlayer('Alice', 250, team: 'DreamTeam', nickName: 'Queen');
  SupportPlayer supportPlayer =
      SupportPlayer('Bob', 150, team: 'DreamTeam', nickName: 'Healer');
  Coach coach = Coach('Charlie', 10, team: 'DreamTeam', nickName: 'Mastermind');

  // Отображение информации
  carryPlayer.displayInfo();
  supportPlayer.displayInfo();
  coach.displayInfo();
}
