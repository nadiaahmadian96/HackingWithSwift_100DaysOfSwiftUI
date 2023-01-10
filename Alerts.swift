import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {

        Button("Show Alert!"){
            showingAlert = true
        }
        .alert("I'm Batman!",isPresented: $showingAlert) {
            Button("Whatever!", role: .destructive) { }
            Button("Cool!", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
