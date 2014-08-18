//
//  XGMCalculoViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 18/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCalculoViewController.h"

@interface XGMCalculoViewController ()

@end

@implementation XGMCalculoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    switch (self.forma) {
        case 6:
            if(self.propriedade == 0){
                self.view = [self areaQuadrado];
            }else{
                self.view = [self diagonalQuadrado];
            }
            break;
            
        default:
            break;
    }
}

-(UIView *)areaQuadrado
{
    UIView *view = [[UIView alloc]init];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(160, 240, 60, 30)];
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIButton *calcularButton = [[UIButton alloc]initWithFrame:CGRectMake(160, 400, 60, 30)];
    calcularButton.titleLabel.text = @"Calcular";
    
    [view addSubview:ladoTF];
    [view addSubview:calcularButton];
    
    return view;
}

-(UIView *)diagonalQuadrado
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor yellowColor];
    
    return view;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
