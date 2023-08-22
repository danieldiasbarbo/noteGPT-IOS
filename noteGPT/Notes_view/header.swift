//
//  header.swift
//  noteGPT
//
//  Created by Student05 on 22/08/23.
//

import SwiftUI

struct header: View {
    var title: String = "TÍTULO TESTE"
    var body: some View {
        ZStack{
            Rectangle().frame(height: 70).foregroundColor(.black)
            Text(title).font(.title).bold().foregroundColor(.white)
        }
    }
    
    init() {
    }
    
    init(title:String) {
        self.title = title
    }
}

struct header_Previews: PreviewProvider {
    static var previews: some View {
        header()
    }
}
