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
    var path = "Projeto01"
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading,spacing: 0){
                header(title: path)
                app_path(path: "\(path) -> Notas")
                ScrollView{
                    LazyVGrid(columns: layout) {
                        ForEach(1..<11) { item in
                            NavigationLink(destination: note_view(path:"\(path) -> Notas -> Nota \(item)", head: path)){
                                Single_note_block(texto:"Nota \(item)").padding(10)
                            }
                        }
                    }
                }
            }.background(Color("azul_escuro")).ignoresSafeArea()
        }.ignoresSafeArea()
    }
}

struct note_blocks_Previews: PreviewProvider {
    static var previews: some View {
        note_blocks()
    }
}
