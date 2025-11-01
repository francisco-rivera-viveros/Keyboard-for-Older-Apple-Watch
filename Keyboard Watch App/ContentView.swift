//
//  ContentView.swift
//  Keyboard Watch App
//
//  Created by Francisco Rivera on 19/08/25.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var text: String = ""
    @State private var isShifted: Bool = true
    @State private var screenWidth: CGFloat = 0

    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Button("Delete") {
                    text = ""
                }
                .buttonStyle(PlainButtonStyle())
                .font(.system(size: 12))
                .foregroundStyle(.red)
                .padding(.top, screenWidth < 180 ? 13 : 16)
                .padding(.bottom, screenWidth < 180 ? 12 : 16)
                .padding(.leading, 8)
                
               Spacer()
                ShareLink(item: text) {
                    Text("Send")
                }
                .font(.system(size: 12)) // 4. Letra de 12pt
                .foregroundStyle(.blue)
                .buttonStyle(PlainButtonStyle())
                .padding(.top, screenWidth < 180 ? 13 : 16)
                .padding(.bottom, screenWidth < 180 ? 12 : 16)
                .padding(.trailing, 8)
                
                
                
            }
            .background(Color.red.opacity(0))
            .ignoresSafeArea(edges: .top)
            
            
            HStack {
                
               
                
                ScrollViewReader { proxy in
                    
                    // Tu ZStack con el placeholder (si lo usas) iría aquí...
                    
                    ScrollView {
                        Text(text) // <-- Muestra el texto completo
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .id("bottom")
                    }
                    .frame(height: 40)
                    .background(Color.gray.opacity(0))
                    .cornerRadius(0)
                    .padding(.top, 0)
                    // --- 3. OBSERVA 'text' Y EJECUTA EL SCROLL ---
                    .onChange(of: text) {
                        withAnimation { // (Opcional: hace el scroll suave)
                            // Le dice al proxy que se mueva al ID "bottom"
                            // y se alinee con el borde de abajo.
                            proxy.scrollTo("bottom", anchor: .bottom)
                        }
                    }
                    
                    // Tu ZStack (si lo usas) se cerraría aquí
                }
                           
                Button(action: {

                    if !text.isEmpty {
                            text.removeLast()
                        }
                }) {
                  
                    Image(systemName: "delete.left.fill")
                        .font(.system(size: 13))
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            
            VStack{
                HStack{
                    
                    Button(isShifted ? "Q" : "q"){
                        text += (isShifted ? "Q" : "q")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "W" : "w"){
                        text += (isShifted ? "W" : "w")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "E" : "e"){
                        text += (isShifted ? "E" : "e")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "R" : "r"){
                        text += (isShifted ? "R" : "r")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "T" : "t"){
                        text += (isShifted ? "T" : "t")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "Y" : "y"){
                        text += (isShifted ? "Y" : "y")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "U" : "u"){
                        text += (isShifted ? "U" : "u")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "I" : "i"){
                        text += (isShifted ? "I" : "i")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "O" : "o"){
                        text += (isShifted ? "O" : "o")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "P" : "p"){
                        text += (isShifted ? "P" : "p")
                    }
                    .buttonStyle(PlainButtonStyle())
                    

                    
                }
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0))
                Spacer()
                HStack{
                    
                    Button(isShifted ? "A" : "a"){
                        text += (isShifted ? "A" : "a")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "S" : "s"){
                        text += (isShifted ? "S" : "s")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "D" : "d"){
                        text += (isShifted ? "D" : "d")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "F" : "f"){
                        text += (isShifted ? "F" : "f")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "G" : "g"){
                        text += (isShifted ? "G" : "g")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "H" : "h"){
                        text += (isShifted ? "H" : "h")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "J" : "j"){
                        text += (isShifted ? "J" : "j")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "K" : "k"){
                        text += (isShifted ? "K" : "k")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "L" : "l"){
                        text += (isShifted ? "L" : "l")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "Ñ" : "ñ"){
                        text += (isShifted ? "Ñ" : "ñ")
                    }
                    .buttonStyle(PlainButtonStyle())
                    

                    
                }
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0))
                Spacer()
                HStack{
                    
                    Button(action: {
                        // 1. La acción (el 'action') se mueve aquí adentro
                        isShifted.toggle()
                    }) {
                        // 2. La etiqueta (el 'label') va en este bloque
                        Image(systemName: isShifted ? "shift.fill" : "shift")
                            .font(.system(size: 13))
                            
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "Z" : "z") { // <-- Etiqueta condicional
                            text += (isShifted ? "Z" : "z") // <-- Acción condicional
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        
                        // --- BOTÓN X ---
                        Button(isShifted ? "X" : "x") {
                            text += (isShifted ? "X" : "x")
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        
                        // --- BOTÓN C ---
                        Button(isShifted ? "C" : "c") {
                            text += (isShifted ? "C" : "c")
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                    Button(isShifted ? "V" : "v") {
                            text += (isShifted ? "V" : "v")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "B" : "b"){
                        text += (isShifted ? "B" : "b")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "N" : "n"){
                        text += (isShifted ? "N" : "n")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(isShifted ? "M" : "m"){
                        text += (isShifted ? "M" : "m")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    
                    Button(action: {

                        
                    }) {
                        
                        Image(systemName: "numbers.rectangle")
                            .font(.system(size: 13))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    
                    

                    
                }
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0))
                Spacer()
                HStack{
                    Button("SPACE"){
                        text += " "
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0))
                
            }
            .frame(maxHeight: .infinity)
            .background(Color.red.opacity(0))
            
            
        }
        .ignoresSafeArea(edges: .top)
        .ignoresSafeArea(edges: .bottom)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar(.hidden)
        .ignoresSafeArea()
        .background(
                ZStack {
                    // --- 1. El truco para ocultar el reloj ---
                    VideoPlayer(player: nil)
                        .opacity(0)
                        .allowsHitTesting(false)
                        .accessibilityHidden(true)

                    // --- 2. Tu GeometryReader para medir ---
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                self.screenWidth = geometry.size.width
                            }
                    }
                }
            )
    }
}

#Preview {
    ContentView()
}
