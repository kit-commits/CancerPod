//
//  RiskSignalIntakePartOne.swift
//  CancerPod
//
//  Created by Kaitlin Taylor on 1/18/26.
//

import SwiftUI

struct RiskSignalIntakePartOne: View {
    
    @State private var shareWithClinician = false
    @State private var allowSummaries = false
    @State private var allowTrendView = false
    
    var body: some View {
        VStack (spacing: 30) {
            
            // Top colored squares
            HStack(spacing: 20) {
                Rectangle()
                    .fill(Color(hex: "#6FA8A1"))
                    .frame(width: 50, height: 50)
                    .border(Color(hex: "#1F3A5F"), width: 4)
                
                Rectangle()
                    .fill(Color(hex: "#6FA8A1"))
                    .frame(width: 50, height: 50)
            }
            
            Text("Explicit Opt In")
                .font(.system(size: 48, weight: .semibold, design: .default))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Toggle("Store your responses for optional clinician sharing?", isOn: $shareWithClinician)
                .toggleStyle(SwitchToggleStyle(tint: Color(hex: "1F3A5F")))
                .padding(.horizontal, 40)
            
            Toggle("Allow summaries to be generated from your entries?", isOn: $shareWithClinician)
                .toggleStyle(SwitchToggleStyle(tint: Color(hex: "1F3A5F")))
                .padding(.horizontal, 40)
            
            Toggle("Allow clinicians you choose to see trends, not raw notes?", isOn: $shareWithClinician)
                .toggleStyle(SwitchToggleStyle(tint: Color(hex: "1F3A5F")))
                .padding(.horizontal, 40)
            
            Button(action: {
                // Navigate to login screen
            }) {
                Text("Back")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 48)
                    .background(
                       Color(red: 31/255, green: 58/255, blue: 95/255)
                    ).cornerRadius(10)
            }
            
            Text("Note: All permissions are optional. Declining does not block access to the app. ")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
        }
        .padding()
    }
}

// MARK: - Hex Color Helper

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        if hex.count == 6 {
            r = (int >> 16) & 0xFF
            g = (int >> 8) & 0xFF
            b = int & 0xFF
        } else {
            r = 0; g = 0; b = 0
        }
        self.init(
            red: Double(r)/255,
            green: Double(g)/255,
            blue: Double(b)/255
        )
    }
}

#Preview {
    RiskSignalIntakePartOne()
}

