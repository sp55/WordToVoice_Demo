//
//  WordTranslateVoiceHelper.m
//  WordToVoice_Demo
//
//  Created by admin on 16/9/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "WordTranslateVoiceHelper.h"
#import <AVFoundation/AVFoundation.h>


@interface WordTranslateVoiceHelper ()<AVSpeechSynthesizerDelegate>
@property (nonatomic, strong) AVSpeechSynthesizer *aVSpeechSynthesizer;
@end

@implementation WordTranslateVoiceHelper

- (instancetype)init{
    if (self = [super init]) {
        _aVSpeechSynthesizer.delegate = self;
    }
    return self;
}

- (void)read:(NSString *)str{
    //AVSpeechUtterance: 可以假想成要说的一段话
    AVSpeechUtterance * aVSpeechUtterance = [[AVSpeechUtterance alloc] initWithString:str];
    aVSpeechUtterance.rate = AVSpeechUtteranceDefaultSpeechRate;
    //AVSpeechSynthesisVoice: 可以假想成人的声音
    aVSpeechUtterance.voice =[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
    //发音
    [self.aVSpeechSynthesizer speakUtterance:aVSpeechUtterance];
}

- (void)stopRead{
    [self.aVSpeechSynthesizer stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
    
}


- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance;{
    NSLog(@"阅读完毕");
}
//AVSpeechSynthesizer: 语音合成器, 可以假想成一个可以说话的人
- (AVSpeechSynthesizer *)aVSpeechSynthesizer{
    if (!_aVSpeechSynthesizer) {
        _aVSpeechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    }
    return _aVSpeechSynthesizer;
}

@end
