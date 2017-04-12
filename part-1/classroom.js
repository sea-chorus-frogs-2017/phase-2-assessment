var Classroom = function(students){
  this.students = students;
  this.find = function(name){
    for(var i = 0; i < this.students.length; i++){
      if (this.students[i].firstName == name){
        return this.students[i];
      };
    };
  };
  this.honorRollStudents = function(){
    var honorStudents = []
     for(var i = 0; i < this.students.length; i++){
      if (this.students[i].averageScore() >=95){
        honorStudents.push(this.students[i]);
      };
    };
    return honorStudents;
  };
}
