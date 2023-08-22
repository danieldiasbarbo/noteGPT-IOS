//
//  Single_note_block.swift
//  noteGPT
//
//  Created by Student05 on 22/08/23.
//

import SwiftUI

struct Single_note_block: View {
    
    var texto = "Titulo nota"
    
    var body: some View {
        ZStack{
            Rectangle().frame(width: 150, height: 150).foregroundColor(.white).cornerRadius(10)
            Text(texto).foregroundColor(.black).bold()
        }
    }
    
    init() {
        
    }
    
    init(texto:String){
        self.texto = texto
    }
}

struct Single_note_block_Previews: PreviewProvider {
    static var previews: some View {
        Single_note_block()
    }
}
