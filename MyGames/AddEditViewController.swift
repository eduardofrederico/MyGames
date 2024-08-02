//
//  AddEditViewController.swift
//  MyGames
//
//  Created by Eduardo Frederico on 27/07/24.
//

import UIKit

class AddEditViewController: UIViewController {

    
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!

    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addEditCover(_ sender: UIButton) {
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
        if game == nil {
            game = Game(context: context)
        }
        game.title = tfTitle.text
        game.releaseDate = dpReleaseDate.date
        
        do {
            try context.save()
        } catch {
            print("Error")
        }
        
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
