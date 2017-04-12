var Student = function(params) {
  this.firstName = params.firstName;
  this.scores = params.scores;
  this.averageScore = function() {
    var sum = this.scores.reduce(add, 0);
    function add(a,b) {
      return a + b;
    }
    average = (sum/this.scores.length);
    return Math.floor(average);
  }
  this.letterGrade = function() {
    if (this.averageScore() >= 90) {
      return "A";
    }
    else if (this.averageScore() >= 80 && this.averageScore() < 90) {
      return "B";
    }
    else if (this.averageScore() >= 70 && this.averageScore() < 80) {
      return "C";
    }
    else if (this.averageScore() >= 60 && this.averageScore() < 70) {
      return "D";
    }
    else if (this.averageScore() < 60) {
      return "F";
    }
  }
};
