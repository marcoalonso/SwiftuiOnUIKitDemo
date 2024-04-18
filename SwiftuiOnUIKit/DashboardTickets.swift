//
//  DashboardTickets.swift
//  SwiftuiOnUIKit
//
//  Created by Marco Alonso on 15/04/24.
//

import SwiftUI

struct DashboardTickets: View {
    
    var dismissAction: (() -> Void)
    
    @Binding var items : [Item]
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                
                Text("Detalle del viaje")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    //Dismiss
                    dismissAction()
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                })
            }
            .frame(height: 60)
            .background(.white)
            .padding(.horizontal, 25)
        }
        
        VStack(spacing: 16.0) {
            
            
            ForEach (items, id: \.self ) { item in
                    HStack {
                        Image(systemName: item.imageName)
                            .frame(width: 32, height: 32)
                        
                        Text(item.description)
                        
                        Spacer()
                    }
            } ///ForEach
            
            Spacer()
        }
        .padding(.vertical)
        .padding(.horizontal)
        .background(Color(.systemGray5))
        
    }
}

#Preview {
    DashboardTickets(dismissAction: { }, items: .constant(MockData.items))
}
