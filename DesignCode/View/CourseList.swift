//
//  CourseList.swift
//  DesignCode
//
//  Created by martin chibwe on 6/3/21.
//

import SwiftUI

struct CourseList: View {
    @State var show = false
    var body: some View {
        VStack {
            CourseView()
        }
        
    }
}
struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
struct CourseView: View {
    @State var show = false
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing:8.0) {
                    Text("SwiftUI Advanced")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                    Text("20 Sections")
                        .foregroundColor(.white.opacity(0.7))
                }
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "Logo1"))
            }
            Spacer()
            Image(uiImage: #imageLiteral(resourceName: "Card6"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth:.infinity)
                .frame(height:140, alignment:.top)
        }
        .padding(show ? 30 : 20)
        .padding(.top, show ? 30 : CGFloat(0))
        .frame(maxWidth: show ? .infinity : screen.width - 60.0, maxHeight: show ? .infinity : CGFloat(280))
        .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .onTapGesture {
            self.show.toggle()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
