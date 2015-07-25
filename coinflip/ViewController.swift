//
//  ViewController.swift
//  coinflip
//
//  Created by Benny Yan on 7/24/15.
//  Copyright (c) 2015 ___bear___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var words: UILabel!
   @IBAction func coin(sender: AnyObject) {
      var subject = ["bro","mate","dude","man",":)"];
      var which = arc4random_uniform(UInt32(subject.count));
      
      var content = "";
      
      var decision = arc4random_uniform(2)
      if (decision == 0) {
         content = "Its heads \(subject[Int(which)])!";
      }else{
         content = "Its tails mate!";
      }
      var mcontent = NSMutableAttributedString();
      mcontent = NSMutableAttributedString(string: content, attributes: [NSFontAttributeName:UIFont(name: "Helvetica-Bold", size: 36.0)!]);
      mcontent.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSRange(location:4,length:5))
      words.attributedText = mcontent;
   }
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      
      //this makes the image a pattern instead of a flat image.
      self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!);
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

