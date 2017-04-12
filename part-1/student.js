var Student = function(student) {
  this.firstName = student.firstName;
  this.scores = student.scores;
}

Student.prototype.averageScore = function() {
  var total = 0;
  for(var i = 0; i < this.scores.length; i++) {
      total += this.scores[i];
  }
  var avg = total / this.scores.length;
  return Math.floor(avg);
}

