//
//  TableViewTemplete.h
//  TableViewTemplete
//
//  Created by Kao Chao-Ting on 2014/2/22.
//  Copyright (c) 2014年 tim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewTemplete : UIView<UITableViewDataSource,UITableViewDelegate>

-(id)initWithFrame:(CGRect)frame andPTMSdata:(NSArray *)data;

@end
