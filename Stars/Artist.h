//
//  Artist.h
//  Stars
//
//  Created by steve on 2016-11-07.
//  Copyright © 2016 steve. All rights reserved.
//

@import UIKit;

@interface Artist : NSObject
@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) UIImage *artistImage;
- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end
