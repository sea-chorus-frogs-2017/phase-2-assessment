var Student = function(name, scores) {
  this.firstName = name.firstName;
  this.scores = name.scores;
}
// I'm not sure what was going on here. For some reason name was showing the object of a student and so in order for me to access the name and scores I had to call on the name object and firstName and scores of that name.

Student.prototype.averageScore = function() {
  var sum = this.scores.reduce(add, 0)
  function add(a, b) {
    return a + b
  }
  var avg = Math.floor(sum / this.scores.length)
  return avg
};


Student.prototype.letterGrade = function() {
  if (this.averageScore() >= 90) {
    var letter = "A";
  }
  else if (this.averageScore() >= 80 && this.averageScore() < 89) {
    var letter = "B";
  }
  else if (this.averageScore() >= 70 && this.averageScore() < 79) {
    var letter = "C";
  }
  else if (this.averageScore() >= 60 && this.averageScore() < 69) {
    var letter = "D";
  }
  else {
    var letter =  "F";
  }
  return letter
};
