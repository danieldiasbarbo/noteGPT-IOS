import SwiftUI

struct project_item: View{
    var titulo = "teste"
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .frame(width: 330, height: 80)
                .padding(10)
            Text(titulo)
                .font(.custom("Times", size:30))
                .foregroundColor(.black)
        }
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
                .font(.custom("Arial", size: 25))
                .foregroundColor(Color("azul_escuro"))
                .bold()
                .frame(height: 10)
        }
    }
}

struct profile: View{
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 340, height: 80)
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
                            .stroke(Color("azul_escuro"), lineWidth: 2)
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

struct PopupView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
              HStack {
                Spacer()
                Button(action: {
                  isPresented.toggle()
               }) {
                  Image(systemName: "xmark")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                }
             }
                Text("Como posso te ajudar?")
                    .font(.headline)
                    .padding()
                Button("Resuma") {
                }
                .frame(width: 250)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
                Button("Explique") {
                }
                .frame(width: 250)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
                Button("Me dê ideias") {
                }
                .frame(width: 250)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
                Button("Adicione") {
                }
                .frame(width: 250)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom, 10)
    
                .padding()
            }
        }
        .frame(width: 300, height: 500)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct projects_view: View {
    @State var AI_popup = false
    
    var body: some View {
        NavigationStack{
            VStack {
                profile().padding(30)
                headerProjeto()
                ScrollView {
                    VStack(spacing: 20) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 23)
                                .foregroundColor(Color("azul_escuro"))
                                .frame(width: 350)
                            VStack(spacing: 10){
                                ForEach(0..<10) {item in
                                    NavigationLink(destination: note_blocks(path: "Projeto \(item)")){
                                        project_item(titulo: "Projeto \(item)")
                                    }.overlay(
                                        Button(){
                                            AI_popup.toggle()
                                        } label: {
                                            Image(systemName: "brain.head.profile")
                                                .resizable()
                                                .frame(width: 20, height: 25)
                                                .padding(40)
                                                .foregroundColor(Color("azul_claro"))
                                        }
                                        
                                        .sheet(isPresented: $AI_popup) {
                                            PopupView(isPresented: $AI_popup)
                                        },
                                        alignment: .trailing
                                    )
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
