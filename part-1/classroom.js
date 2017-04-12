var Classroom = function(students = []) {
  this.students = students;
  this.find = function(searchName) {


    this.students.find(nameMatch);

    function nameMatch(searchName) {
      return this.student.name === searchName;

    }

    // var matches = this.students.filter(function(student) {
    //   return student.name === searchName;
    // });
    // return matches;
  }

  this.honorRollStudents = function(){
  var honorRoll = this.students.filter(function(student) {
    return student.averageScore() >= 95;
  });
  return honorRoll;
}
}
