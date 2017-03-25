//
//  SuperHeroTableViewCellTests.swift
//  KataScreenshot
//
//  Created by Sergio Gutiérrez on 09/01/17.
//  Copyright © 2017 Karumi. All rights reserved.
//

import UIKit
import XCTest
@testable import KataScreenshot

class SuperHeroTableViewCellTests: ScreenshotTest {
    
    func testShowsAnySuperHero() {
        let cell = givenASuperHeroTableViewCell()
        
        cell.configure(forItem: SuperHero(name: "Test Super Hero", photo: URL(string: ""), isAvenger: false, description: ""))
        
        verify(view: cell)
    }
    
    func testShowsAnyAvenger() {
        let cell = givenASuperHeroTableViewCell()
        
        cell.configure(forItem: SuperHero(name: "Test Avenger", photo: URL(string: ""), isAvenger: true, description: ""))
        
        verify(view: cell)
    }
    
    func testShowsAnySuperHeroWithALongName() {
        let cell = givenASuperHeroTableViewCell()
        
        cell.configure(forItem: SuperHero(name: "Test Super Hero With a very long name and indeed it is very long this name", photo: URL(string: ""), isAvenger: false, description: ""))
        
        verify(view: cell)
    }

    private func givenASuperHeroTableViewCell() -> SuperHeroTableViewCell {
        return UINib(nibName: "SuperHeroTableViewCell", bundle: Bundle.main).instantiate(withOwner: self, options: nil)[0] as! SuperHeroTableViewCell
    }
}
