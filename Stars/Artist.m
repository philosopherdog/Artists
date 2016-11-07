//
//  Artist.m
//  Stars
//
//  Created by steve on 2016-11-07.
//  Copyright © 2016 steve. All rights reserved.
//

#import "Artist.h"

@interface Artist()

@end

@implementation Artist
- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName {
  if (self = [super init]) {
    _name = name;
    _artistImage = [UIImage imageNamed:imageName];
  }
  return self;
}

@end
