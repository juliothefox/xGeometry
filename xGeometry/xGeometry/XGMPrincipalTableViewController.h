//
//  XGMPrincipalTableViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 08/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMPrincipalTableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic) NSArray *arrayPlist;
@property (nonatomic) NSArray *arrayIcons;
@property (nonatomic) NSInteger index;

@end
