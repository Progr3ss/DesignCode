//
//  Home.swift
//  DesignCode
//
//  Created by Martin Chibwe on 5/28/21.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    @State var viewState = CGSize.zero
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                HStack {
                    Text("Watching")
                        .font(.system(size: 28, weight: .bold))
                    Spacer()
                    Button(action: {self.showProfile.toggle()}) {
                        Image("Avatar")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                            
                    }
                }
                .padding(.horizontal)
                .padding(.top,30)
                Spacer()
            }
            .padding(.top,44)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .scaleEffect(showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
            .offset(y: showProfile ? -450 : 0)
            .rotation3DEffect(Angle(degrees: showProfile ? -10 : 0), axis: (x: 10.0, y: 0, z: 0))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            MenuView()
                .background(Color.black.opacity(0.0001))
                .offset(y: showProfile ? 0 : 1200)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                        self.viewState = value.translation
                    }
                        .onEnded{value in
                            self.viewState = .zero
                        }
                )
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
