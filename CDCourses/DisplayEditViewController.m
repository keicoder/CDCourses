//
//  DisplayEditViewController.m
//  CDCourses
//
//  Created by lovejun on 2013. 9. 4..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import "DisplayEditViewController.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

@synthesize titleField;
@synthesize authorField;
@synthesize dateField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    titleField.text = [self.currentCourse title];
    authorField.text = [self.currentCourse author];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [df stringFromDate:[self.currentCourse releaseDate]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
