//
//  note_view.swift
//  noteGPT
//
//  Created by Student05 on 22/08/23.
//

import SwiftUI

struct note_view: View {
    
    var nota = "Mussum Ipsum, cacilds vidis litro abertis. Aenean aliquam molestie leo, vitae iaculis nisl. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Detraxit consequat et quo num tendi nada."
    var path = "caminho"
    var head = "Projeto"
    @State var AI_popup = false
    
    func showPopup() {
            AI_popup.toggle()
        }
    
    var body: some View {
            VStack(spacing: 0){
                header(title: head)
                app_path(path: path)
                Spacer()
                ZStack(alignment: .center){
                    Rectangle()
                        .frame(width: 350, height: 500)
                        .cornerRadius(30)
                        .foregroundColor(.white)
                    Text(nota).frame(width: 300, height: 450)
                    VStack{
                        HStack{
                            Button(action: showPopup) {
                                Image(systemName: "brain.head.profile")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                    .padding(40)
                                    .foregroundColor(Color("azul_claro"))
                            }
                        }
                        Spacer()
                    }
                }
                Spacer()
            }.background(Color("azul_escuro")).ignoresSafeArea()
            .sheet(isPresented: $AI_popup) {
                PopupView(isPresented: $AI_popup)
            }
        }
    
    init() {
        
    }
    
    init(path: String, head:String){
        self.path = path
        self.head = head
    }
    
    init(nota:String) {
        self.nota = nota
    }
    
    
}

struct note_view_Previews: PreviewProvider {
    static var previews: some View {
        note_view()
    }
}
