//
//  ViewController.m
//  AudioServiceSample
//
//  Created by Cherry_Cheng on 2015/6/6.
//  Copyright (c) 2015年 cwt100. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

#define SYSTEM_SOUND_CAPTURE        1108
#define SYSTEM_SOUND_BEGIN_RECORD   1117
#define SYSTEM_SOUND_END_RECORD     1118

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.photoCaptureSoundButton addTarget:self
                                     action:@selector(photoCaptureSound:)
                           forControlEvents:UIControlEventTouchUpInside];
    [self.beginRecordSoundButton addTarget:self
                                    action:@selector(beginRecordSound:)
                          forControlEvents:UIControlEventTouchUpInside];
    [self.endRecordSoundButton addTarget:self
                                  action:@selector(endRecordSound:)
                        forControlEvents:UIControlEventTouchUpInside];
}

- (void)photoCaptureSound:(id)sender {
    AudioServicesPlaySystemSound(SYSTEM_SOUND_CAPTURE);
}

- (void)beginRecordSound:(id)sender {
    AudioServicesPlaySystemSound(SYSTEM_SOUND_BEGIN_RECORD);
}

- (void)endRecordSound:(id)sender {
    AudioServicesPlaySystemSound(SYSTEM_SOUND_END_RECORD);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
