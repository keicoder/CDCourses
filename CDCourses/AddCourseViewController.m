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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    // 모달 뷰 팝 / 오브젝트 제거
}

- (IBAction)save:(id)sender {
    // 모달 뷰 팝 / 컨텍스트 저장
}
@end
