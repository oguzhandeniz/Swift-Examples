//
//  FilmHucre.swift
//  CollectionViewExample
//
//  Created by Oğuzhan Deniz on 4.11.2022.
//

import UIKit

protocol FilmHucreProtocol
{
    func sepeteEkle(indexPath: IndexPath)
}

class FilmHucre: UICollectionViewCell
{
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    @IBAction func sepeteEkleButton(_ sender: Any)
    {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
    
    
    var hucreProtocol: FilmHucreProtocol?
    var indexPath: IndexPath?
    
}
