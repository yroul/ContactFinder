//
//  Contact.h
//  ImagePicker
//
//  Created by USERCCI on 26/02/13.
//  Copyright (c) 2013 yroul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface Contact : NSObject

@property(readwrite)NSString *name;
@property(readwrite)int phone;
@property(readwrite)NSString *mail;
@property(readwrite)UIImage *image;
@property(readwrite)double longi;
@property(readwrite)double lat;

-(id) init:(NSString*)_name WithPhone:(int)_phone Mail:(NSString*)_mail AndLongi:(double)longi AndLat:(double)lat;
@end
