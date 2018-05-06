//
//  TableController.m
//  TableView_ViewBased
//
//  Created by Hiroki Ikeuchi on 2018/05/06.
//  Copyright © 2018年 hikeuchi. All rights reserved.
//

#import "TableController.h"
#import "AppDelegate.h"

@implementation TableController

#pragma mark - NSTableView data source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    AppDelegate *appD = (AppDelegate*)[[NSApplication sharedApplication]delegate];
    return appD.tableData.count;
}

// 使い方はセル・ベースのtableView:objectValueForTableColumn:row:とほとんど同じ。
// コラムをidentifierで特定してデータ・ソース配列の中のrowインデクスと同じインデクスの値を返してやる。
// ビュー・ベースの場合はその値を当てがったセル・ビューを返すというだけだ。

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
                  row:(NSInteger)row{
    AppDelegate     *appD           = (AppDelegate*)[[NSApplication sharedApplication]delegate];
    NSString        *identifier     = tableColumn.identifier;
    NSDictionary    *data           = [appD.tableData objectAtIndex:row];
    NSTableCellView *cellView       = [tableView makeViewWithIdentifier:identifier owner:self];
    cellView.textField.stringValue  = [data objectForKey:identifier];
    return cellView;
}


@end
