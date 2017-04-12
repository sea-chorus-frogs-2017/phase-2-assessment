var Classroom = function(students){
  this.students = students;
}

Classroom.prototype.find = function(query) {
  var found;
  this.students.forEach(function(student){
    if (student.firstName === query) {
      found = student;
    }
  })
  return found
}

Classroom.prototype.honorRollStudents = function(){
  var honorRoll = [];
  this.students.forEach(function(student){
    if ( student.averageScore() >= 95 ){
      honorRoll.push(student);
    }
  })
  return honorRoll;
}
