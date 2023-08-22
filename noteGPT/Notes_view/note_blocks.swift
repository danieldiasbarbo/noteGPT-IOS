//
//  note_blocks.swift
//  noteGPT
//
//  Created by Student05 on 22/08/23.
//

import SwiftUI

struct note_blocks: View {
    let layout = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180))
    ]
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            header()
            app_path()
            ScrollView{
                LazyVGrid(columns: layout) {
                    ForEach(1..<11) {
                        Single_note_block(texto:    "Nota \($0)").padding(40)
                    }
                }
            }
        }.background(Color("azul_escuro")).ignoresSafeArea()
    }
}

struct note_blocks_Previews: PreviewProvider {
    static var previews: some View {
        note_blocks()
    }
}
