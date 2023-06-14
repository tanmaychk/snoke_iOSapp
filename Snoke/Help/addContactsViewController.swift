//
//  addContactsViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 10/04/23.
//

import UIKit
import Contacts
import ContactsUI

class addContactsViewController: UIViewController, CNContactPickerDelegate{
    
    @IBOutlet var ContactsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    @IBAction func click_Contact(_ sender: Any) {
        let cnPicker = CNContactPickerViewController()
            cnPicker.delegate = self
            self.present(cnPicker, animated: true, completion: nil)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach { contact in
            for number in contact.phoneNumbers {
                let phoneNumber = number.value
                print("number is = \(phoneNumber)")
                contactsArray.append(Contacts(sosContact: phoneNumber))
            }
        }
    }
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        print("Cancel Contact Picker")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allCell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "allCell")

        let contact = contactsArray[indexPath.row]
        if let phoneNumber = contactsArray[1].sosContact {
            cell.textLabel?.text = phoneNumber.stringValue
        } else {
            cell.textLabel?.text = nil
        }

        return cell
        }
    
    
    
}
