//
//  ViewController.swift
//  ChooseThePill
//
//  Created by Pedro Pereirinha on 08/06/16.
//  Copyright © 2016 EpicDory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	
	@IBOutlet weak var introLabel: UILabel!
	
	@IBOutlet weak var pillLabel: UILabel!
	
	@IBOutlet weak var bluePillImg: UIImageView!
	
	@IBOutlet weak var redPillImg: UIImageView!

	@IBOutlet weak var takeBlueBtn: UIButton!
	
	@IBOutlet weak var takeRedBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let introTxt = "This is your last chance. After this there is no turning back."
		introLabel.text = introTxt
		
		printPillText()
		
	}

	@IBAction func onBlueClick(sender: AnyObject) {
		if checkImgStat(redPillImg) {
			toggleImg(redPillImg)
			printBluePillText()
			takeRedBtn.userInteractionEnabled = false
		} else {
			toggleImg(redPillImg)
			printPillText()
			takeRedBtn.userInteractionEnabled = true
		}
	}
	
	@IBAction func onRedClick(sender: AnyObject) {
		if checkImgStat(bluePillImg) {
			toggleImg(bluePillImg)
			printRedPillText()
			takeBlueBtn.userInteractionEnabled = false
		} else {
			toggleImg(bluePillImg)
			printPillText()
			takeBlueBtn.userInteractionEnabled = true
		}
	}
	
	func checkImgStat(img: UIImageView) -> Bool {
		if img.hidden {
			return false
		} else {
			return true
		}
	}
	
	func toggleImg(img: UIImageView) {
		if checkImgStat(img) {
			img.hidden = true
		} else {
			img.hidden = false
		}
	}
	
	func printPillText() {
		pillLabel.text = ""
		
		let bluePillTxt = "You take the blue pill: the story ends, you wake up in your bed and believe whatever you want to believe."
		let redPillTxt = "You take the red pill: you stay in Wonderland and I show you how deep the rabbit hole goes."
		
		let pillTxt: [String] = [bluePillTxt, redPillTxt]
		
		for text in pillTxt {
			if pillLabel.text == "" {
				pillLabel.text = text + "\n"
			} else {
				pillLabel.text = pillLabel.text! + text
			}
		}
	}
	
	func printBluePillText() {
		pillLabel.text = ""
		
		let line1 = "... it begins to get dark..."
		let line2 = "... the alarm clock goes off, it's 6:15 in morning. You feel like a lamb to the slaughter."
		
		let pillTxt: [String] = [line1, line2]
		
		for text in pillTxt {
			if pillLabel.text == "" {
				pillLabel.text = text + "\n"
			} else {
				pillLabel.text = pillLabel.text! + text
			}
		}
	}
	
	func printRedPillText() {
		pillLabel.text = ""
		
		let line1 = "... your brain starts to rush. Images and colors rush by..."
		let line2 = "... as you feel the awakening to a new reality."
		
		let pillTxt: [String] = [line1, line2]
		
		for text in pillTxt {
			if pillLabel.text == "" {
				pillLabel.text = text + "\n"
			} else {
				pillLabel.text = pillLabel.text! + text
			}
		}
	}
}

