var Student = function(info){
  this.firstName = info.firstName;
  this.scores = info.scores;
}

Student.prototype.averageScore = function(){
    sum = this.scores.reduce((previous, current) => current += previous);
    return Math.floor(sum / this.scores.length);
};

Student.prototype.letterGrade = function(){
  var numberGrade = this.averageScore();
  console.log(numberGrade);
  if(numberGrade >= 90){
    return "A";
  } else if (numberGrade >= 80){
    return "B";
  } else if (numberGrade >= 70){
    return "C";
  } else if (numberGrade >= 60){
    return "D";
  } else {
    return "F";
  }
}
