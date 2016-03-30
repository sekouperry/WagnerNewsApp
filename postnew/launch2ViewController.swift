//
//  launch2ViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class launch2ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource  {
    
    var pageViewController: UIPageViewController!
    var pagetitle2:NSArray!
    var pagetitle22: NSArray!
    var pagetextview2:NSArray!
    var pageimagefile2:NSArray!
    var pageimagefile22:NSArray!
    var pagename2:NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.pagetitle2 = NSArray(objects: "A Good TurnOver After 34 seasons","Women’s Water Polo Ranked ","Wagner Baseball Opens Northeast")
        self.pagetitle22 = NSArray(objects: "Hameline hangs the towel",
            "18th In Latest CWPA Poll","Conference Play At Mount St. Mary's")
        self.pageimagefile2 = NSArray(objects: "athlete1","athlete2","athlete3")
         self.pageimagefile22 = NSArray(objects: "image1","image2","image3")
        
        self.pagename2 = NSArray(objects: "Claire.bridget@wagner.edu","Steve.Martin@wagner.edu","Emily.Orange@wagner.edu","Ceecee.bridget@wagner.edu","tom.martin@wagner.edu")
        
        self.pagetextview2 = NSArray(objects: "On November 22, Walt Hameline completed his 34th season as head football coach and athletic director with a riveting 23–20 win over Bryant, giving the Seahawks their second NEC title in the past three years. - See more at: http://wagner.edu/wagnermagazine/a-good-turnover/#sthash.oXSh93rj.dpuf And, he announced the following Monday, he also completed his long and successful head coaching career at Wagner. He handed the reins over to a beloved Wagner insider, Jason “Hoss” Houghtaling M’09, associate head coach. Hameline remains as athletic director. The 2014 campaign was the 24th winning season for the Green & White under Hameline. Hameline’s win record, 223-139-2, ranks fifth among active Football Championship Subdivision (FCS) head coaches. Houghtaling’s deep relationship with Wagner football goes back to 2006–09, his first coaching stint on Grymes Hill. He returned during the 2011–12 season and again this year for a total of seven years on the Wagner sidelines. His accomplishments include coaching the Seahawks’ record-setting quarterback Nick Doscher ’13 during Wagner’s 9–4 NEC Championship season of 2012, when the Seahawks became the first NEC team to win an NCAA FCS playoff game. 'I am thrilled that Jason Houghtaling will take over as Wagner head coach and I have full confidence that he will continue to keep the Seahawks on the path to success for years to come,” said Hameline. “His work ethic, passion, football knowledge, recruiting contacts, and familiarity with Wagner College are all major assets that will pay huge dividends for our program.'",
            "'Bridgeport, PA – The Wagner (15-9) women's water polo team ranked 18th in the latest Collegiate Water Polo Association (CWPA) National Top 25 Poll, announced by the league offices The Seahawks received 32 points in the voting process after an idle week. The Green & White continue their streak of being ranked in the top 25 since the initial preseason poll. Wagner is back in action March 26 in their Metro Atlantic Athletic Conference (MAAC) opener against Siena. CWPA Release",
            "Emmitsburg, MD  - The Wagner baseball team commences Northeast Conference (NEC) play this week in Emmitsburg, MD as the Seahawks get set to tangle with the Mount St. Mary's Mountaineers, Thursday March 24 through Saturday March 26. Probable Starters: Thursday Wagner: RHP Austin Goeke (1-1; 2.45 ERA) Mount: LHP Chad Diehl (1-3; 5.09 ERA)Friday game 1 Wagner: RHP Mike Adams (0-3; 7.59 ERA) Mount: LHP Pat Daly (0-2; 2.57 ERA) Friday game 2:Wagner: LHP Neil Abbatiello (0-1; 4.40 ERA) Mount: RHP Hunter Shuff (0-0; 6.94 ERA) Saturday Wagner: LHP Matt Morris (1-1; 4.50 ERA) Mount: RHP Connor Graber (0-3; 14.54 ERA)")
        
        self.pageViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController2") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as SportsViewController
        
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
    
    
    func viewControllerAtIndex(index:Int) -> SportsViewController {
        if ((self.pagetitle2.count==0) || (index == self.pagetitle2.count)) {
            return SportsViewController()
        }
        
        
        
        
        let vc: SportsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SportsViewController") as! SportsViewController
        
        
        vc.title12index = self.pagetitle2[index] as! String
        vc.title22index = self.pagetitle22[index] as! String
        vc.imagefile2 = self.pageimagefile2[index] as! String
        vc.textfield2index = self.pagetextview2[index] as! String
        vc.imageprofile = self.pageimagefile22[index] as! String
        vc.page2index = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! SportsViewController
        var index = vc.page2index as Int
        
        if (index==0 || index == NSNotFound)
        {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! SportsViewController
        var index = vc.page2index as Int
        
        if (index == NSNotFound) {
            return nil
        }
        
        index++
        
        if (index == self.pagetitle2.count) {
            return nil
        }
        return self.viewControllerAtIndex(index)
    
    
    }
    
    

}
