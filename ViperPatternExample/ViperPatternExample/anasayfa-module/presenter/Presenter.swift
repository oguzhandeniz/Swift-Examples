//
//  Presenter.swift
//  ViperPatternExample
//
//  Created by Oğuzhan Deniz on 1.03.2023.
//

import Foundation

class Presenter : ViewToPresenterProtocol{
    
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    
    func toplamaYap(sayi1: String, sayi2: String) {
        interactor?.topla(sayi1: sayi1, sayi2: sayi2)
    }
    
    func carpmaYap(sayi1: String, sayi2: String) {
        interactor?.carp(sayi1: sayi1, sayi2: sayi2)
    }
}

extension Presenter : InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String) {
        view?.vieweVeriGonder(sonuc: sonuc)
    }
}
