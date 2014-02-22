//
//  ViewController.m
//  TableViewTemplete
//
//  Created by Kao Chao-Ting on 2014/2/22.
//  Copyright (c) 2014年 tim. All rights reserved.
//

#import "ViewController.h"
#import "TableViewTemplete.h"

@interface ViewController ()

@end

@implementation ViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSArray *data = [NSArray arrayWithObjects:@"john", @"tina", @"tim",@"sun",@"herry",@"paul", nil];
    
    NSArray *data2 = [NSArray arrayWithObjects:@"2john", @"22tina", @"2tim",@"2sun",@"2herry",@"2paul", nil];
    
    CGRect tableframe = CGRectMake(100, 30, 200, 300);
    CGRect tableframe2 = CGRectMake(100, 30, 200, 300);
    
    
    //create table view
    TableViewTemplete *test = [[TableViewTemplete alloc]initWithFrame:tableframe andPTMSdata:data];
    [self.view1 addSubview:test];
    
    TableViewTemplete *test2 = [[TableViewTemplete alloc]initWithFrame:tableframe2 andPTMSdata:data2];
    [self.view2 addSubview:test2];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
