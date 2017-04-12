var Classroom = function(incomingStudents) {
  this.students = [];
  var i;
  for(i=0; i < incomingStudents.length; i++) {
      this.students.push(incomingStudents[i]);
  }
}

Classroom.prototype.find = function(firstNameToFind) {
  var studentsThisName = function(el) {
    return (el.firstName === firstNameToFind);
  }
  return this.students.filter(studentsThisName)[0];
}

Classroom.prototype.honorRollStudents = function() {
  var honorRoll = function(el) {
    return (el.averageScore() >= 95);
  }
  return this.students.filter(honorRoll);
}

