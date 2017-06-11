//
//  MasterViewController.m
//  CustomCell
//
//  Created by 이성재 on 2017. 6. 9..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "MasterViewController.h"
#import "CustomCell.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary *item1 = @{@"name" : @"사과",
                            @"image" : @"apple.jpeg",
                            @"amount" : @"6",
                            @"value" : @"3000"};
    
    NSDictionary *item2 = @{@"name" : @"블루베리",
                            @"image" : @"blueberry.jpg",
                            @"amount" : @"10",
                            @"value" : @"30000"};
    
    NSDictionary *item3 = @{@"name" : @"당근",
                            @"image" : @"carrot.jpg",
                            @"amount" : @"13",
                            @"value" : @"5000"};
    
    NSDictionary *item4 = @{@"name" : @"체리",
                            @"image" : @"cherry.png",
                            @"amount" : @"1",
                            @"value" : @"2000"};
    
    NSDictionary *item5 = @{@"name" : @"포도",
                            @"image" : @"grape.jpg",
                            @"amount" : @"13",
                            @"value" : @"1000"};
    
    NSDictionary *item6 = @{@"name" : @"키위",
                            @"image" : @"kiwi.png",
                            @"amount" : @"2",
                            @"value" : @"15000"};
    
    NSDictionary *item7 = @{@"name" : @"레몬",
                            @"image" : @"lemon.png",
                            @"amount" : @"3",
                            @"value" : @"6000"};
    
    NSDictionary *item8 = @{@"name" : @"라임",
                            @"image" : @"lime.jpg",
                            @"amount" : @"4",
                            @"value" : @"4000"};
    
    NSDictionary *item9 = @{@"name" : @"고기",
                            @"image" : @"meat.jpg",
                            @"amount" : @"5",
                            @"value" : @"2000"};
    
    NSDictionary *item10 = @{@"name" : @"딸기",
                            @"image" : @"strawberry.jpg",
                            @"amount" : @"7",
                            @"value" : @"8000"};
    
    NSDictionary *item11 = @{@"name" : @"토마토",
                            @"image" : @"tomato.png",
                            @"amount" : @"7",
                            @"value" : @"3000"};
    
    NSDictionary *item12 = @{@"name" : @"야채",
                            @"image" : @"vegetable.jpg",
                            @"amount" : @"40",
                            @"value" : @"7000"};
    
    NSDictionary *item13 = @{@"name" : @"멜론",
                            @"image" : @"watermelon.png",
                            @"amount" : @"5",
                            @"value" : @"10000"};
    itemList = @[item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13];
    
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImageView.frame = self.tableView.frame;
    
    self.tableView.backgroundView = backgroundImageView;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return itemList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hello" forIndexPath:indexPath ];
    NSDictionary *dictTemp = [itemList objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = [dictTemp objectForKey:@"name"];
    cell.amountLabel.text = [dictTemp objectForKey:@"amount"];
    cell.valueLabel.text = [dictTemp objectForKey:@"value"];
    
    cell.imgView.image = [UIImage imageNamed:[dictTemp objectForKey:@"image"]];
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ( [[segue identifier] isEqualToString:@"showDetail"] ) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary * dic = [itemList objectAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailData: dic];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
