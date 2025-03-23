//
//  DogAgeCalcView.swift
//  IntroToSwiftUI
//
//  Created by André Nestor on 23/03/25.
//

import SwiftUI

struct DogAgeCalcView: View {
    
    @State var txtDogAge: String = ""
    @State var convertedAge: Int = 0
    
    func CalculateAge() {}
    
    var body: some View {
        VStack {
            Group {
                Image(systemName: "pawprint.fill")
                Text("Calculadora de Idade Canina")
                    .font(.title2)
                    .padding(.top, 12)
            }
            Form {
                TextField("Insira a idade do cão:", text: $txtDogAge)
                Button(action: CalculateAge, label: {
                     Text("Calcular")
                })
                Image("cachorro")
                    
            }.clipShape(RoundedRectangle(cornerRadius: 8))
            
            Group {
                Text("A idade convertida fica:")
                Text("\(convertedAge)").font(.system(size: 32, weight: .semibold))
            }.padding(.vertical, 16)
            
            
        }.padding()
    }
}

#Preview {
    DogAgeCalcView()
}
