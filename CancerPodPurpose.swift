//
//  CancerPodPurpose.swift
//  CancerPod
//
//  Created by Kaitlin Taylor on 2/1/26.
//

import SwiftUI

struct CancerPodPurpose: View {
    var body: some View {
        
        VStack (spacing: 40) {
            
            Text("The Purpose Of Cancer Pod.")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Image(systemName: "cross.fill")
                .resizable()
                .frame(width: 160, height: 150)
                .foregroundColor(Color(red: 31/255, green: 58/255, blue: 95/255))
            
            Text("This app does not diagnose. This app serves as a route to better patient care.")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Text("This app will then provide patients with real risk awareness.")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Button(action: {
                // Navigate to login screen
            }) {
                Text("Proceed")
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
    CancerPodPurpose()
}
