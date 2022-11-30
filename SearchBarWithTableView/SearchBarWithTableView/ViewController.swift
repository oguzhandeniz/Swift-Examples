//
//  ViewController.swift
//  SearchBarWithTableView
//
//  Created by Oğuzhan Deniz on 29.11.2022.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    var aramaSonucuUlkeler:[String] = [String]()
    var aramaYapiliyorMu = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye" ,
                   "Fransa" ,
                   "Almanya" ,
                   "İngiltere" ,
                   "Çin" ,
                   "Rusya" ,
                   "Polonya" ,
                   "Mısır" ,
                   "Irak" ,
                   "Güney Kore" ,
                   "Kanada" ,
                   "ABD" ,
                   "İtalya" ,
                   "Tunus" ,
                   "Arjantin" ,
                   "Kolombiya" ,
                   "Fas" ,
                   "Venezuela"
        ]
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController:UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if aramaYapiliyorMu
        {
            return aramaSonucuUlkeler.count
        }
        else
        {
            return ulkeler.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
  
        if aramaYapiliyorMu
        {
            cell.textLabel?.text = aramaSonucuUlkeler[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if aramaYapiliyorMu
        {
            print("Seçilen Ülke : \(aramaSonucuUlkeler[indexPath.row])")
        }
        else
        {
            print("Seçilen Ülke : \(ulkeler[indexPath.row])")
        }
    }
}

extension ViewController:UISearchBarDelegate
{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        print("Arama Sonucu : \(searchText)")
        
        if searchText == ""
        {
            aramaYapiliyorMu = false
        }
        else
        {
            aramaYapiliyorMu = true
          //aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})   BÖYLE KULLANILIRSA ARANAN HARFİ İÇEREN TÜM VERİLER GELİR
            aramaSonucuUlkeler = ulkeler.filter({ $0.lowercased().prefix(searchText.count) == searchText.lowercased()})  // BÖYLE KULLANILIRSA SADECE BAŞ HARFİ UYAN VERİLERİ GETİRİR
        }
        tableView.reloadData()
    }
}
