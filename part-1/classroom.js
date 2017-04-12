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
