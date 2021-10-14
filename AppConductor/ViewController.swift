//
//  ViewController.swift
//  AppConductor
//
//  Created by user194392 on 10/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func taptoclosekeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    

    @IBAction func swipeToCloseKeyboard(_ sender: Any) {
        self.closeKeyboard()
    }
    
    private func closeKeyboard() {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.registerKeyboardEvents()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.unregisterKeyboardEvents()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    

}

extension ViewController{
    private func registerKeyboardEvents() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)    }
    
    private func unregisterKeyboardEvents() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification){
            print("Se abrio el teclado")
    }
    @objc private func keyboardWillHide(_ notification: Notification){
            print("Se cerro el teclado")
    }}

