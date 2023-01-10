import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Button 1") { }
                .buttonStyle(.bordered)
            
            
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
        
            
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
                    .renderingMode(.original)
            }
            .padding()
            
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
