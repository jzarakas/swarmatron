//
//  VCOsc.h
//  swarmatron
//
//  Created by Adam Salberg on 2/7/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKFoundation.h"

@interface VCOsc : AKInstrument

@property (nonatomic, strong) AKInstrumentProperty *frequencyValue;
@property (nonatomic, strong) AKVCOscillatorWaveformType waveformType;

@end