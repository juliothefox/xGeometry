//
//  XGMPrincipalTableViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 08/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMPrincipalTableViewController.h"
#import "XGMTrianguloViewController.h"

#define AREA_CILINDRO indexPath.section == 0 && indexPath.row == 0
#define AREA_CIRCULO indexPath.section == 0 && indexPath.row == 1
#define AREA_CONE indexPath.section == 0 && indexPath.row == 2
#define AREA_TRIANGULO indexPath.section == 0 && indexPath.row == 3
#define AREA_QUADRADO indexPath.section == 0 && indexPath.row == 4

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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.arrayPlist = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"principalTableView" ofType:@"plist"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return self.arrayPlist.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSArray *array = [self.arrayPlist objectAtIndex:section];
    
    return array.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    //Dá o título da seção da tableView
    switch (section) {
        case 0:
            return @"Áreas";
            break;
            
        default:
            return @"Volumes";
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [[self.arrayPlist objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(AREA_CILINDRO){
        [self performSegueWithIdentifier:@"areaCilindro" sender:self];
        return;
    }
    if(AREA_CIRCULO){
        [self performSegueWithIdentifier:@"areaCirculo" sender:self];
        return;
    }
    if(AREA_CONE){
        [self performSegueWithIdentifier:@"areaCone" sender:self];
        return;
    }
    if(AREA_TRIANGULO){
        [self performSegueWithIdentifier:@"areaTriangulo" sender:self];
        return;
    }
    if(AREA_QUADRADO){
        [self performSegueWithIdentifier:@"areaQuadrado" sender:self];
        return;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Prepara para transitar para outra viewController.
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end