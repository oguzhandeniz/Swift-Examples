//
//  Router.swift
//  ViperPatternExample
//
//  Created by Oğuzhan Deniz on 1.03.2023.
//

import Foundation

class Router: PresenterToRouterProtocol {
    
    static func createModule(ref: ViewController) {
        
        let presenter = Presenter()
        
        // View Katmanı Değişkenleri
        ref.presenterNesnesi = presenter
        
        
        // Presenter Katmanı Değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        // Interactor Katmanı Değişkenleri
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
}
