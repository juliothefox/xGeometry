//
//  XGMPrincipalTableViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 08/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMPrincipalTableViewController.h"
#import "XGMFormaTableViewController.h"
#import "XGMTutorialViewController.h"

@interface XGMPrincipalTableViewController ()

@end

@implementation XGMPrincipalTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Checa se é o primeiro uso
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"hasSeenTutorial"] == NO){
        //Mostra o tutorial
        
//        UIAlertView *alert = [[UIAlertView alloc] init];
//        alert.title = @"First Use";
//        [alert addButtonWithTitle:@"OK"];
//        [alert show];
//
//        XGMTutorialViewController *view = [[XGMTutorialViewController alloc]init];
//        [self presentViewController:view animated:YES completion:nil];        
        
        //Atualiza que o app já foi usado
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"hasSeenTutorial"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    self.clearsSelectionOnViewWillAppear = YES;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

    self.arrayPlist = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"principalTableView" ofType:@"plist"]];
    
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"icones" ofType:@"plist"]];
    
    self.arrayIcons = dic[@"PrincipalTableView"];
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.translucent = NO;
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
    // Return the number of rows in the section.
    return self.arrayPlist.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSDictionary *formaDictionary = [self.arrayPlist objectAtIndex:indexPath.row];
    
    cell.textLabel.text = formaDictionary[@"Forma"];
    cell.imageView.image = [UIImage imageNamed:[self.arrayIcons objectAtIndex:indexPath.row]];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.index = indexPath.row;
    [self performSegueWithIdentifier:@"forma" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"forma"]){
        XGMFormaTableViewController *view = [segue destinationViewController];
        NSDictionary *dic = [self.arrayPlist objectAtIndex:self.index];
        view.formaDictionary = dic;
        view.forma = self.index;
    }
}

-(IBAction)sobre:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"xGeometry" message:@"Versão 1.0\nCriado por:\nJúlio César Menezes Noronha\n\nTodos os direitos reservados.\n\nNão delete esse aplicativo, em breve haverá atualizações!\nE não o use para colar nas provas de matemática =)" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

-(IBAction)tutorial:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Tutorial" message:@"" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

@end
