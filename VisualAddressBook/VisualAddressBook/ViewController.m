//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 이성재 on 2017. 5. 21..
//  Copyright © 2017년 이성재. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView, nameTextField, genreTextField, authorTextField, bookCountLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Book *book1 = [[Book alloc] init];
    book1.name = @"햄릿";
    book1.genre = @"전쟁소설";
    book1.author = @"헤밍웨이";
    
    [book1 bookPrint];
    
    Book *book2 = [[Book alloc] init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"비극";
    book2.author = @"셰익스피어";
    
    [book2 bookPrint];
    
    Book *book3 = [[Book alloc] init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    
    [book3 bookPrint];
    
    myBook = [[BookManager alloc] init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    [self updateLabel];
}

- (void)updateLabel{
    NSString *countStr = [NSString stringWithFormat:@"%li", [myBook countBook]];
    bookCountLabel.text = countStr;
}

- (IBAction)showAllBookAction:(id)sender{
    resultTextView.text = [myBook showAllBook];
}

-(IBAction)addBookAction:(id)sender{
    Book *bookTemp = [[Book alloc] init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    resultTextView.text = @"책이 추가 되었습니다.";
    [self updateLabel];
}

-(IBAction)findBookAction:(id)sender{
    NSString *strTemp =[myBook findBook:nameTextField.text];
    if( strTemp != nil ){
        resultTextView.text = strTemp;
    }
    else{
        resultTextView.text = @"찾으시는 책이 없네요.";
    }
    [self updateLabel];
}

-(IBAction)removeBookAction:(id)sender{
    NSString *strTemp =[myBook removeBook:nameTextField.text];
    if( strTemp != nil ){
        NSMutableString *str = [NSMutableString stringWithString:strTemp];
        [str appendString:@" 책이 지워젔습니다."];
        resultTextView.text = str;
    }
    else{
        resultTextView.text = @"지우려는 책이 없네요.";
    }
    [self updateLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
