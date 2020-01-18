//
//  Webview.swift
//  jumsimi_ios
//
//  Created by jihyeon on 2020/01/18.
//  Copyright © 2020 jihyeon. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        
        wkWebView.load(request)
        return wkWebView
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
        
    }
    
}

