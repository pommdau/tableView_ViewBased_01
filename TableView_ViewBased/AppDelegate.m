//
//  AppDelegate.m
//  TableView_ViewBased
//
//  Created by Hiroki Ikeuchi on 2018/05/06.
//  Copyright © 2018年 hikeuchi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (id)init{
    self = [super init];
    if (self) {
        //テーブル表示データ初期化
        _tableData = [NSMutableArray array];
        [_tableData addObject: @{
                                 @"name" : @"ピカチュウ",
                                 @"type" : @"でんき"
                                 }];
        [_tableData addObject: @{
                                 @"name" : @"ゼニガメ",
                                 @"type" : @"みず"
                                 }];
        [_tableData addObject: @{
                                 @"name" : @"ヒトカゲ",
                                 @"type" : @"みず"
                                 }];
        [_tableData addObject: @{
                                 @"name" : @"フシギダネ",
                                 @"type" : @"くさ"
                                 }];
    }
    return self;
}

@end
