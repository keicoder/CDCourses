//
//  AddCourseViewController.h
//  CDCourses
//
//  Created by lovejun on 2013. 9. 3..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate;

@interface AddCourseViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic, weak) id <AddCourseViewControllerDelegate> delegate;

@property (nonatomic, strong) Course *currentCourse;


- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end


@protocol AddCourseViewControllerDelegate

- (void) addCourseViewControllerDidSave;
- (void) addCourseViewControllerDidCancel:(Course *)courseToDelete;

@end