var Classroom = function(students) {
  this.students = students;
  this.find = function(firstName) {
    return students.find(function(student) {
      return student.firstName === firstName;
    })
  }
}
