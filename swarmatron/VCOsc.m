//
//  VCOsc.m
//  swarmatron
//
//  Created by Adam Salberg on 1/21/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKFoundation.h"
#import "AKAudioOutput.h"
#import "VCOsc.h"

@interface VCOsc ()

@end

@implementation VCOsc

- (instancetype) init {
    self = [super init];
    
    if (self) {
        
        _frequency = [[AKInstrumentProperty alloc]
                      initWithValue:440
                      minimum:50
                      maximum:3400];
        
        _bandwidth = [[AKConstant alloc] initWithValue:0.5
                                                         minimum:0
                                                         maximum:1];
        
        [self addProperty:_frequency];
        [self addProperty:_bandwidth];
        
        AKVCOscillator *vcOscillator;
        vcOscillator = [[AKVCOscillator alloc] init];
        vcOscillator.frequency = _frequency;
        [self connect: vcOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:vcOscillator];
        [self connect:audioOutput];
    }
    return self;
}

@end
