//
//  VCOsc.h
//  swarmatron
//
//  Created by Adam Salberg on 1/21/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKInstrument.h"

@interface VCOsc : AKInstrument;

@property (nonatomic, strong) AKParameter *frequency;
@property (nonatomic, strong) AKConstant *bandwidth;
@property (nonatomic, strong) AKParameter *pulseWidth;

@property (nonatomic) AKVCOscillatorWaveformType *waveformType;


@end
