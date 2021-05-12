//
//  TableVC3.swift
//  Calorie Calculator 2
//
//  Created by Inan Khan on 5/12/21.
//

import UIKit

class TableVC3: UIViewController {
    @IBOutlet weak var FitnessView: UITableView!
    let images = ["fitness", "runner", "fast-food"]
    let paras = ["To gain weight, you should be doing your sets in the low rep range (4-6); this will cause you not too burn too much calories", "You shouldn't be doing any cardio at all; doing cardio will cause you to burn too much calories and lose weight", "For food, you should be bulking and eating above your maintenance calories"]
    override func viewDidLoad() {
        super.viewDidLoad()
        FitnessView.delegate = self
        FitnessView.dataSource = self
        
    }
    

}

extension TableVC3: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        275
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FitnessView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let image = images[indexPath.row]
        let para = paras[indexPath.row]
        cell.img.image = UIImage(named: image)
        cell.tips.text = para
        return cell
    }
    
    
}
