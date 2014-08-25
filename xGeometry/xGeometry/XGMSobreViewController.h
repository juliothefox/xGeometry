//
//  XGMSobreViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 25/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMSobreViewController : UIViewController

@property (nonatomic) IBOutlet UITextView *sobreTV;
@property (nonatomic) NSString *sobre;

-(void)updateFont;

@end
