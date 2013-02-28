//
//  MyCustomCell.h
//  ImagePicker
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *contactIcon;
@property (weak, nonatomic) IBOutlet UILabel *contactName;
@property (weak, nonatomic) IBOutlet UIImageView *removeButton;
@end
