var Classroom = function(students) {
  this.students = students;
  this
}

Classroom.prototype.find = function(searchName) {
    var searchIndex
    var numStudents = this.students.length;
    for (var i = 0; i < numStudents; i++) {
      if (this.students[i].firstName == searchName) {
        searchIndex = i;
      }
    }
    return this.students[searchIndex];
  };

Classroom.prototype.honorRollStudents = function() {
    var honorRoll = [];
    var numStudents = this.students.length;
    for (var i = 0; i < numStudents; i++) {
      var currentStudent = this.students[i];
      if (this.students[i].averageScore() >= 95) {
        honorRoll.push(this.students[i]);
      }
    }
    return honorRoll;
  };
