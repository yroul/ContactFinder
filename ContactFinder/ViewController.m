//
//  ViewController.m
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "ViewController.h"
#import "Contact.h"
#import "MyCustomCell.h"
#import "ContactView.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize contactList;
NSMutableArray *contacts;
Contact *selectedContact;
- (void)viewDidLoad
{
    [super viewDidLoad];
    //init contact array
    contacts = [[NSMutableArray alloc]init];
    //create first contact
    Contact *yoan = [[Contact alloc] init:@"Yoan" WithPhone:0541515 Mail:@"yoan.roullard@gmail.com" AndLongi:2.3522219000000177 AndLat:48.856614];
    [yoan setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"michel" ofType:@"jpg"]]];
    [contacts addObject:yoan];
    
    
    Contact *myContact;
    CLLocationCoordinate2D contactLoc;
    
    contactLoc.longitude=39.281516;
    contactLoc.latitude = 39.281516;
    myContact = [[Contact alloc]init:@"Claire" WithPhone:545415 Mail:@"claire@babes.com" AndLongi:6.184416999999939 AndLat:48.692054];
    [myContact setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"claire" ofType:@"jpg"]]];
    [contacts addObject:myContact];
    contactLoc.longitude=45.484;
    contactLoc.latitude = -89.454;
    myContact = [[Contact alloc]init:@"Celine" WithPhone:545415 Mail:@"Celine@babes.com" AndLongi:6.184416999999939 AndLat:48.692060];
    [myContact setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"celine" ofType:@"jpg"]]];
    [contacts addObject:myContact];
    contactLoc.longitude=45.484;
    contactLoc.latitude = -89.454;
    myContact = [[Contact alloc]init:@"Jean" WithPhone:545415 Mail:@"jean@bonbeur" AndLongi:2.3522219000000177 AndLat:48.56614];
    [myContact setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"michel" ofType:@"jpg"]]];
    [contacts addObject:myContact];
    
    
    contactList.delegate = self;
    contactList.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // Return the number of rows in the section.
    // Usually the number of items in your array (the one that holds your list)
    return [contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    MyCustomCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *caca = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [caca objectAtIndex:0];
    }
    Contact *curr = (Contact*)[contacts objectAtIndex:indexPath.row];
    cell.contactIcon.image = [curr image];
    cell.contactName.text = [curr name];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    int idx=indexPath.row;
    selectedContact = [contacts objectAtIndex:idx];
    [self performSegueWithIdentifier:@"segueToContact" sender:nil];
    
    
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"segueToContact"]){
        ContactView *destination = (ContactView *) segue.destinationViewController;
        destination->currentContact = selectedContact;
        
        
    }
    
}

@end
