//
//  MyCustomCell.m
//  ImagePicker
//
//  Created by USERCCI on 27/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import "MyCustomCell.h"

@implementation MyCustomCell
@synthesize contactName,contactIcon;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
