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

Student.prototype.letterGrade = function() {
    if(this.averageScore() >= 90) {
      return "A";
    }else if(this.averageScore() >= 80 && this.averageScore() < 90) {
      return "B"
    }else if(this.averageScore() >= 70 && this.averageScore() < 80) {
      return "C"
    }else if(this.averageScore() >= 60 && this.averageScore() < 70) {
      return "D"
    }else {
      return "F"
    }
  }


