//
//  XGMTutorialViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 10/09/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMTutorialViewController.h"
#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)

@interface XGMTutorialViewController ()

@end

@implementation XGMTutorialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    int numberOfPages = 6;
    
    NSArray *images4 = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"Tela Principal.png"],
                            [UIImage imageNamed:@"Propriedade.png"],
                            [UIImage imageNamed:@"Calculo.png"],
                            [UIImage imageNamed:@"Resultado.png"], nil];
    
    NSArray *images3 = [NSArray arrayWithObjects:
                        [UIImage imageNamed:@"Tela Principal 3,5.png"],
                        [UIImage imageNamed:@"Propriedade 3,5.png"],
                        [UIImage imageNamed:@"Calculo 3,5.png"],
                        [UIImage imageNamed:@"Resultado 3,5.png"], nil];
    
    NSArray *strings = [NSArray arrayWithObjects:
                            @"\tBem vindo ao xGeometry!\n\tAqui teremos uma visão geral do aplicativo, seus recursos e como usá-lo. Deslize a tela para continuar.",
                            @"\tNa tela principal, você escolhe uma forma geométrica, são 10 formas geométricas disponíveis até o momento.",
                            @"\tAo escolher a forma geométrica, você terá opções de cálculos de algumas propriedades e uma explicação teórica sobre a mesma.\n\tPara ver a explicação clique em “Explicação” ou escolha uma propriedade clicando nela.",
                            @"\tDepois de escolher a opção de cálculo, insira os valores solicitados, escolha a unidade de medida e (caso disponível na forma escolhida) altere o valor de Pi se desejar, e então clique em “Calcular”.\n\tPara recolher o teclado, clique em um lugar vazio da tela",
                            @"\tSerá mostrado o passo-a-passo da fórmula e o seu resultado na unidade de medida escolhida.",
                            @"\tCaso você deseje ver esse tutorial novamente, basta clicar em “Tutorial“ na tela principal do aplicativo.\n\tClique em “Começar“ para usar o aplicativo.\n\n\tBons estudos!",nil];
    
    self.pageControl.currentPage = 0;
    self.pageControl.numberOfPages = numberOfPages;
    self.pageControl.translatesAutoresizingMaskIntoConstraints = NO;
    CGRect frame = self.pageControl.frame;
    frame.origin.y = self.view.frame.size.height - 130;
    self.pageControl.frame = frame;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    for (int i = 0; i < numberOfPages; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        if(i > 0 && i < 5 ){
            //Insere um textView menor
            UITextView *textView = [[UITextView alloc]initWithFrame: CGRectMake(self.scrollView.frame.size.width * i + 10, 20, 300, 130)];
            textView.font = [UIFont fontWithName:@"Helvetica" size:15];
            textView.text = [strings objectAtIndex:i];
            textView.textAlignment = NSTextAlignmentJustified;
            [self.scrollView addSubview:textView];
            
            //Insere imagens
            UIImageView *subview = [[UIImageView alloc]init];
            CGRect imgFrame;
            
            if(IS_IPHONE5){
                imgFrame = CGRectMake(self.scrollView.frame.size.width * i + 90, 180, 150, 264);
                subview.frame = imgFrame;
                subview.image = [images4 objectAtIndex:i - 1];
            }else{
                imgFrame = CGRectMake(self.scrollView.frame.size.width * i + 100, 180, 120, 182);
                subview.frame = imgFrame;
                subview.image = [images3 objectAtIndex:i - 1];
            }
            
            [self.scrollView addSubview:subview];
        }else{
            //Insere apenas texto sem imagem
            UITextView *textView = [[UITextView alloc]initWithFrame: CGRectMake(self.scrollView.frame.size.width * i + 10, 20, 300, 300)];
            textView.font = [UIFont fontWithName:@"Helvetica" size:15];
            textView.text = [strings objectAtIndex:i];
            textView.textAlignment = NSTextAlignmentJustified;
            [self.scrollView addSubview:textView];
        }
    }
    
    //Insere o botão começar
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action: @selector(comecar)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Começar" forState:UIControlStateNormal];
    button.frame = CGRectMake(self.scrollView.frame.size.width * (numberOfPages - 1) + 129, self.view.frame.size.height - 180, 63, 30);
    [self.scrollView addSubview:button];
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * numberOfPages, 1);
    
}

-(void)comecar
{
    [self.navigationController popViewControllerAnimated: YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

- (IBAction)changePage {
    // update the scroll view to the appropriate page
    CGRect frame;
    frame.origin.x = self.scrollView.frame.size.width * self.pageControl.currentPage;
    frame.origin.y = 0;
    frame.size = self.scrollView.frame.size;
    [self.scrollView scrollRectToVisible:frame animated:YES];
    pageControlBeingUsed = YES;
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    pageControlBeingUsed = NO;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    pageControlBeingUsed = NO;
}

@end
