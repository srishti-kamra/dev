import Foundation
 
struct Quiz  {
    var image : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
}
 
//final quiz is an array that contains the questions 
var myQuiz1 : [Quiz] = [

    Quiz(image: "wtf??", //meet me halfway
                  text: "What music video is this?",
                  answer: ["Just Can't Get Enough", "Meet Me Halfway", "Where Is The Love?", "Don't You Worry"],
                  correct: 1),

     
        Quiz(image: "dinnerTable",// Heavy
    text: "What music video is this?",
    answer: ["Numb","Heavy","Good Goodbye","In the End"],
    correct: 1),
     
    Quiz(image: "DBM", //Don't blame me
    text: "What music video is this?",
    answer: ["Don't Blame Me","Look What You Made Me Do","Exile","Vigilante Sh*t "],
    correct: 0),
     
        Quiz(image: "KP!", //The One that Got Away by Katy Perry
    text: "What music video is this?",
    answer: ["Part Of Me","California Gurls","The One That Got Away","Teenage Dreams"],
    correct: 2),
     
        Quiz(image: "If", //If I Lose Myself  by One Republic
    text: "What music video is this?",
    answer: ["Someday","Distance","If I Lose Myself","Rescue Me"],
    correct: 2),
 
]
 
func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}
 
/*func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
*/

