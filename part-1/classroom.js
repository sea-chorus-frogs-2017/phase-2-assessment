var Classroom = function(students){
  this.students = students;
};

Classroom.prototype.find = function(searchStudent){
  var searchStudent = searchStudent;
  function hasName(student){
    return student.firstName === searchStudent;
  };
  var filtered = this.students.filter(hasName);
  return filtered[0];
};

Classroom.prototype.honorRollStudents = function(){
  function onHonorRoll(student){
    return student.averageScore() >= 95;
  };
  var filtered = this.students.filter(onHonorRoll);
  return filtered;
};

