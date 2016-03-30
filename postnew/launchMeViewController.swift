//
//  launchMeViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/29/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class launchMeViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController!
    var pagetitle:NSArray!
    var pagetitle2: NSArray!
    var pagetextview:NSArray!
    var pageimagefile:NSArray!
    var pageimagefile2:NSArray!
    var pagename:NSArray!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pagetitle = NSArray(objects: "Grymes home","Wagner College Theatre announces ","Wagner grad volunteers ","Day of Giving fundraiser ","Seahawks Earn 79-75 NIT Win Over ","Ilya Kneppelhout Named NEC")
        self.pagetitle2 = NSArray(objects: "ravaged in fire" ,"2016 Stanley Drama Award winners","at Greek refugee camp","was biggest ever!","St. Bonaventurel; At Creighton","Men's Tennis Rookie of the Week")
        self.pageimagefile = NSArray(objects: "house" ,"unnamed5","unnamed1","unnamed2","unnamed4","unnamed3")
        
        self.pageimagefile2 = NSArray(objects: "image1","image2","images3","image4","image5","image3")
        
        self.pagename = NSArray(objects: "tom.bridget@wagner.edu","Steve.Martin@wagner.edu","Emily.Orange@wagner.edu","Ceecee.bridget@wagner.edu","bridget.martin@wagner.edu")
        
        self.pagetextview = NSArray(objects: "STATEN ISLAND, N.Y. — A Grymes Hill home damaged in a fire early Thursday morning is privately rented by several members of the Wagner College baseball team, but the students were not home during blaze, a school spokesman said. Baseball team members are playing in Virginia during spring break. The college will offer to accommodate any students in need of housing after the blaze in one of its residence halls on campus, the spokesman said. Four civilians suffered minor injuries in the 4:15 a.m. fire at 75 Cedar Terrace, according to an FDNY spokesman. The injured were taken to Richmond University Medical Center in West Brighton. Twenty-five units and 106 firefighters were summoned before the flames were brought under control around 6 a.m. sssFDNY marshals are still working to determine a cause for the blaze and their investigation continues, a Fire Department spokesman said.",
            "Award winner Mike Bencivenga and finalists Harold Ellis Clark and Alan Goodson The Wagner College Theatre has announced that the winner of this year’s Stanley Drama Award is Mike Bencivenga of Astoria, Queens, N.Y., for his two-act play, “Bad Hearts.”Two finalists for this year’s awards were also announced: Harold Ellis Clark of Gretna, La., for “Madame Thames’s Spirit Bar,” and Alan Goodson of Los Angeles, Cal., for “Morgenstern in Vienna.”The awards will be given on Monday, March 14 at 6 p.m. at the Player’s Club in Manhattan. The awards ceremony will be followed by a cocktail reception.The evening’s program will feature special guest presenter Jan Buttram, founder of the Abingdon Theatre Company, a not-for-profit theater company whose mission is to develop and produce new plays by American playwrights. For more information, contact our Special Events office by email (specialevents@wagner.edu) or telephone (718-390-9333). http://wagner.edu/newsroom/wagner-college-theatre-announces-2016-stanley-drama-award-winners/",
            "Left: Mallory Lee (center) with coworkers at Moria Refugee Camp. Right: Mallory Lee shares a moment with refugee family. When Lee first arrived in Lesvos, she had no place to live and did not know where she would be working. Paying her way out of her own pocket, she soon began working with an organization called Better Days for Moria. For the past six weeks, Lee has been reporting on her work and her experiences with sensitivity and grace. Her friends, colleagues, former teachers and family members who have had the privilege of reading her reports on social media have benefited from her insight and thoughtful writing. Responding to the intense emotions of such tragic circumstances, her instinct is always to acknowledge the complexity of the conditions that motivate refugees to leave their homeland and the humanity that they all share. As she told one journalist, everyone thinks I'm doing something sacrificial, and I hardly see it as a sacrifice. It's a gift to work here; my mind has been opened in ways unimaginable. Each day, she witnesses the frustration of the refugees, but together they also find joy in their shared life together. Her own account of her experience — quoted at length in an on-line story you can read here— is inspiring and full of wisdom. http://wagner.edu/newsroom/53685-2/ Recently, a network of aid organizations (including the one Lee works with) has been nominated for a Nobel Peace prize — but as Lee acknowledges, she doesn't see conditions improving anytime soon. More needs to be done, not only to help the refugees but also to combat ignorance about them.",
            "On Tuesday, during the national Day of Giving, the Wagner College family pulled together to produce the biggest single day of Wagner fundraising ever  even surpassing the totals raised by some of our larger neighbors.We experienced great success in reaching all of our goals on the Day of Giving,” said Wagner College President Richard Guarasci. “In raising $133,608 from 351 different people, this year’s Day of Giving proved to be the most successful single-day fundraiser in Wagner history. I am proud of the response the Wagner family gave to the challenges. Wagner is growing, and Tuesday’s achievements will help us gain even more success in the future. These achievements would not have been possible without the support of the campus community as a whole, and the collaborative effort between the Office of Institutional Advancement and the Communications & Marketing team,” said Patrick Minson, Wagner’s chief development officer. Our single-day fundraising effort was unmatched by neighboring schools that also took part in the Day of Giving, Minson added. Wagner raised more money than St. John’s University, and we had more individual donors than NYU. We are grateful for the continued support of Wagner’s dedicated alumni, students, faculty, staff and friends that makes this kind of success possible.",
            "Olean, NY – The Wagner men's basketball team built a 14-point halftime lead and withstood a late St. Bonaventure rally in earning a 79-75 victory over the Bonnies of the Atlantic 10 Conference in the first round of the 2016 National Invitation Tournament (NIT) in front of a loud, raucous crowd at the Reilly Center. In recording the first postseason victory in school history, which came over the No. 1-seeded Bonnies, the eighth-seeded Seahawks improve to 23-10 on the season. After staying in Buffalo, NY on Wednesday night, the Seahawks will take a charter flight on Thursday afternoon to Omaha, NE to meet the Creighton University Bluejays of the Big East Conference.The game vs. the fourth-seeded Bluejays will take place on Saturday, March 19 at Noon (Eastern Standard Time) in a contest that will be televised nationally on ESPN. Creighton advanced to the second round with a 72-54 home win over No. 5 seed Alabama tonight. Sophomore guard Romone Saunders (Temple Hills, MD / Potomac [Mt. Zion Prep]) came off the bench to score 21 points to lead four players in double figures.Redshirt senior guard Dwaun Anderson (Suttons Bay, MI/Suttons Bay) supplied 14 points, while redshirt junior forward Mike Aaman (Hazlet, NJ/Raritan [University of Rhode Island]) and junior guard Michael Carey (Nassau, Bahamas / Lamar Consolidated [San Jacinto College]) had 13 for the Northeast Conference (NEC) regular season champions.'No one gave us a chance,' said Wagner fourth-year head coach Bashir Mason. 'We came in with the approach that we had nothing to lose. Who cares if we win or not? Just go out and play hard and have fun.' Jaylen Adams scored a game-high 24 points and Marcus Posley added 17 for the Bonnies who finish the season with a mark of 22-8. 'I thought we didn't come out well at all. Give Wagner credit,' said St. Bonaventure head coach Mark Schmidt. 'I thought they played really well; they came at us and put us on our heels with the 1-1-3 zone. They hurt us in the first half and we didn't have any energy; they knocked us back. In the second half I thought we played hard, and we got ourselves back into the game, but every time we got close, Wagner made a play to stretch the lead out a bit.'St. Bonaventure, which was highest-ranked RPI team (No. 30) in the 32-team NIT field, led 5-4 early before a 22-5 surge by the Seahawks blew the game open. Saunders' three-pointer with 4:05 to play in the first half gave Wagner its biggest lead of the period at 36-19. . Saunders paced the Seahawks with 13 first-half points on 5-of-7 shooting while Carey and Aaman added nine and eight points, respectively, in helping the Seahawks build a 40-26 halftime lead. Wagner shot a scorching 54.8 percent (17-of-31) in the first half while limiting the Bonnies to 30 percent (9-of-30) from the field, and 13.2 percent (2-of-15) from beyond the arc. The Seahawks enjoyed a 21-15 rebounding edge in the opening stanza which led to a commanding 26-14 advantage in points in the paint. St. Bonaventure outscored Wagner 49-39 in the final frame and pulled within 71-69 on Denzel Gregg's jumper with 2:12 left.Saunders hit a huge three-pointer with 1:45 to play off an assist by sophomore guard JoJo Cooper(Wilmington, DE / Concord ) to stretch the lead to 74-69 and the Seahawks showed great poise in sealing the win by sinking 5-of-6 free throws in the final 12 seconds of play after Adams and Posley had hit late three-pointers.'We kept talking about the fact that we'd been in these kinds of situations during the season, and that all we had to do was stick together and keep playing,' said Mason, the 2016 NEC Coach of the Year who guided the Seahawks to the conference's regular season championship. 'And that's what we did.' The victory marks the third time in the last four years that an NEC NIT No.8 seed has knocked off a No.1 Robert Morris defeated Kentucky in 2013 and St. John's in 2014. Wagner All-Time in the Postseason NCAAMarch 21, 2003: Pittsburgh 87, Wagner 61 (Boston, MA) NIT March 16, 2016: Wagner 79, St. Bonaventure 75 (Olean, NY) March 13, 2002: Richmond 67, Wagner 64 (OT) (Richmond, VA) March 7, 1979: Old Dominion 83, Wagner 81 (Norfolk, VA) ",
            "Somerset, NJ – Freshman Ilya Kneppelhout (Woubrugge, Netherlands/Scala College Secondary School) of the Wagner men's tennis team was tabbed Northeast Conference (NEC) Rookie of the Week, for the week ending March 10, the conference announced this afternoon. For Kneppelhout, it is his first NEC Rookie of the Week selection. The first-year Netherlands produce added to his impressive freshman resume last week with a come-from-behind win over Drexel's Balaji Lakshmanan on Saturday. After dropping the first set, Kneppelhout would fight back to win a second set tiebreaker en route to a 2-6, 7-6 (0), 7-5 win in Philadelphia. Kneppelhout currently leads the Green & White with 11 dual match wins against four defeats. Follow Wagner Athletics on Facebook (facebook.com/WagnerAthletics), Twitter (@wagnerathletics), Instagram (@wagnerathletics) and YouTube (@WagnerSeahawks) for all the latest news and updates on the athletic department.",
            "")
        
        self.pageViewController =  self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController2") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as curlpageViewController
        
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
    
    
    func viewControllerAtIndex(index:Int) -> curlpageViewController {
        if ((self.pagetitle.count==0) || (index == self.pagetitle.count)) {
            return curlpageViewController()
        }
        
        
        
        
        let vc: curlpageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("curlpageViewController") as! curlpageViewController
        
        vc.imagefile = self.pageimagefile[index] as! String
        vc.title1index = self.pagetitle[index] as! String
        vc.title2index = self.pagetitle2[index] as! String
        vc.textfieldindex = self.pagetextview[index] as! String
        vc.imagefile2 = self.pageimagefile2[index] as! String
        vc .pageindex = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! curlpageViewController
        var index = vc.pageindex as Int
        
        if (index==0 || index == NSNotFound)
        {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! curlpageViewController
        var index = vc.pageindex as Int
        
        if (index == NSNotFound) {
            return nil
        }
        
        index++
        
        if (index == self.pagetitle.count) {
            return nil
        }
        return self.viewControllerAtIndex(index)
        
    }
    
    
    
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pagetitle.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
