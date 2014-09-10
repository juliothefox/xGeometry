//
//  XGMTutorialViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 10/09/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMTutorialViewController : UIViewController <UIScrollViewDelegate, UIPageViewControllerDelegate>
{
    BOOL pageControlBeingUsed;
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end
