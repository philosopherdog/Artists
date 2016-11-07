//
//  ViewController.m
//  Stars
//
//  Created by steve on 2016-11-07.
//  Copyright © 2016 steve. All rights reserved.
//

#import "ViewController.h"
#import "ArtistManager.h"
#import "Artist.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) ArtistManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupArtist];
}

// lazy initialization
- (ArtistManager *)manager {
  if (!_manager) {
    _manager = [[ArtistManager alloc] init];
  }
  return _manager;
}

- (void)setupArtist {
  Artist *artist = [self.manager randomArtist];
  self.imageView.image = artist.artistImage;
  self.label.text = artist.name;
  [self.label sizeToFit];
}

- (IBAction)randomArtist:(UIButton *)sender {
  [self setupArtist];
}


@end
