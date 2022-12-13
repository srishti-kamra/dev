import SwiftUI
struct Quiz1 : View {
    @State var i : Int = 0
    @State var score = 0
    @State private var showActionSheet = false
    @State private var counter = 0
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            if(self.i < myQuiz1.count){
                //Modifiers for my image
                Image(myQuiz1[self.i].image!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                Text(myQuiz1[self.i].text!)
                //Q1
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
                }
                )
                //Q2
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
                }
                )
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                //Q3
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
                //Q4
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
                            .cancel{ print(self.showActionSheet) }
                        ]
                    )
                }
            }
            else{
                Text("Congratulations, you completed the game! 🥳")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824
                          ,blue: 0.8470588235294118))
    }
    
    func buttonAction( n : Int){
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        self.i = self.i + 1
    }
}

struct Quiz1_reviews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
