//
//  ViewController.swift
//  LoopScrollView
//
//  Created by mac on 11/29/15.
//  Copyright © 2015 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var scrollview: UIScrollView!
    
    var curpage : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width:CGFloat = view.frame.size.width
        let height:CGFloat = view.frame.size.height - 20
        
        scrollview.frame = CGRect(x: 0, y: 20, width: width, height: height)

        
        label1.frame = CGRect(x: width, y: 0, width: width, height: height)
        label2.frame = CGRect(x: 2 * width, y: 0, width: width, height: height)
        label3.frame = CGRect(x: 0, y: 0, width: width, height: height)
        scrollview.contentSize = CGSize(width: width * 3, height: height)
        scrollview.contentOffset = CGPoint(x: width, y: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //当前 page
        let width:CGFloat = view.frame.size.width
        let height:CGFloat = view.frame.size.height - 20
        curpage = Int(scrollview.contentOffset.x / view.frame.size.width)
        print(curpage)
        switch curpage {
        case 0 :
            
            //3 ,1 exchange
            var tmpLabel = label3
            label3 = label1
            label1 = tmpLabel
            
            //1 , 2 exchange
            tmpLabel = label2
            label2 = label3
            label3 = tmpLabel
            
            break
        case 1:
            break
        case 2:
            // 1 ,2 exchange
            var tmpLabel = label2
            label2 = label1
            label1 = tmpLabel
            
            //3,1 exchange
            tmpLabel = label3
            label3 = label2
            label2 = tmpLabel
            break
        default:
            break
        }
        label1.frame = CGRect(x: width, y: 0, width: width, height: height)
        label2.frame = CGRect(x: 2 * width, y: 0, width: width, height: height)
        label3.frame = CGRect(x: 0, y: 0, width: width, height: height)
        scrollview.contentOffset = CGPoint(x: width, y: 0)
    }


}

