//
//  ViewController.swift
//  Covid 1 Test
//
//  Created by Yogesh Tekwani on 6/1/23.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    var xdata : [Details] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        reqData(completionHandler: { data in
            
            self.xdata = data!
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        })
        tableView.dataSource = self
        tableView.delegate = self
        tableView.frame = self.view.bounds
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.addSubview(tableView)
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return xdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else{
            return UITableViewCell()
        }
        cell.textLabel?.text = xdata[indexPath.row].state
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let svc = SecondViewController()
        
        svc.l1label = "Date: \(xdata[indexPath.row].date ?? 0)"
        svc.l2label = "Positive Cases: \(xdata[indexPath.row].positive ?? 0)"
        svc.l3label = "Deaths: \(xdata[indexPath.row].death ?? 0)"
        svc.l4label = "In Hospital: \(xdata[indexPath.row].hospitalized ?? 0)"
        navigationController?.show(svc, sender: self)
        
    }
}
