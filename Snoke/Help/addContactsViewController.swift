import UIKit
import Contacts
import ContactsUI
import SafariServices

class addContactsViewController: UIViewController, CNContactPickerDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var ContactsTable: UITableView!
    
    var contactsArray: [Contacts] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContactsTable.delegate = self
        ContactsTable.dataSource = self
        
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
                let name = contact.givenName
                print("Number is = \(phoneNumber.stringValue)")
                contactsArray.append(Contacts(name: name,sosContact: phoneNumber))
            }
        }
        ContactsTable.reloadData()
    }
    
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        print("Cancel Contact Picker")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allCell", for: indexPath) as! ContactTableViewCell
        let contacts = contactsArray[indexPath.row]
        if let phoneNumber = contacts.sosContact {
            cell.name?.text = contacts.name
            cell.phone?.text = contacts.sosContact?.stringValue
        } else {
            cell.textLabel?.text = nil
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contacts = contactsArray[indexPath.row]
        if let phoneNumber = contacts.sosContact?.stringValue {
            let number = phoneNumber.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
            if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
