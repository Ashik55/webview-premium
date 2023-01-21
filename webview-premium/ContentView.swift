//
//  ContentView.swift
//  webview-premium
//
//  Created by ashikur on 22/1/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @State private var showWebView = false
    private let urlString : String = "https://www.google.com/"
    
    
    var body: some View {
        Webview(url: URL(string: urlString)!).ignoresSafeArea()
    }
}


struct Webview : UIViewRepresentable {
    var url : URL
    
    func makeUIView(context : Context) -> WKWebView
    {
        return WKWebView()
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request  = URLRequest(url: url)
        uiView.load(request)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
