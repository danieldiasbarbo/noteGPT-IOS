//
//  app_path.swift
//  noteGPT
//
//  Created by Student05 on 22/08/23.
//

import SwiftUI

struct app_path: View {
    
    var path = "Projeto01 -> Notas"
    
    var body: some View {
        ZStack{
            Rectangle().frame(height: 50).foregroundColor(Color("azul_claro"))
            Text(path).bold().foregroundColor(.white)
        }
    }
    
    init() {
    }
    
    init(path:String) {
        self.path = path
    }
}

struct app_path_Previews: PreviewProvider {
    static var previews: some View {
        app_path()
    }
}
