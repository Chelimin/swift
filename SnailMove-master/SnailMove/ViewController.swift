//
//  ViewController.swift
//  SnailMove
//
//  Created by Behera, Subhransu on 6/18/16.
//  Copyright © 2016 subh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var snailImgView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func moveBtnTapped(sender: AnyObject) {
    snailAnimation()
  }

  @IBAction func moveLeftBtnTapped(sender: AnyObject) {
    snailAnimationLeft()
  }
  
  @IBAction func moveRightBtnTapped(sender: AnyObject) {
    snailAnimationRight()
  }
  
  @IBAction func tripBtnTapped(sender: AnyObject) {
    // implement trip animation. Move in left, top, right, down direction
    snailAnimationTrip()
  }
  
  func snailAnimation() {
    UIView.animateWithDuration(1.5) {
      if self.snailImgView.frame.origin.x == 20.0 {
        self.snailImgView.frame = CGRectMake(295, 472, 70, 70)
//          move right (x(from left),y(from top),width,height)
      } else {
        self.snailImgView.frame = CGRectMake(20, 472, 70, 70)
      }
    }
  }
    
    func snailAnimationLeft() {
        UIView.animateWithDuration(1.5) {
                self.snailImgView.frame = CGRectMake(20, 472, 70, 70)
            }
        }

    func snailAnimationRight() {
        UIView.animateWithDuration(1.5) {
            self.snailImgView.frame = CGRectMake(295, 472, 70, 70)
        }
    }
    
    func snailAnimationTrip() {
        UIView.animateWithDuration(1.5) {
            self.snailImgView.frame = CGRectMake(200, 50, 70, 70)
        }
    }
    

}

