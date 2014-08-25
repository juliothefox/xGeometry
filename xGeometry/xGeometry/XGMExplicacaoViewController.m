//
//  XGMExplicacaoViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 25/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMExplicacaoViewController.h"
#define CILINDRO 0
#define CIRCULO 1
#define CONE 2
#define CUBO 3
#define ESFERA 4
#define QUADRADO 5
#define RETANGULO 6
#define TRAPEZIO 7
#define TRIANGULO 8
#define TRONCO_DE_CONE 9

@interface XGMExplicacaoViewController ()

@end

@implementation XGMExplicacaoViewController

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
    
    self.explicacaoTV.frame = [[UIScreen mainScreen]bounds];
    self.explicacaoTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification addObserver:self selector:@selector(updateFont) name:UIContentSizeCategoryDidChangeNotification object:nil];
}

-(void)updateFont
{
    self.explicacaoTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
}

-(void)dealloc
{
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification removeObserver:self];
}
-(void)viewWillAppear:(BOOL)animated
{
    switch (self.forma) {
        case QUADRADO:
            self.explicacaoTV.text = [self explicacaoQuadrado];
            break;
            
        default:
            break;
    }
}

-(NSString *)explicacaoQuadrado
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Quadrado\n\nO quadrado é um polígono de 4 lados regular, ou seja, contém 4 ângulos retos e seus lados possuem a mesma medida. O quadrado também é um retângulo pois seus vértices formam ângulos retos (90º) e suas diagonais possuem a mesma medida.\n\nFórmulas:\n\n1 - Área\n\nComo o quadrado também é um retângulo, o cálculo da área do quadrado é o mesmo cálculo usado na área do retângulo.\n\nA = B . H\n\nB = Base\nH = Altura\n(Área é igual a base vezes a altura)\n\nMas como os lados do quadrado são iguais, podemos substituir B e A por L.\n\nA = L . L\nA = L²\n\nL = Lado\n\nLogo, a área do quadrado é a medida do seu lado elevada ao quadrado.\n\n2 - Diagonal\n\nSe for traçada uma linha reta ligando o vértice inferior direito ao vértice superior esquerdo ou uma reta que ligue o vértice inferior esquerdo ao vértice superior esquerdo, temos a diagonal do quadrado.\n\nPara calcular a diagonal do quadrado, usa-se a fórmula:\n\nD = L√2\n(Diagonal é igual ao lado vezes a raiz quadrada de dois)\n\nAo traçar a diagonal, dividimos o quadrado em dois triângulos retângulos, e podemos notar que a diagonal é a hipotenusa do triângulo retângulo, e os lados do quadrado são os catetos do triângulo.\n\nEntão podemos usar o Teorema de Pitágoras para calcular a diagonal do quadrado.\n\nD² = L² + L²\nD² = 2L²\nD = √2L²\nD = L√2\n"];
    
    return str;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
