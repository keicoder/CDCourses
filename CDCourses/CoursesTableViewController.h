//
//  CoursesTableViewController.h
//  CDCourses
//
//  Created by lovejun on 2013. 9. 3..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoursesTableViewController : UITableViewController


@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext; // AppDelegate의 컨텍스트 참조

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;


@end
