//
//  TableViewCell.h
//  TestDatePicker
//
//  Created by Skye on 15/1/14.
//  Copyright (c) 2015年 fly. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CellModel;
@interface TableViewCell : UITableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic,strong)CellModel *cellModel;

@end
