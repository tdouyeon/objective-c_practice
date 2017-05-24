//
//  ViewController.h
//  VisualAddressBook
//
//  Created by 이성재 on 2017. 5. 21..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;

@interface ViewController : UIViewController{
    BookManager *myBook;
}

@property (nonatomic, strong) IBOutlet UITextView *resultTextView;
@property (nonatomic, strong) IBOutlet UITextField * nameTextField;
@property (nonatomic, strong) IBOutlet UITextField * genreTextField;
@property (nonatomic, strong) IBOutlet UITextField * authorTextField;
@property (nonatomic, strong) IBOutlet UILabel * bookCountLabel;


-(IBAction)showAllBookAction:(id)sender;
-(IBAction)addBookAction:(id)sender;
-(IBAction)findBookAction:(id)sender;
-(IBAction)removeBookAction:(id)sender;

@end

