//
//  ContentView.swift
//  DeafAid
//
//  Created by Devesh Mamidi on 7/8/23.
//

import SwiftUI
import UIKit
import Foundation

struct ContentView: View {
    @State private var infoOn = false
    @State private var recordingOn = false
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .position(x: 175, y:150)
                .padding()
            Button {

                self.recordingOn.toggle()
            } label: {
                Image("Button")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .position(x: 195, y:400)
                
            }
            .fullScreenCover(isPresented: $recordingOn, content: RecordingContentView.init)
            .buttonStyle(.plain)
            Button {
                self.infoOn.toggle()
            } label: {
                Image("Button1")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .position(x: 190, y:525)
                
            }
            .fullScreenCover(isPresented: $infoOn, content: InfoContentView.init)
            .buttonStyle(.plain)
        }
        
        
    }
    

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
