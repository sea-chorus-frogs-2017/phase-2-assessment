var Student = function(args) {
  this.firstName = args.firstName;
  this.scores = args.scores;
  this.averageScore = function(){var sum = 0;
    for(var i = 0; i < this.scores.length; i++){
      sum += this.scores[i];
    }
    var average = (sum/ (this.scores.length));
    return Math.floor(average)
  };

  this.letterGrade = function(){
    var ave = this.averageScore();
    if (ave < 60){
      return "F"
    }else if (ave < 70){
      return "D"
    }else if (ave <80){
      return "C"
    }else if (ave <90){
      return "B"
    }else{
      return "A"
    }


  };
}



