var Student = function(details) {
this.firstName = details.firstName;
this.scores = details.scores;
};

Student.prototype.averageScore = function(){
  var that = this;
  var total_sum = 0;
  that.scores.forEach(function(score){
    total_sum += score;
  });
  return Math.floor(total_sum / that.scores.length);
};

Student.prototype.letterGrade = function(){
  var that = this;
  // switch is testing if the case is true
  switch(true){
    case (that.averageScore() >= 90):
      return 'A';
    case (that.averageScore() >= 80):
      return 'B';
    case (that.averageScore() >= 70):
      return 'C';
    case (that.averageScore() >= 60):
      return 'D';
    case (that.averageScore() < 60):
      return 'F';
  };
};
