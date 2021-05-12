//
//  TableVC.swift
//  Calorie Calculator 2
//
//  Created by Inan Khan on 5/12/21.
//

import UIKit

class TableVC: UIViewController {

    @IBOutlet weak var FitnessView: UITableView!
    let images = ["fitness", "runner", "fast-food"]
    let paras = ["For your workouts, focus on doing more reps (around 12-15 per set). This will cause your training sessions to be more hard core and intense, with a lot of sweating", "For cardio, you should be doing 2-3 sessions of moderate intensity training per week, and 1-2 sessions of high intensity training per week", "For your food, you must eat healthy as you are trying to lose weight, and also, you must be at a caloric defecit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FitnessView.delegate = self
        FitnessView.dataSource = self
    }
    

    

}

extension TableVC: UITableViewDelegate, UITableViewDataSource {
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
