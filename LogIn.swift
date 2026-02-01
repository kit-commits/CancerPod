//
//  LogIn.swift
//  CancerPod
//
//  Created by Kaitlin Taylor on 2/1/26.
//

import SwiftUI

struct LogIn: View {
        
        @State private var eMail = ""
        @State private var password = ""
        
        var body: some View {
            
            ZStack {
                Color(red: 247/255, green: 248/255, blue: 249/255)
                    .ignoresSafeArea()
                
                VStack (spacing: 24){
                    Spacer()
                    
                    Text("Log In")
                        .font(.system(size: 48, weight: .semibold, design: .default))
                        .foregroundColor(Color(red: 74/255, green: 79/255, blue: 85/255))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    
                    Spacer()
                    // enter in verification information
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("E-Mail").font(.custom("Inter", size:28))
                            .foregroundColor(Color(
                                red: 74/255,
                                green: 79/255,
                                blue: 85/255
                            ))
                        
                        TextField("", text: $eMail)
                            .keyboardType(.phonePad)
                            .padding()
                            .background(Color(
                                red: 107/255,
                                green: 143/255,
                                blue: 163/255
                            ).opacity(0.4))
                            .cornerRadius(12.0)
                            .foregroundColor(Color(
                                red: 107/255,
                                green: 143/255,
                                blue: 163/255
                            ))
                        
                        Text("Password").font(.custom("Inter", size:28))
                            .foregroundColor(Color(
                                red: 74/255,
                                green: 79/255,
                                blue: 85/255
                            ))
                        
                        TextField("", text: $password)
                            .keyboardType(.numberPad)
                            .padding()
                            .background(Color(
                                red: 107/255,
                                green: 143/255,
                                blue: 163/255
                            ).opacity(0.4))
                            .cornerRadius(12.0)
                            .foregroundColor(Color(
                                red: 107/255,
                                green: 143/255,
                                blue: 163/255
                            ))
                            .monospacedDigit()
                        
                    }
                    
                    .padding(.horizontal)
        
                    Spacer()
                    
                    Button(action: {
                        // Navigate to login screen
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 48)
                            .background(
                               Color(red: 31/255, green: 58/255, blue: 95/255)
                            ).cornerRadius(10)
                    }
                    
                    Spacer(minLength: 10)
                    
                }
                .padding()
                
            }
        }
        
}


#Preview {
    LogIn()
}
