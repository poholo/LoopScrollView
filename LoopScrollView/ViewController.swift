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
        label1.frame = CGRectMake(width, 0, width, height)
        label2.frame = CGRectMake(2*width, 0, width, height)
        label3.frame = CGRectMake(0, 0, width, height)
        scrollview.contentSize = CGSizeMake(width*3, height)
        scrollview.contentOffset = CGPointMake(width, 0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
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
        label1.frame = CGRectMake(width,0,width,height)
        label2.frame = CGRectMake(2*width, 0, width, height)
        label3.frame = CGRectMake(0, 0, width, height)
        scrollview.contentOffset = CGPointMake(width, 0)
    }


}

