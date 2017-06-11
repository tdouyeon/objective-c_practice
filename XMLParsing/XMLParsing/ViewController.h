//
//  ViewController.h
//  XMLParsing
//
//  Created by 이성재 on 2017. 6. 11..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, NSXMLParserDelegate>{
    NSXMLParser *parser;
    NSMutableArray *dataList;
    NSMutableDictionary * detailData;
    
    NSString *elementTemp;
    
    Boolean blank;
}


@end

