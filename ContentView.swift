//
//  ContentView.swift
//  CancerPod
//
//  Created by Kaitlin Taylor on 1/18/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 40) {
            
            Text("Welcome To Cancer Pod")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Image(systemName: "cross.case.fill")
                .resizable()
                .frame(width: 160, height: 150)
                .foregroundColor(Color(red: 31/255, green: 58/255, blue: 95/255))
            
            Text("Cancer Pod is a decision-support app that is designed to help people recognize when it may be worth consulting a cancer specialist earlier.")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Text("It does not diagnose, predict outcomes, or replace medical care. It helps route users towards appropriate next steps within the medical system, with an emphasis on safety, privacy, and ethical use of data.")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Button(action: {
                // Navigate to login screen
            }) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 48)
                    .background(
                       Color(red: 31/255, green: 58/255, blue: 95/255)
                    ).cornerRadius(10)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
