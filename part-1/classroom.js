var Classroom = function(students) {
  this.students = students
}

Classroom.prototype.find = function (query) {
  console.log(query)
  return this.students.filter( function(student) {
    console.log(student)
    return student.firstName === query;
  }, query);
}
