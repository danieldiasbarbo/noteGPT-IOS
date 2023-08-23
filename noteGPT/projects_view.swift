//
//  projects_view.swift
//  noteGPT
//
//  Created by Student05 on 23/08/23.
//

import SwiftUI

struct project_item: View{
    var titulo = "teste"
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.white)
            .frame(width: 330, height: 80)
            .padding(10)
            .overlay(
                Text(titulo)
                    .font(.custom("Times", size:30))
            )
    }
    init(titulo: String) {
        self.titulo = titulo
    }
    
    init(){
        
    }
}

struct headerProjeto: View {
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.gray)
                .padding(.horizontal)
                .position(x:170, y:-20)
                .foregroundColor(.white)
                .frame(width: 346, height: 70)
                .overlay(
                    RoundedRectangle(cornerRadius: 35)
                        .stroke(Color("azul_escuro"), lineWidth: 1)
                )
            Text("Projetos")
                .font(.custom("Arial", size: 30))
                .foregroundColor(.black)
                .bold()
                .frame(height: 10)
        }
    }
}

struct profile: View{
    var body: some View{
        ZStack{
            Rectangle() // Moldura arredondada
                .foregroundColor(.white) // Cor de fundo da moldura
                .frame(width: 340, height: 80) // Tamanho da moldura
                .overlay(
                    RoundedRectangle(cornerRadius: 42.5)
                        .stroke(.black, lineWidth: 2)
                )
            
            HStack{
                Image("userImage")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color("azul_escuro"), lineWidth: 2) // Cor e largura da borda
                    )
                Spacer()
                Text("Bem-vindo(a), Jango!")
                    .font(.custom("times", size: 25))
                    .foregroundColor(.black)
                Spacer()
                
            }
        }
    }
}

struct projects_view: View {
    var body: some View {
        NavigationStack{
            VStack {
                profile().padding(30)
                headerProjeto()
                ScrollView {
                    VStack(spacing: 20) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 23) // Moldura arredondadaa
                                .foregroundColor(Color("azul_escuro")) // Cor de fundo da moldura
                                .frame(width: 350) // Tamanho da moldura
                            VStack(spacing: 10){
                                ForEach(0..<10) {item in
                                    NavigationLink(destination: note_blocks(path: "Projeto \(item)")){
                                        project_item(titulo: "Projeto \(item)")
                                    }
                                }
                            }
                            
                        }
                    }
                }.cornerRadius(10)
                
            }
        }
        .ignoresSafeArea()
        
    }
}

struct projects_view_Previews: PreviewProvider {
    static var previews: some View {
        projects_view()
    }
}
