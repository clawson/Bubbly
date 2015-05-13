//
//  Chapter.h
//  Bubbly
//
//  Created by Dan Clawson on 5/12/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import "Book.h"

@interface Chapter : PFObject <PFSubclassing>

@property (nonatomic, retain) NSString *chapterTitle;
@property (nonatomic, retain) NSNumber *chapterNumber;

@end
