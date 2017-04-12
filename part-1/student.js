var Student = function(grades) {
  this.firstName = grades["firstName"];
  this.scores = grades["scores"];
}

Student.prototype.averageScore = function(){
  var numberOfScores = this.scores.length
  var totalScore = this.scores.reduce(function(sum, score){
    return sum + score;
  })
  return Math.floor(totalScore/numberOfScores)
}

Student.prototype.letterGrade = function(){
  if ( this.averageScore() >= 90 ){
    return "A"
  }
  if ( this.averageScore() >= 80 && this.averageScore() <= 89 ){
    return "B"
  }
  if ( this.averageScore() >= 70 && this.averageScore() <= 79 ){
    return "C"
  }
  if ( this.averageScore() >= 60 && this.averageScore() <= 69 ){
    return "D"
  }
  if ( this.averageScore() <= 60 ){
    return "F"
  }
}

// Student.prototype.honorRoll = function(){
//   if ( this.averageScore() >= 95 ){
//     return true
//   }
// }
