//
//  Book.h
//  Bubbly
//
//  Created by Dan Clawson on 5/12/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Book : PFObject <PFSubclassing>

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *isbn;
@property (nonatomic, retain) NSString *author;

@end
