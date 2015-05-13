//
//  Book.m
//  Bubbly
//
//  Created by Dan Clawson on 5/12/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import "Book.h"

static NSString * const BookClassName = @"book";
@implementation Book

@dynamic title;
@dynamic isbn;
@dynamic author;

+ (NSString *) parseClassName {
    return BookClassName;
}

@end
