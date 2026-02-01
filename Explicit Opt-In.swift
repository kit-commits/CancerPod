//
//  Explicity Opt-In.swift
//  CancerPod
//
//  Created by Kaitlin Taylor on 2/1/26.
//

import SwiftUI

// Creating the custom toggle parts

struct CustomToggle: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        
        ZStack {
            
            Capsule()
                .fill(isOn
                      ? Color(red: 120/255, green: 170/255, blue: 160/255)
                      : Color(red: 30/255, green: 60/255, blue: 90/255))
                .frame(width: 56, height: 32)
                .overlay(
                    Capsule()
                        .stroke(Color(red: 20/255, green: 45/255, blue: 75/255), lineWidth: 2)
                )
            
            Circle()
                .fill(Color(red: 30/255, green: 60/255, blue: 90/255))
                .frame(width: 24, height: 24)
                .offset(x: isOn ? 12 : -12)
                .animation(.easeInOut(duration: 0.2), value: isOn)
        }
        .onTapGesture {
            isOn.toggle()
        }
        .accessibilityElement()
        .accessibilityValue(isOn ? "On" : "Off")
        
    }
}

struct Explicit_Opt_In: View {
    
    @State private var storeResponses = false
    @State private var allowSummaries = true
    @State private var allowTrends = false
    
    var body: some View {
        
        ZStack {
            Color(red: 247/255, green: 248/255, blue: 249/255)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
            // Header content
                VStack (spacing: 24){
                    
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(red: 111/255, green: 168/255, blue:161/255))
                            .frame(width: 50, height: 50)
                            .overlay (
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color(red: 20/255, green: 45/255, blue: 75/255), lineWidth: 2)
                            )
                        
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(red: 111/255, green: 168/255, blue:161/255))
                            .frame(width: 50, height: 50)
                    }
                    
                    Text("Explicit Opt-In")
                        .font(.system(size: 48, weight: .semibold, design: .default))
                        .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 12)
                    
                }
                
                // This is where the toggles start
                
                VStack(alignment: .leading, spacing: 24) {
                    
                    toggleRow(
                        text: "Store your responses for optional clinician sharing?",
                        isOn: $storeResponses
                    )
                    
                    toggleRow(
                        text: "Allow summaries to be generated from your entries?",
                        isOn: $allowSummaries
                    )

                    toggleRow(
                        text: "Allow clinicians you choose to see trends, not raw notes?",
                        isOn: $allowTrends
                    )
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // Button
                
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
                
                
                Text("Note: All permissions are optional. Declining does not block access to the app.")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 24)
            
        }
        
    }
    
    private func toggleRow(text: String, isOn: Binding<Bool>) -> some View {
        HStack(alignment: .top, spacing: 16) {
            CustomToggle(isOn: isOn)
            Text(text)
                .font(.system(size:16))
                .foregroundColor(.gray)
        }
    }
        
}

#Preview {
    Explicit_Opt_In()
}
