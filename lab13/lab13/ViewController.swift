//
//  ViewController.swift
//  lab13
//
//  Created by mmslab406-mini2018-2 on 2022/7/7.
//

import UIKit

class DataModel : Codable {
    var myNumber = 0
    var myString = ""
}

class ViewController: UIViewController {

    class MRTModel : Codable {
        var result : result
    }
    class result : Codable {
        var records : [records]
    }
    class records : Codable {
        var SiteName : String
        var Status : String
    }
    
    @IBOutlet var tableView: UITableView!
    var myData : MRTModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func getDataFromApi(_ sender: Any) {
        let usrString = "https://api.italkutalk.com/api/air"
        let url = URL(string: usrString)
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request){ data, response, error in
            if(error != nil){
                print("發送失敗",error!.localizedDescription)
            }
            else{
                print("發送成功")
                DispatchQueue.main.async {
                    do{
                        self.myData = try JSONDecoder().decode(MRTModel.self, from: data!)
                        self.tableView.reloadData()
                    }
                    catch {
                        print(error.localizedDescription)
                    }
                }
            }
        }
        task.resume()
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData?.result.records.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell")
        
        if cell == nil { //若沒讀取到，則自己初始化一個表格視圖單元格
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "reuseCell")
        }
        let info = myData?.result.records[indexPath.row]
        
        cell!.textLabel?.text = info?.SiteName ?? ""
        cell!.detailTextLabel?.text = info?.Status ?? ""
        
        return cell!
    }
}

