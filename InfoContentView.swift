//
//  InfoContentView.swift
//  DeafAid
//
//  Created by Deeksha Mamidi on 7/9/23.
//

import SwiftUI


struct InfoContentView: View {
    @State private var backPressed = false
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            Text("Click on the record button")
                .foregroundColor(.blue)
                .bold()
                .font(.largeTitle)
                .position(x: 200, y: 100)
            Text("To start seeing what people hear")
                .foregroundColor(.blue)
                .bold()
                .font(.largeTitle)
                .position(x: 200, y: 200)
            Text("After touching the back button")
                .foregroundColor(.blue)
                .bold()
                .font(.largeTitle)
                .position(x: 200, y: 300)
            Button {
                self.backPressed.toggle()
            } label: {
                Image("Button2")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .position(x: -40, y:725)
                    .frame(width: 125)
            }
            .fullScreenCover(isPresented: $backPressed, content: ContentView.init)
            .buttonStyle(.plain)

                
        }
    }
}





