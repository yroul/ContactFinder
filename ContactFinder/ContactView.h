//
//  ContactView.h
//  ContactFinder
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
@interface ContactView : UIViewController{
@public
    Contact *currentContact;
}
@property (weak, nonatomic) IBOutlet UIImageView *contactImage;

@property (weak, nonatomic) IBOutlet UILabel *contactName;
@property (weak, nonatomic) IBOutlet UILabel *contactPhone;
@property (weak, nonatomic) IBOutlet UILabel *contactMail;
@property (weak, nonatomic) IBOutlet UILabel *loc_long;
@property (weak, nonatomic) IBOutlet UILabel *loc_lat;
@end
