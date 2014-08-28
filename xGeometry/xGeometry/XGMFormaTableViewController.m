//
//  XGMFormaTableViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 12/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMFormaTableViewController.h"
#import "XGMCalculoViewController.h"
#import "XGMExplicacaoViewController.h"

@interface XGMFormaTableViewController ()

@end

@implementation XGMFormaTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    if(!self.formaArray)
    {
        self.formaArray = [[NSMutableArray alloc]init];
    }
    
    //Seta o título da view
    self.title = [self.formaDictionary objectForKey:@"Forma"];
    
    //Cria um array para definir a textLabel das células da viewController
    for(int i=1;i<self.formaDictionary.count;i++)
    {
        //Pega as strings do dictionary e adiciona ao array
        [self.formaArray addObject:[self.formaDictionary objectForKey:[NSString stringWithFormat:@"Propriedade%d",i]]];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // count-1 pois o título não conta.
    return self.formaDictionary.count - 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.propriedade = indexPath.row;
    [self performSegueWithIdentifier:@"calculo" sender:self];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *titulo = [self.formaArray objectAtIndex:indexPath.row];
    NSString *imagePath;
    
    cell.textLabel.text = titulo;
    
    if([titulo isEqualToString:@"Área"]){
        imagePath = @"area_icon.png";
    }else{
        if([titulo isEqualToString:@"Área lateral"]){
            imagePath = @"areaLateral_icon.png";
        }else{
            if([titulo isEqualToString:@"Área total"]){
                imagePath = @"areaTotal_icon.png";
            }else{
                if([titulo isEqualToString:@"Circunferência"]){
                    imagePath = @"circunferencia_icon.png";
                }else{
                    if([titulo isEqualToString:@"Diagonal"]){
                        imagePath = @"diagonal_icon.png";
                    }else{
                        if([titulo isEqualToString:@"Volume"]){
                            imagePath = @"volume_icon.png";
                        }else{
                            if([titulo isEqualToString:@"Área - Equilátero"] || [titulo isEqualToString:@"Área - Isósceles"]){
                                imagePath = @"area_icon.png";
                            }else{
                                imagePath = @"altura_icon.png";
                            }
                        }
                    }
                }
            }
        }
    }
    
    cell.imageView.image = [UIImage imageNamed:imagePath];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"calculo"]){
        XGMCalculoViewController *view = [segue destinationViewController];
        view.propriedade = self.propriedade;
        view.forma = self.forma;
        view.title = [self.formaDictionary objectForKey:[NSString stringWithFormat:@"Propriedade%d",(int)self.propriedade+1]];
        return;
    }
    
    if([segue.identifier isEqualToString:@"explicacao"]){
        XGMExplicacaoViewController *view = [segue destinationViewController];
        view.forma = self.forma;
    }
    
}

@end
