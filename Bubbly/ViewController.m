//
//  ViewController.m
//  Bubbly
//
//  Created by Dan Clawson on 5/12/15.
//  Copyright (c) 2015 Slacker Tools. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "Chapter.h"

@interface ViewController ()

@property (nonatomic, strong) Book *myBook;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    // Create a new Book
    Book *book = [Book object];
    book.title = @"Dan's First Book";
    book.isbn = @"9876543210";
    book.author = @"Dan Clawson";
    
    // Save the new book
    [book saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // success
        } else {
            // failure
        }
    }];

    // Find the book in the Parse data store
    PFQuery *bookQuery = [PFQuery queryWithClassName:Book.parseClassName];
    [bookQuery whereKey:@"author" equalTo:@"Dan Clawson"];
    [bookQuery findObjectsInBackgroundWithTarget:(id) self selector:@selector(myBook:)];

    // Create three Chapters that all are part of the Book we just created
    Chapter *one = [Chapter object];
    one.chapterNumber = [NSNumber numberWithInt:1];
    one.chapterTitle = @"Birthdays";

    
    Chapter *two = [Chapter object];
    two.chapterNumber = [NSNumber numberWithInt:2];
    two.chapterTitle = @"Growth";
    
    Chapter *three = [Chapter object];
    three.chapterNumber = [NSNumber numberWithInt:3];
    three.chapterTitle = @"Friends";
    

    // Add the three chapters to an array and 'assign' this array to the book
    NSArray *chapters = @[one, two, three];
    [book setObject:chapters forKey:@"chapterList"];

    // Save the book again, which will save the chapters.
    [book saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // success
        } else {
            // failure
        }
    }];
    
    
    // Find all the chapters for a Book
    NSArray *chapterSearch = [book objectForKey:@"chapterList"];
    
    for (Chapter *c in chapterSearch) {
        NSLog(@"Chapter: %@", c);
    }
    
    
}

- (void) myBook: (Book *) book {
    self.myBook = book;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
