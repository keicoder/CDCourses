//
//  AddCourseViewController.m
//  CDCourses
//
//  Created by lovejun on 2013. 9. 3..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

@synthesize titleField;
@synthesize authorField;
@synthesize dateField;


#pragma mark - 뷰 라이프 사이클

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    titleField.text = [self.currentCourse title];
    authorField.text = [self.currentCourse author];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [dateFormat stringFromDate:[self.currentCourse releaseDate]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    // 모달 뷰 팝 / 오브젝트 제거
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
}

- (IBAction)save:(id)sender {
    // 모달 뷰 팝 / 컨텍스트 저장
    [self.currentCourse setTitle:titleField.text];
    [self.currentCourse setAuthor:authorField.text];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-mm-dd"];
    [self.currentCourse setReleaseDate:[dateFormat dateFromString:dateField.text]];
    
    [self.delegate addCourseViewControllerDidSave];
}
@end
