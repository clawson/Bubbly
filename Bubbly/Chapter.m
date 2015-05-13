//
//  Chapter.m
//  Bubbly
//
//  Created by Dan Clawson on 5/12/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import "Chapter.h"

static NSString * const ChapterClassName = @"chapter";

@implementation Chapter

@dynamic chapterTitle;
@dynamic chapterNumber;

+ (NSString *) parseClassName {
    return ChapterClassName;
}

@end
