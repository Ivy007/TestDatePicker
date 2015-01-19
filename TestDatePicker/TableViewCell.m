//
//  TableViewCell.m
//  TestDatePicker
//
//  Created by Skye on 15/1/14.
//  Copyright (c) 2015年 fly. All rights reserved.
//

#import "TableViewCell.h"
#import "CellModel.h"
@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end

@implementation TableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil].firstObject;
    }
    return cell;
}

-(void)setCellModel:(CellModel *)cellModel
{
    self.cellImage.image =[UIImage imageNamed:cellModel.picName];
    self.title.text = cellModel.title;
    self.date.text = cellModel.date;
}

@end
