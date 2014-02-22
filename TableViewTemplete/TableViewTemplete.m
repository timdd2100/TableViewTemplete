//
//  TableViewTemplete.m
//  TableViewTemplete
//
//  Created by Kao Chao-Ting on 2014/2/22.
//  Copyright (c) 2014年 tim. All rights reserved.
//

#import "TableViewTemplete.h"

@interface TableViewTemplete()
{
    NSArray *PTMSdataArray;
}

@end

@implementation TableViewTemplete

- (id)initWithFrame:(CGRect)frame andPTMSdata:(NSArray *)data
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        PTMSdataArray = data;
        
        UITableView *tableView = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
        [self addSubview:tableView];
    }
    return self;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [PTMSdataArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //cell的標飾符
    static NSString *CellIdentifier = @"cellIdentifier";
    
    //指定tableView可以重用cell，增加性能，不用每次都alloc新的cell object
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //如果cell不存在，從預設的UITableViewCell Class裡alloc一個Cell object，應用Default樣式，你可以修改為其他樣式
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [PTMSdataArray objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
