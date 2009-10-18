//
//  Point.h
//  Earnit
//
//  Created by Michael Christenson II on 10/18/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>

@class User;

@interface Point :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * value;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet* users;

@end


@interface Point (CoreDataGeneratedAccessors)
- (void)addUsersObject:(User *)value;
- (void)removeUsersObject:(User *)value;
- (void)addUsers:(NSSet *)value;
- (void)removeUsers:(NSSet *)value;

@end

