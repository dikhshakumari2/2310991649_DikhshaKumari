

import UIKit

class FormTableViewController: UITableViewController {
    
    var emoji: Emoji?
    
    init?(emoji: Emoji?, coder: NSCoder) {
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        

    @IBOutlet weak var symbolTextfield: NSLayoutConstraint!
    
    @IBOutlet weak var nameTextField: NSLayoutConstraint!
    
    @IBOutlet weak var descriptionTextField:NSLayoutConstraint!
    
    @IBOutlet weak var emojiTextField: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(emoji?.symbol)
    }

   
    @IBOutlet var textFieldUpdated: [UITextField]!
    
    // ==> This needs to be commented out as the rows and sections have been statically defined.
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
}

