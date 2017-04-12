var Classroom = function(students) {
  this.students = students;
}

Classroom.prototype.find = function(studentName) {
  for (var i = 0; i < this.students.length; i++) {
    if (this.students[i].firstName === studentName) {
      return this.students[i];
    }
  }
}
