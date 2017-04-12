var Student = function(options) {

  this.firstName = options.firstName;
  this.scores = options.scores;
  var firstName = function(){
    return this.firstName;
  };
  var scores = function(){
    return this.scores;
  };
};

Student.prototype.averageScore = function(){
    var sum = this.scores.reduce(function(sum, val){
      return sum + val;
    }, 0);
    return Math.floor(sum / this.scores.length);
};

Student.prototype.letterGrade = function(){
  var score = this.averageScore();
  if (score >= 90 ){
    return "A";
  }
  else if (score >= 80){
    return "B";
  }
  else if (score >= 70){
    return "C";
  }
  else if (score >= 60){
    return "D";
  }
  else{
    return "F";
  };
}


var student = new Student({firstName: "Lysette", scores: [100, 100, 100, 4, 100]});
student.letterGrade();
