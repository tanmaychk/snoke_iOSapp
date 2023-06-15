import UIKit

class calenderViewController: UIViewController, UICalendarSelectionMultiDateDelegate{


    var selectedDates: [DateComponents] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calenderView = UICalendarView(frame: UIScreen.main.bounds)
        let greCalendar = Calendar(identifier: .gregorian)
        let selection = UICalendarSelectionMultiDate(delegate: self)
        calenderView.selectionBehavior = selection
        calenderView.calendar = greCalendar
        calenderView.tintColor = .systemGreen
        self.view.addSubview(calenderView)
    }

    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didDeselectDate dateComponents: DateComponents) {
        print(dateComponents)
    }
    
    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didSelectDate dateComponents: DateComponents) {
        print(dateComponents)
    }
    
//    @objc func fetchDatesButtonTapped() {
//           selectedDates.removeAll()
//
//           for calDate in calendarArray {
//               let components = Calendar.current.dateComponents([.year, .month, .day], from: calDate.date)
//               selectedDates.append(components)
//           }
//
//           calendarView.reloadDecorations(forDateComponents: selectedDates, animated: false)
//       }
    
}
