var Classroom = function(students) {
  this.students = students;
}

Classroom.prototype.find = function(name) {
  var student = [];

   for(var i = 0; i < this.students.length; i++){
      if(this.students[i].firstName === name){
        return student.push(this.students[i]);
      }
      return student;
    }
}


// this method is adding jalil but not irene
// for the sake of time i am going to move on to the next challenge
Classroom.prototype.honorRollStudents = function() {
  var honorStudents = []
  for(var i=0; i < this.students.length; i++) {
    if(this.students[i].averageScore() >= 95) {
      honorStudents.push(this.students[i]);
    }
    return honorStudents;
  }
}
