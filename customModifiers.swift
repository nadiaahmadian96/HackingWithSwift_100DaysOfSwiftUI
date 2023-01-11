//
//  ContentView.swift
//  test
//
//  Created by Nadia Ahmadian on 2023-01-11.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(spacing: 10) {
            Text("First")
                .titleStyle()
            Text("Second")
                .foregroundColor(.yellow)
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking with Swift")

            
        }
    }
}

struct Title : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View{
    func titleStyle() -> some View{
        modifier(Title())
    }
}
///Custom modifiers can do much more than just apply other existing modifiers – they can also create new view structure, as needed. Remember, modifiers return new objects rather than modifying existing ones, so we could create one that embeds the view in a stack and adds another view:

struct Watermark: ViewModifier{
    var text : String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
            
        }
    }
}

extension View{
    func watermarked(with text : String)->some View{
        modifier(Watermark(text: text))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
