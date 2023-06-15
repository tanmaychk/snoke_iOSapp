import UIKit

class CalenderViewController: UIViewController, UICalendarSelectionMultiDateDelegate {
    
    var selectedDates: [DateComponents] = []
    var calendarView: UICalendarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendarView = UICalendarView(frame: UIScreen.main.bounds)
        let greCalendar = Calendar(identifier: .gregorian)
        let selection = UICalendarSelectionMultiDate(delegate: self)
        calendarView.selectionBehavior = selection
        calendarView.calendar = greCalendar
        calendarView.tintColor = .systemGreen
        self.view.addSubview(calendarView)
        
        let fetchDatesButton = UIButton(type: .system)
        fetchDatesButton.setTitle("Fetch Dates", for: .normal)
        fetchDatesButton.addTarget(self, action: #selector(fetchDatesButtonTapped), for: .touchUpInside)
        fetchDatesButton.frame = CGRect(x: 0, y: 0, width: 120, height: 40)
        fetchDatesButton.center = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height - 100)
        self.view.addSubview(fetchDatesButton)
    }
    
    @objc func fetchDatesButtonTapped() {
        // Replace this with your array of dates
        let datesToHighlight: [Date] = [Date(), Date().addingTimeInterval(86400), Date().addingTimeInterval(86400 * 2)]
        
        // Clear previously selected dates
        selectedDates.removeAll()
        
        // Iterate through the array and convert dates to DateComponents
        for date in datesToHighlight {
            let components = calendarView.calendar.dateComponents([.year, .month, .day], from: date)
            selectedDates.append(components)
        }
        
        // Update the calendar with selected dates
        calendarView.reloadDecorations(forDateComponents: selectedDates, animated: false)
    }
    
    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didDeselectDate dateComponents: DateComponents) {
        print(dateComponents)
    }
    
    func multiDateSelection(_ selection: UICalendarSelectionMultiDate, didSelectDate dateComponents: DateComponents) {
        print(dateComponents)
    }
    
    func setSelectedDates(_ selectedDates: [DateComponents], animated: Bool) {
        // Handle setting the selected dates if needed
    }
}
