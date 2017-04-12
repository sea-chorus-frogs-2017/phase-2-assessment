var Classroom = function(students){
  this.students = students;
};

Classroom.prototype.find = function(student_name){
  var that = this;
  return that.students.find(function(student){
    return student.firstName == student_name;
  });
};

Classroom.prototype.honorRollStudents = function(){
  var that = this;
  var honor_roll = [];
  that.students.forEach(function(student){
      if (student.averageScore() >= 95) {
        honor_roll.push(student);
      };
  });
  return honor_roll;
};
