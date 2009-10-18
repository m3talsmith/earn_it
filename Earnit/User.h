//
//  User.h
//  Earnit
//
//  Created by Michael Christenson II on 10/18/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Point;

@interface User :  NSManagedObject  
{
}

@property (nonatomic, retain) NSDate * created_on;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet* points;

@end


@interface User (CoreDataGeneratedAccessors)
- (void)addPointsObject:(Point *)value;
- (void)removePointsObject:(Point *)value;
- (void)addPoints:(NSSet *)value;
- (void)removePoints:(NSSet *)value;

@end

