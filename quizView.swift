import SwiftUI
 
//view for the quiz game
struct Quiz1 : View {
     
    //number of question
    @State var i : Int = 0
     
    //var for the score
    @State var score = 0
    @State private var showActionSheet = false
    @State private var counter = 0
     
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
             
            //if i < of questions --> play question
            if(self.i < myQuiz1.count){
                 
                 
               //Image
          Image(myQuiz1[self.i].image!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)

                
                //text of the question
                       Text(myQuiz1[self.i].text!)
                 
                 
                //answer 0
                Button(action:{
                    self.showActionSheet = true
                    self.buttonAction(n: 0)
                },label: {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple,lineWidth: 2)
                        )
                })
            
                 
                //answer 1
                Button(action:{
                    self.buttonAction(n: 1)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                 
                //answer 2
                Button(action:{
                    self.buttonAction(n: 2)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                 
                //answer 3
                Button(action:{
                    self.buttonAction(n: 1)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
 
            }
                 
            //after last question --> show final view with score
            else{
                Text("Congratulations, you completed the game! 🥳")
                                
                Text("Final Score: \(self.score) out of \(myQuiz1.count)")
                Button(action: {
                            counter += 1
                        }) {
                            Text("        🎶")
                                .font(.system(size: 100))
                        }
                        .confettiCannon(counter: $counter)
                
            .confettiCannon(counter: $counter, colors: [.blue, .pink], rainHeight: 2000.0, radius: 700.0)
                 
            
            }
             
             
        }
        .padding(.horizontal)
    }
     
     
    //action of the buttons
    //n = answer [0,1,2,3]
    func buttonAction( n : Int){
        //if answer is correct increment score
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        //GO TO NEXT QUESTION
        self.i = self.i + 1
         
    }
     
     
}
 
struct Quiz1_reviews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
