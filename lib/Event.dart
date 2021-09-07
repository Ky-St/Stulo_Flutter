List <Event> events = [];

class Event {
  String name_employer="";
  double number_hours;
  double salary_hours;
  double result;

  Event(name_employer, number_hours, salary_hours, result){
    this.name_employer = name_employer;
    this.number_hours = number_hours;
    this.salary_hours = salary_hours;
    this.result = result;
  }
}