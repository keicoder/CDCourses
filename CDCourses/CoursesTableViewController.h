//
//  CoursesTableViewController.h
//  CDCourses
//
//  Created by lovejun on 2013. 9. 3..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCourseViewController.h"

@interface CoursesTableViewController : UITableViewController <AddCourseViewControllerDelegate>


@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext; // AppDelegate의 컨텍스트 참조

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;


@end
