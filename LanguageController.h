//
//  LanguageController.h
//  LanguageSwitch
//
//  Created by AlienLi on 14-5-6.
//  Copyright (c) 2014年 AlienLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LANGUAGE_STATE_NOTIFICATION   @"LANGUAGE_STATE_NOTIFICATION"
#define LANGUAGE_STATE                @"LANGUAGE_STATE"
@protocol LanguageControllerDelegate<NSObject>
@required
@optional
-(void)updateLanguage;
@end
@interface LanguageController : NSObject{
    id<LanguageControllerDelegate>         delegate;
}
@property(nonatomic,assign) id<LanguageControllerDelegate> delegate;
+(LanguageController *)languageController;
-(void)setDelegate:(id<LanguageControllerDelegate>)delegate;
@end
