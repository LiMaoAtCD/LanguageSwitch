//
//  LanguageController.m
//  LanguageSwitch
//
//  Created by AlienLi on 14-5-6.
//  Copyright (c) 2014年 AlienLi. All rights reserved.
//

#import "LanguageController.h"

static LanguageController *languageController =nil;

@implementation LanguageController
@synthesize delegate = _delegate;
+(LanguageController *)languageController
{
    @synchronized(self){
        if (languageController == nil) {
            languageController = [[LanguageController alloc] init];
        }
    }
    return languageController;
}
-(void)setDelegate:(id<LanguageControllerDelegate>)delegate{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:)name:LANGUAGE_STATE_NOTIFICATION object:nil];
}
-(void) languageChanged:(id) sender{
    if(_delegate !=nil && [_delegate respondsToSelector:@selector(updateLanguage)]) {
        [_delegate updateLanguage];
    }
}
- (void)dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:LANGUAGE_STATE_NOTIFICATION object:nil];
    _delegate=nil;

}
@end
