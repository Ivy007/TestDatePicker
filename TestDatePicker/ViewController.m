//
//  ViewController.m
//  TestDatePicker
//
//  Created by Skye on 15/1/14.
//  Copyright (c) 2015年 fly. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "CellModel.h"
#import "RMDatePickerController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate,RMDatePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,strong) NSMutableArray *cellArray;

@end


@implementation ViewController

-(NSMutableArray *)cellArray
{
    if(!_cellArray)
    {
        _cellArray = [NSMutableArray array];
        CellModel *model1 = [[CellModel alloc] init];
        model1.title =@"Jack";
        model1.picName = @"img1";
        model1.date = @"2014-10-13";
        
        CellModel *model2 = [[CellModel alloc] init];
        model2.title =@"Skye";
        model2.picName = @"img2";
        model2.date = @"2014-10-13";
        
        CellModel *model3 = [[CellModel alloc] init];
        model3.title =@"Ivy";
        model3.picName = @"img3";
        model3.date = @"2014-10-13";
        
        CellModel *model4 = [[CellModel alloc] init];
        model4.title =@"Mac";
        model4.picName = @"img4";
        model4.date = @"2014-10-13";
        
        [_cellArray addObjectsFromArray:@[model1,model2,model3,model4]];
    }
    return _cellArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cellArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [TableViewCell cellWithTableView:tableView];
    cell.cellModel = self.cellArray[indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",(long)indexPath.row);
    [self showActionSheet];
}

-(void)showActionSheet
{
    RMDatePickerController *vc = [[RMDatePickerController alloc] init];
    vc.delegate =self;
    [vc currentDateWithString:@"2016-02-14 17:20" andFormat:nil];
    [vc show];
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

-(void)dateSelectionViewController:(RMDatePickerController *)vc didSelectDate:(NSString *)dateString withFormat:(NSString *)dateFormat
{
    
    NSLog(@"%@",dateString);
}

@end
