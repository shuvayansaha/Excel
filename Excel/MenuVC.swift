//
//  MenuVC.swift
//  Excel
//
//  Created by Shuvayan Saha on 06/02/17.
//  Copyright © 2017 MagicMind Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var menuTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuTrailingConstraint2: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var menuView2: UIView!
    
    @IBOutlet weak var profileContainer: UIView!
    @IBOutlet weak var productsContainer: UIView!
    @IBOutlet weak var customersContainer: UIView!
    @IBOutlet weak var cartContainer: UIView!
    @IBOutlet weak var mySalesContainer: UIView!
    @IBOutlet weak var productionSchedules: UIView!
    @IBOutlet weak var blackContainer: UIView!
    

    @IBOutlet weak var productsOutlet: UIButton!
    @IBOutlet weak var customersOutlet: UIButton!
    @IBOutlet weak var cartOutlet: UIButton!
    @IBOutlet weak var mySalesOutlet: UIButton!
    @IBOutlet weak var productionSchedulesOutlet: UIButton!
    
    @IBOutlet weak var profileDetailsOutlet: UIButton!
    
    @IBOutlet weak var logoutOutlet: UIButton!

    var menuShowing1 = false
    var menuShowing2 = false


    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Navigation Bar text color
        navigationController?.navigationBar.barTintColor = UIColor(red: 235/255, green: 17/255, blue: 10/255, alpha: 1)
        
        // Navigation Bar text color
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        // Container Hide
        productsContainer.alpha = 0
        customersContainer.alpha = 0
        cartContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        blackContainer.alpha = 0

        // Navigation title bar text
        navigationItem.title = "Profile"


        // Tap Gesture
        blackContainer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleDismiss)))
        
        // Swipe gesture
        let swipeGestureLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.handleGesture))
        
        let swipeGestureRight = UISwipeGestureRecognizer(target: self, action: #selector(self.handleGesture))
        
        
        // Gesture swipe left and right
        swipeGestureLeft.direction = .left
        swipeGestureRight.direction = .right
        
        view.addGestureRecognizer(swipeGestureLeft)
        view.addGestureRecognizer(swipeGestureRight)
        
        // Menu 2 hide
        menuTrailingConstraint2.constant = -135

    
    }


    // Tap to dismiss View
    func handleDismiss() {
        
        blackContainer.alpha = 0
        
        if menuShowing1 {
            
            menuTrailingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
            menuShowing1 = !menuShowing1
        }
        
        
        if menuShowing2 {
            
            menuTrailingConstraint2.constant = -135
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
            menuShowing2 = !menuShowing2
        }

    }
 
    
    
    
    // Gesture function
    func handleGesture(sender:UISwipeGestureRecognizer) {
        
        if (sender.direction == .left) {
        
            menuTrailingConstraint.constant = 0
            blackContainer.alpha = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        
        } else if (sender.direction == .right) {
        
            menuTrailingConstraint.constant = 212
            blackContainer.alpha = 1
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        
        }
        
        menuShowing1 = !menuShowing1
        
        
        if menuShowing2 {
            
            menuTrailingConstraint2.constant = -135
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
            menuShowing2 = !menuShowing2
        }

    }

    
    

   
    
    // menu Button
    @IBAction func menuButton(_ sender: UIBarButtonItem) {
   
        menuShow()
        
        if menuShowing2 {

            menuTrailingConstraint2.constant = -135
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
        
            })
        
            menuShowing2 = !menuShowing2
        }
    }


    // Menu Button 2
    @IBAction func menu2(_ sender: UIBarButtonItem) {
        
        menuShow2()
        
        if menuShowing1 {
            
            menuTrailingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
            menuShowing1 = !menuShowing1
        }
    }
    
    
    // Products button
    @IBAction func products(_ sender: UIButton) {
        
        productsContainer.alpha = 1
        profileContainer.alpha = 0
        customersContainer.alpha = 0
        cartContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        
        productsOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)
        
        customersOutlet.backgroundColor = UIColor.white
        cartOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white

        navigationItem.title = "Products"
        
        menuShow()
    }
    
    // Customers button
    @IBAction func customers(_ sender: UIButton) {
        
        customersContainer.alpha = 1
        profileContainer.alpha = 0
        productsContainer.alpha = 0
        cartContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        
        customersOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)

        productsOutlet.backgroundColor = UIColor.white
        cartOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "Customers"
        
        menuShow()
    }
    
    // Cart button
    @IBAction func cart(_ sender: UIButton) {
        
        cartContainer.alpha = 1
        profileContainer.alpha = 0
        productsContainer.alpha = 0
        customersContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        
        cartOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)

        productsOutlet.backgroundColor = UIColor.white
        customersOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "Cart"
        
        menuShow()
    }
    
    // My Sales button
    @IBAction func mySales(_ sender: UIButton) {
        
        mySalesContainer.alpha = 1
        profileContainer.alpha = 0
        productsContainer.alpha = 0
        customersContainer.alpha = 0
        cartContainer.alpha = 0
        productionSchedules.alpha = 0
        
        mySalesOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)

        productsOutlet.backgroundColor = UIColor.white
        customersOutlet.backgroundColor = UIColor.white
        cartOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "My Sales"
        
        menuShow()
    }
    
    // Production Schedules Button
    @IBAction func productionSchedules(_ sender: UIButton) {
        
        productionSchedules.alpha = 1
        profileContainer.alpha = 0
        productsContainer.alpha = 0
        customersContainer.alpha = 0
        cartContainer.alpha = 0
        mySalesContainer.alpha = 0
        
        productionSchedulesOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)
        
        productsOutlet.backgroundColor = UIColor.white
        customersOutlet.backgroundColor = UIColor.white
        cartOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "Production Schedules"
        
        menuShow()
    }
    
    
    
    
    // Add Cart Button
    @IBAction func addCartButton(_ sender: UIBarButtonItem) {
        
        cartContainer.alpha = 1
        profileContainer.alpha = 0
        productsContainer.alpha = 0
        customersContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        
        cartOutlet.backgroundColor = UIColor(red: 236/255, green: 241/255, blue: 244/255, alpha: 1.0)
        
        productsOutlet.backgroundColor = UIColor.white
        customersOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "Cart"
        
        
        if menuShowing1 {
            menuTrailingConstraint.constant = 0
            blackContainer.alpha = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            menuShowing1 = !menuShowing1
        }

        if menuShowing2 {
            menuTrailingConstraint2.constant = -135
            blackContainer.alpha = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
                
            })
            menuShowing2 = !menuShowing2
        }

        
        
    }
    
    
    
    

    // Profile Details Button
    @IBAction func profileDetailsButton(_ sender: UIButton) {
        
        profileContainer.alpha = 1

        customersContainer.alpha = 0
        productsContainer.alpha = 0
        cartContainer.alpha = 0
        mySalesContainer.alpha = 0
        productionSchedules.alpha = 0
        
        customersOutlet.backgroundColor = UIColor.white
        productsOutlet.backgroundColor = UIColor.white
        cartOutlet.backgroundColor = UIColor.white
        mySalesOutlet.backgroundColor = UIColor.white
        productionSchedulesOutlet.backgroundColor = UIColor.white
        
        navigationItem.title = "Profile"
        
        if menuShowing1 {
            menuTrailingConstraint.constant = 0
            blackContainer.alpha = 0

            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            menuShowing1 = !menuShowing1
        }
        
        
        if menuShowing2 {
            menuTrailingConstraint2.constant = -135
            blackContainer.alpha = 0
           
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
                
            })
            menuShowing2 = !menuShowing2
        }

        
        
    }
    
    
    // Logout Details Button
    @IBAction func logoutButton(_ sender: UIButton) {
        
        // Moved to Home Screen
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC") as UIViewController
        self.present(controller, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    


   



    // Menu Showing Function
    
    func menuShow() {
        
        if menuShowing1 {
            menuTrailingConstraint.constant = 0
            blackContainer.alpha = 0

            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
        } else {
            
            menuTrailingConstraint.constant = 212
            blackContainer.alpha = 1
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing1 = !menuShowing1
        
    }
    
    
    
    // Menu2 Showing Function
    
    func menuShow2() {
        
        if menuShowing2 {
            menuTrailingConstraint2.constant = -135
            blackContainer.alpha = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            
        } else {
            
            menuTrailingConstraint2.constant = 0
            blackContainer.alpha = 1
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing2 = !menuShowing2
        
    }




}
