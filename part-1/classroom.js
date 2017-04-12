var Classroom = function(students) {
  this.students = students
}

Classroom.prototype.find = function (query) {
  return this.students.find( function(student) {
    return student.firstName === query;
  }, query);
}

Classroom.prototype.honorRollStudents = function() {
  return this.students.filter( function(student) {
    return student.averageScore() >= 95;
  });
}

