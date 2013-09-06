//
//  DisplayEditViewController.m
//  CDCourses
//
//  Created by lovejun on 2013. 9. 4..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"


@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

@synthesize titleField;
@synthesize authorField;
@synthesize dateField;

@synthesize editButton;
@synthesize doneButton;


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
	// Do any additional setup after loading the view.
    titleField.text = [self.currentCourse title];
    authorField.text = [self.currentCourse author];
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [df stringFromDate:[self.currentCourse releaseDate]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startEditing:(id)sender {
    titleField.enabled = YES;
    authorField.enabled = YES;
    dateField.enabled = YES;
    
    titleField.borderStyle = UITextBorderStyleRoundedRect;
    authorField.borderStyle = UITextBorderStyleRoundedRect;
    dateField.borderStyle = UITextBorderStyleRoundedRect;
    
    editButton.hidden = YES;
    doneButton.hidden = NO;
}

- (IBAction)doneEditing:(id)sender {
    titleField.enabled = NO;
    authorField.enabled = NO;
    dateField.enabled = NO;
    
    titleField.borderStyle = UITextBorderStyleNone;
    authorField.borderStyle = UITextBorderStyleNone;
    dateField.borderStyle = UITextBorderStyleNone;
    
    editButton.hidden = NO;
    doneButton.hidden = YES;
    
    _currentCourse.title = titleField.text;
    _currentCourse.author = authorField.text;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    _currentCourse.releaseDate = [df dateFromString:dateField.text];
    
    // 앱 델리게이트 컨텍스트 저장
    AppDelegate *myApp = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    [myApp saveContext];
}
@end
