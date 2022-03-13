//
//  ContentView.swift
//  siri
//
//  Created by Srujan on 02/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var symbols=["apple","lemon","donut"]
    @State private var numbers=[0,1,2]
    @State private var backgrounds = [Color.white,Color.white,Color.white]
    @State private var credits=1000
    private var betamount=5
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.yellow).edgesIgnoringSafeArea(.all)
            
            Rectangle().foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .rotationEffect(.degrees(45))
                .edgesIgnoringSafeArea(.all)
           
            
            VStack{
                Spacer()
                HStack{
                    Image(systemName:"cube.fill").foregroundColor(.red)
                    
                    Text("Check Your Luck").fontWeight(.heavy)
                    
                    Image(systemName:"cube.fill").foregroundColor(.red)
                }.scaleEffect(2)
                Spacer()
                Text("credits: "+String(credits)).padding(.all,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    
                
                Spacer()
                
                HStack{
                    Spacer()
                    cardview(symbol:$symbols[numbers[0]], background: $backgrounds[0])
                    cardview(symbol:$symbols[numbers[1]],background: $backgrounds[1])
                    cardview(symbol:$symbols[numbers[2]],background: $backgrounds[2])

                    Spacer()
                }
                Spacer()
                
               
                
                Button(action: {
                    
                    self.backgrounds=self.backgrounds.map{ _ in Color.white}
                    
                    self.numbers=self.numbers.map({
                        _ in Int.random(in: 0...self.symbols.count-1)
                    })
                    
                   
                    
                    if(self.numbers[0]==self.numbers[1]&&self.numbers[1]==self.numbers[2]){
                        self.credits = self.credits+10*betamount
                        
                        
                        self.backgrounds=self.backgrounds.map{ _ in Color.green}
        
                    }
                    else{
                        self.credits = self.credits-1
                    }
                    
                    
                    
                }){
                    
                    Text("click me").foregroundColor(.black)
                        .padding(.all,10).padding([.leading,.trailing],20)
                        .background(.red).cornerRadius(20)
                    
                }; Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
