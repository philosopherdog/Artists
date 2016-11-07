//
//  ArtistManager.m
//  Stars
//
//  Created by steve on 2016-11-07.
//  Copyright © 2016 steve. All rights reserved.
//

#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistManager()
@property (nonatomic, strong) NSArray <Artist *> *artists;
@property (nonatomic) NSInteger rand;
@end

@implementation ArtistManager
- (instancetype)init {
  if(self = [super init]) {
    _rand = 0;
    Artist *iggy = [[Artist alloc] initWithName:@"Iggy Pop" imageName:@"iggy_p.jpeg"];
    Artist *taylor = [[Artist alloc] initWithName:@"Taylor Swift" imageName:@"taylor_s.jpeg"];
    Artist *justin = [[Artist alloc] initWithName:@"Justin Bieber" imageName:@"justin_b.jpeg"];
    _artists = @[iggy, taylor, justin];

  }
  return self;
}

- (void)randomNum {
  NSInteger temp = arc4random_uniform((uint32_t)self.artists.count);
  if (self.rand == temp) {
    [self randomNum];
  } else {
    self.rand = temp;
  }
}

- (Artist *)randomArtist {
  [self randomNum];
  return self.artists[self.rand];
}

@end
