//
//  FirstViewController.swift
//  TennisGuide
//
//  Created by Vladimir Saprykin on16.07.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    
    var factors = [Factor]()

    
    func setUpFactors() {
        let rival = Factor(name: "СОПЕРНИК", image: "rival.png")
        rival.params.append(Param(name: "Стиль игры"))
        rival.params.append(Param(name: "Технические стороны игры"))
        rival.params.append(Param(name: "Тактические стороны игры"))
        rival.params.append(Param(name: "Физиологическое развитие"))
        rival.params.append(Param(name: "Траектория мяча"))
        rival.params.append(Param(name: "Выбор удара"))
        
        let space = Factor(name: "СРЕДА", image: "Okruzhenie.png")
        space.params.append(Param(name: "Покрытие корта"))
        space.params.append(Param(name: "Инвентарь"))
        space.params.append(Param(name: "Погодные условия"))
        space.params.append(Param(name: "Зрители"))
        space.params.append(Param(name: "Психологическая устойчивость"))
        
        let player = Factor(name: "ИГРОК", image: "player.png")
        player.params.append(Param(name: "Стандартная игра"))
        player.params.append(Param(name: "Техническая концентрация"))
        player.params.append(Param(name: "Тактическое понимани"))
        player.params.append(Param(name: "Физиологическое развитие"))
        player.params.append(Param(name: "Интеллектуальные характеристики"))
        player.params.append(Param(name: "Опыт"))
        player.params.append(Param(name: "Стиль Игры"))
        player.params.append(Param(name: "Уровень тренировок"))
        player.params.append(Param(name: "Соревнования"))
        
        factors.append(rival)
        factors.append(space)
        factors.append(player)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpFactors()
        
        tableView.reloadData()
        title = "Основные факторы"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FirstDataCell
        
        let factor = factors[indexPath.row]
        
        cell.factorsLabel.text = "\(factor.rivalName)"
        cell.imageLabel.image = UIImage(named: "\(factor.rivalImage)")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let factor = factors[indexPath.row]
        performSegue(withIdentifier: "rivalDetail", sender: factor)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rivalDetail" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.factor = sender as! Factor
        }
    }
    
}
