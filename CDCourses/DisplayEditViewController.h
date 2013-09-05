//
//  DisplayEditViewController.h
//  CDCourses
//
//  Created by lovejun on 2013. 9. 4..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface DisplayEditViewController : UIViewController

@property (nonatomic, strong) Course *currentCourse;

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;


@end
