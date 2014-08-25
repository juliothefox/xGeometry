//
//  XGMResultadoViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMResultadoViewController : UIViewController

@property (nonatomic) IBOutlet UITextView *resultadoTV;
@property (nonatomic) NSString *resultado;

-(void)updateFont;

@end
