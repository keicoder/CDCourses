//
//  CoursesTableViewController.h
//  CDCourses
//
//  Created by lovejun on 2013. 9. 3..
//  Copyright (c) 2013년 jun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCourseViewController.h"


// 컨텍스트의 저장/저장 취소/모달 뷰 해제를 위한 델리게이트
@interface CoursesTableViewController : UITableViewController <AddCourseViewControllerDelegate, NSFetchedResultsControllerDelegate>

// AppDelegate의 컨텍스트 참조
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;


@end
