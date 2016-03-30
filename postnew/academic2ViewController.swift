//
//  academic2ViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class academic2ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource  {
    var pageViewController: UIPageViewController!
    var pagetitle3:NSArray!
    var pagetitle23: NSArray!
    var pagetextview3:NSArray!
    var pageimagefile3:NSArray!
    var pageimagefile23:NSArray!
    var pagename3:NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pagetitle3 = NSArray(objects: "N.Y. Times ranks Wagner #6 in America ","Wagner named 1 of only 50 nationwide ","Art professor Bill Murphy  ")
        self.pagetitle23 = NSArray(objects: "among ‘value added’ colleges","That Create Futures","to document New York Wheel construction")
        self.pageimagefile3 = NSArray(objects: "news1","news3","new2")
        self.pageimagefile23 = NSArray(objects: "image2","image3","image5")
        
        self.pagename3 = NSArray(objects: "Claire.bridget@wagner.edu","Steve.Martin@wagner.edu","Emily.Orange@wagner.edu","Ceecee.bridget@wagner.edu","tom.martin@wagner.edu")
        
        self.pagetextview3 = NSArray(objects: "A New York Times columnist this week ranked Wagner College #6 on a list of the highest “value added” colleges in the nation. In his “Common Sense” column in the Times’ Oct. 2 Business Day section, writer James B. Stewart sought to unravel the tangled web woven by the dozens of college rankings that have been produced.His goal? To come up with a simple, common-sense method that would circumvent all “the same flaws that afflict nearly every other college ranking system: There is no way to know what, if any, impact a particular college has on its graduates’ earnings, or life for that matterWorking with Brookings Institution fellow Jonathan Rockwell, who had developed an innovative scale measuring the “value added” by a college to what its students bring with them to campus, they put together a ranking that zeroed out the impact of the students’ majors. They called it “the Brookings-Common Sense ranking.” All of the top 10 were liberal arts schools.And right in the middle of that top 10 was Wagner College at #6 in the nation.",
            "Wagner College was one of only 50 colleges throughout the country that was included in a highly exclusive new guide to best-value schools published by Princeton Review, “Colleges That Create Futures: 50 Schools That Launch Careers by Going Beyond the Classroom,” which was released in September. Out of several hundred colleges the Princeton Review considered for this book, the 50 schools that made the cut comprise only about 2 percent of the nation’s approximately 2,600 four-year colleges. The selection process factored in data from the company’s surveys of administrators at hundreds of universities between 2013 and 2015 and of 18,000 students attending the schools. The Princeton Review also conducted 200 interviews with current faculty, administrators and alumni of schools in making its choices of the final 50 colleges featured in the book. Specifically, the Princeton Review editors weighed information about the colleges’ career center services, internship, externship, cooperative learning and collaborative research opportunities, and student engagement in community service and study abroad programs.“Simply put, Wagner and the other colleges we chose for this book are stellar at putting the ‘hire’ in ‘higher education,’ ” said Robert Franek, author of the book with the Princeton Review staff. “We commend these schools for the extraordinary opportunities they are giving their students for practical, hands-on learning that complements their academic experiences.”",
            "Wagner College art professor Bill Murphy has been tapped by the company building the New York Wheel to graphically document the project’s construction, from start to finish, for use in a commemorative coffee table book, posters and other applications.The New York Wheel will be a 630-foot observation wheel overlooking New York’s upper harbor from the St. George neighborhood of Staten Island. The project site is adjacent to the Staten Island Ferry depot. The wheel, which will rise to more than twice the height of the Statue of Liberty, will become one of the most prominent features of the harbor skyline.Bill Murphy was born on Staten Island in 1952. He attended public school here and, later, Brooklyn College, the School of Visual Arts, the Art Students League and Vermont College. At the School of Visual Arts he studied with, among others, Jim Kearns, Herb Katzman, Marshall Arisman, Louise Bourgoise and the illustrator Robert Weaver. He has taught at Wagner College since 1994 and directs the Wagner College Gallery.Murphy is a particularly apt choice for the job of graphically documenting the latest landmark to rise from the Staten Island waterfront. Much of his work — some of which can be found on the artist’s website — documents the decaying remnants of Staten Island’s maritime history. In this new project, he will document the Island waterfront’s next chapter.Murphy says that he has already begun to scope out the construction site, “but there’s really not a whole to see down there yet.”Those interested in following the progress of the New York Wheel can visit the project’s website, which includes a live webcam showing the construction area.")
        
        self.pageViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController2") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as academicViewController
        
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
    
    
    func viewControllerAtIndex(index:Int) -> academicViewController{
        if ((self.pagetitle3.count==0) || (index == self.pagetitle3.count)) {
            return academicViewController()
        }
        
        
        
        
        let vc: academicViewController = self.storyboard?.instantiateViewControllerWithIdentifier("academicViewController") as! academicViewController
        
        
        vc.title13index = self.pagetitle3[index] as! String
        vc.title23index = self.pagetitle23[index] as! String
        vc.imagefile23 = self.pageimagefile3[index] as! String
        vc.textfield3index = self.pagetextview3[index] as! String
        vc.imageprofile3 = self.pageimagefile23[index] as! String
        vc.page3index = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! academicViewController
        var index = vc.page3index as Int
        
        if (index==0 || index == NSNotFound)
        {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! academicViewController
        var index = vc.page3index as Int
        
        if (index == NSNotFound) {
            return nil
        }
        
        index++
        
        if (index == self.pagetitle3.count) {
            return nil
        }
        return self.viewControllerAtIndex(index)
        
        
    }

    

}
