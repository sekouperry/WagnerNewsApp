//
//  Art2ViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class Art2ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController!
    var pagetitle4:NSArray!
    var pagetitle24: NSArray!
    var pageimagefile4:NSArray!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.pagetitle4 = NSArray(objects: "Les Demoiselles ","Three woman","Happy")
        self.pagetitle24 = NSArray(objects: "d'Avignon","at the spring","Easter!!!!!")
        self.pageimagefile4 = NSArray(objects: "painting1","painting3","painting2")
       
        self.pageViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController2") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as ArtViewController
        
        let viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as AnyObject! as? [UIViewController], direction:UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
        
        self.pageViewController.view.frame = CGRectMake(0,100, self.view.frame.size.width, self.view.frame.size.height-100)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewControllerAtIndex(index:Int) -> ArtViewController{
        if ((self.pagetitle4.count==0) || (index == self.pagetitle4.count)) {
            return ArtViewController()
        }
        
        
        
        
        let vc: ArtViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ArtViewController") as! ArtViewController
        
        
        vc.title14index = self.pagetitle4[index] as! String
        vc.title24index = self.pagetitle24[index] as! String
        vc.imagefile4 = self.pageimagefile4[index] as! String
       
        vc.pageindex = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! ArtViewController
        var index = vc.pageindex as Int
        
        if (index==0 || index == NSNotFound)
        {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! ArtViewController
        var index = vc.pageindex as Int
        
        if (index == NSNotFound) {
            return nil
        }
        
        index++
        
        if (index == self.pagetitle4.count) {
            return nil
        }
        return self.viewControllerAtIndex(index)
        
        
    }

   
}
