//
//  SomeInstrument.m
//  swarmatron
//
//  Created by James Zarakas on 1/20/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKFoundation.h"
#import "SomeInstrument.h"
#import "AKFMOscillator.h"
#import "AKAudioOutput.h"

@interface SomeInstrument ()

@end

@implementation SomeInstrument

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        
        _frequencyValue = [[AKInstrumentProperty alloc] initWithValue:440
                                                              minimum:150
                                                              maximum:2400];
        
        [self addProperty:_frequencyValue];
        
        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        fmOscillator.baseFrequency = _frequencyValue;
        [self connect: fmOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    
    return self;
}

@end
