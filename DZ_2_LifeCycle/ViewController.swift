//
//  ChildViewController.swift
//  DZ_2_LifeCycle
//
//  Created by user on 13/03/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: --Life Cycle
    
    // Срабатывет когда поступает сигнал на загрузку контроллера
    override func awakeFromNib() {
        super.awakeFromNib()
        
        log(title)
    }
    
    // Срабатывает после загрузки View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        log(title)
    }
    
    // Срабатывает перед появлением View на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        
        log(title)
    }
    
    // Срабатывает перед тем как размер вью поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        log(title)
    }
    
    // Срабатывает после того как размер вью изменился под размер экрана
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        log(title)
    }
    
    // Срабатывает когда вью появился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        log(title)
    }
    
    // Срабатывает перед поворотом экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        log(title)
    }
    
    // Срабатывает перед тем как вью пропадет с экрана
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        log(title)
    }
    
    // Срабатывает когда вью пропала с экрана
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        log(title)
    }
    
    // Срабатывает когда объект выгружается из памяти
    deinit {
       log(title)
    }
    
    // MARK: -- Configure
    
    func setupNavigationBar() {
        if self.restorationIdentifier == "RedViewController" {
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        } else {
            self.navigationController?.setNavigationBarHidden(true, animated: true)
        }
    }
    
}
