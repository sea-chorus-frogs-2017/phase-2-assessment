var Classroom = function(students = []) {
  this.students = students;

  this.find = function(searchName){

    // var nameMatch = function(student, searchName) {
    //   if (student.firstname === searchName) {return student};
    // }

    this.students.forEach(function(student) {
      if (student.firsName === searchName) {return student}
    });

  }

  this.honorRollStudents = function(){
  var honorRoll = this.students.filter(function(student) {
    return student.averageScore() >= 95;
  });
  return honorRoll;
}
}

//
// var students = this.students
// console.log(students)
// for (student in students) {
//   console.log(student.firstName)
//   if (student.firstName === searchName) {return student}
// }

// this.students.find(nameMatch);
// function nameMatch(searchName) {
//   return this.student.name === searchName;
// }
// var matches = this.students.filter(function(student) {
//   return student.name === searchName;
// });
// return matches;
