var Student = function(studentInfo) {
  this.firstName = studentInfo.firstName;
  this.scores = studentInfo.scores;
}

Student.prototype.averageScore = function() {
  var sum = 0;
  for(var i = 0; i < this.scores.length; i++ ) {
    sum += this.scores[i];
  }
  var average = (sum / this.scores.length);
  return Math.floor(average);
}
