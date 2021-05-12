//
//  TableVC2.swift
//  Calorie Calculator 2
//
//  Created by Inan Khan on 5/12/21.
//

import UIKit

class TableVC2: UIViewController {

    @IBOutlet weak var FitnessView: UITableView!
    let images = ["fitness", "runner", "fast-food"]
    let paras = ["To maintain your weight, a mid level range of reps is ok per set (8-10)", "To maintain your weight, you don't really need to do that much cardio; 1-2 sessions of moderate intensity cardio per week is fine", "For food, consuming your maintenance calories is perfect for you"]
    override func viewDidLoad() {
        super.viewDidLoad()
        FitnessView.delegate = self
        FitnessView.dataSource = self
    }
    

}

extension TableVC2: UITableViewDelegate, UITableViewDataSource {
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
