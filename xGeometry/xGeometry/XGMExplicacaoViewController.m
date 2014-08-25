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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        
        case CILINDRO:
            self.explicacaoTV.text = [self explicacaoCilindro];
            break;
            
        case CIRCULO:
            self.explicacaoTV.text = [self explicacaoCirculo];
            break;
            
        case CONE:
            self.explicacaoTV.text = [self explicacaoCone];
            break;
            
        case CUBO:
            self.explicacaoTV.text = [self explicacaoCubo];
            break;
            
        case ESFERA:
            self.explicacaoTV.text = [self explicacaoEsfera];
            break;
        
        case QUADRADO:
            self.explicacaoTV.text = [self explicacaoQuadrado];
            break;
            
        case RETANGULO:
            self.explicacaoTV.text = [self explicacaoRetangulo];
            break;
            
        case TRAPEZIO:
            self.explicacaoTV.text = [self explicacaoTrapezio];
            break;
            
        case TRIANGULO:
            self.explicacaoTV.text = [self explicacaoTriangulo];
            break;
            
        case TRONCO_DE_CONE:
            self.explicacaoTV.text = [self explicacaoTroncoDeCone];
            break;
            
        default:
            break;
    }
    
    [self updateFont];
}

-(NSString *)explicacaoCilindro
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Cilindro\n\nO cilindro é um objeto tridimensional obtido pela rotação de um retângulo.\n\nFórmulas:\n\n1 - Área lateral\n\nA área lateral pode ser considerada um retângulo, pois se planificarmos um cilindro, obtemos 2 círculos e um retângulo, então podemos aplicar a área do retângulo na área lateral do cilindro:\n\nAl = B . h\n\nMas como a base é a circunferência de um círculo, substituímos sua base pela circunferência do círculo:\n\nAl = (2 . π . r) . h\n\nEntão:\n\nAl = 2 . π . r . h\n\nAl = Área lateral\nπ = Constante PI\nr = Raio da base do cilindro\nh = Altura do cilindro\n\n2 - Área total\n\nA Área total é a soma da área lateral com as áreas das duas bases:\n\nAt = Al + 2 Ab\nAt = (2 . π . r . h) + 2 . (π . r²)\nAt = 2 . π . r (r + h)\n\nAt = Área total\nAl = Área lateral\nAb = Área da base\nπ = Constante PI\nr = Raio da base do cilindro\nh = Altura do cilindro\n\n3 - Volume\n\nO volume é definido pelo produto da área da base vezes a altura.\n\nV = Ab . h\n\nV = Volume do cilindro\nAb = Área da base\nh = Altura\n"];
    
    return str;
}

-(NSString *)explicacaoCirculo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Círculo\n\nO círculo é o conjunto de todos os pontos de um plano onde sua distância a um ponto fixo P é menor ou igual a uma distância R dada.\n\nA circunferência é o lugar geométrico de todos os pontos de um plano localizados a uma distância R do centro da circunferência.\n\nFórmulas:\n\n1 - Área do círculo\n\nA = π . r²\n(A área é igual a PI vezes o raio ao quadrado)\n\nA = Área\nπ = Constante PI\nr = Raio do círculo\n\n2 - Circunferência\n\nC = 2 . π . r\n(A circunferência do círculo é duas vezes PI vezes o raio)\n\nπ = Constante PI\nr = Raio do círculo\n"];
    
    return str;
}

-(NSString *)explicacaoCone
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Cone\n\nO cone é um objeto tridimensional obtido pela rotação de um triângulo retângulo.\n\nFórmulas:\n\n1 - Área Lateral\n\nAl = π . r . g\n\nAl = Área Lateral\nπ = Constante PI\nr = Raio da base do cone\ng = Geratriz do cone\n\n2 - Área Total\n\nA área total do cone é a soma da área lateral e a área da base.\nComo a base é um círculo, usamos sua fórmula de área na área da base.\n\nAt = Al + Ab\nAt = π . r . g + π . r²\nAt = π . r . (g + r)\n\nAt = Área total\nAl = Área lateral\nπ = Constante PI\ng = Geratriz do cone\nr = Raio da base do cone\n\n3 - Volume\n\nO volume do cone é calculado pela seguinte fórmula:\n\nV = 1/3 . π . r² . h\n(Volume do cone é um terço do produto da área da base pela altura)\n\nV = Volume do cone\nr = Raio da base do cone\nh = Altura do cone\n"];
    
    return str;
}

-(NSString *)explicacaoCubo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Cubo\n\nO cubo é um polígono regular de 6 faces, 12 arestas e 8 vértices.\n\nFórmulas:\n\n1 - Área Lateral\n\nA área lateral de um cubo consiste na área das faces laterais, desconsiderando a base e o topo\n\nAl = 4L²\n(Área lateral é igual a quatro vezes o lado ao quadrado)\n\nAl = Área lateral\nL = Lado do cubo\n\n2 - Área total\n\nA área total do cubo é a soma das áreas de todas as faces.\n\nAt = 6L²\n(Área total é igual a seis vezes o lado ao quadrado)\n\nAt = Área total\nL = Lado do cubo\n\n3 - Diagonal\n\nA diagonal de um cubo pode ser vista como um triângulo retângulo, sendo a hipotenusa a diagonal do cubo, e os catetos sendo o lado do cubo e a diagonal da base.\n\nDc² = L² + Db²\n\nComo a base é um quadrado, podemos aplicar a diagonal do quadrado na diagonal da base\n\nDc² = L² + (L√2)²\nDc² = L² + 2 . L²\nDc² = 3 . L²\nDc = √3 . L²\nDc = L √3\n(Diagonal do cubo é o lado vezes a raiz quadrada de três)\n\nDc = Diagonal do cubo\nDb = Diagonal da base\nL = Lado do cubo\n\n4 - Volume\n\nO volume do cubo é calculado pela fórmula\n\nV = L³\n(Volume é o lado ao cubo)\n\nV = Volume\nL = Lado do cubo\n"];
    
    return str;
}

-(NSString *)explicacaoEsfera
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Esfera\n\nA esfera é um objeto tridimensional obtido pela rotação de um círculo.\n\nFórmulas:\n\n1 - Área\n\nA = 4 . π . r²\n\nA = Área da esfera\nπ = Constante PI\nr = Raio da esfera\n2 - Volume\n\nV = 4/3 . π . r³\n\nV = Volume da esfera\nπ = Constante PI\nr = Raio da esfera\n"];
    
    return str;
}

-(NSString *)explicacaoQuadrado
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Quadrado\n\nO quadrado é um polígono de 4 lados regular, ou seja, contém 4 ângulos retos e seus lados possuem a mesma medida. O quadrado também é um retângulo pois seus vértices formam ângulos retos (90º) e suas diagonais possuem a mesma medida.\n\nFórmulas:\n\n1 - Área\n\nComo o quadrado também é um retângulo, o cálculo da área do quadrado é o mesmo cálculo usado na área do retângulo.\n\nA = B . H\n\nB = Base\nH = Altura\n(Área é igual a base vezes a altura)\n\nMas como os lados do quadrado são iguais, podemos substituir B e A por L.\n\nA = L . L\nA = L²\n\nL = Lado\n\nLogo, a área do quadrado é a medida do seu lado elevada ao quadrado.\n\n2 - Diagonal\n\nSe for traçada uma linha reta ligando o vértice inferior direito ao vértice superior esquerdo ou uma reta que ligue o vértice inferior esquerdo ao vértice superior esquerdo, temos a diagonal do quadrado.\n\nPara calcular a diagonal do quadrado, usa-se a fórmula:\n\nD = L√2\n(Diagonal é igual ao lado vezes a raiz quadrada de dois)\n\nAo traçar a diagonal, dividimos o quadrado em dois triângulos retângulos, e podemos notar que a diagonal é a hipotenusa do triângulo retângulo, e os lados do quadrado são os catetos do triângulo.\n\nEntão podemos usar o Teorema de Pitágoras para calcular a diagonal do quadrado.\n\nD² = L² + L²\nD² = 2L²\nD = √2L²\nD = L√2\n"];
    
    return str;
}

-(NSString *)explicacaoRetangulo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Retângulo\n\nO retângulo é um polígono de 4 lados, onde seus ângulos internos são retos (90º) e possui dois lados paralelos horizontalmente e outros dois lados paralelos verticalmente. A base é representada pelo lado horizontal e a altura pelo lado vertical.\n\nFórmulas\n\n1 - Área\n\nA área ou superfície de um retângulo é calculada pela seguinte fórmula:\n\nA = B . H\n(Área é igual a base vezes a altura)\n\nA = Área\nB = Base\nH = Altura\n\n2 - Diagonal\n\nSe for traçada uma linha reta ligando o vértice inferior direito ao vértice superior esquerdo ou uma reta que ligue o vértice inferior esquerdo ao vértice superior esquerdo, temos a diagonal do retângulo.\n\nAo traçar a diagonal, dividimos o retângulo em dois triângulos retângulos, e podemos notar que a diagonal é a hipotenusa do triângulo retângulo, enquanto a base e a altura do retângulo são os catetos do triângulo.\n\nEntão podemos usar o Teorema de Pitágoras para calcular a diagonal do retângulo.\n\nD² = B² + H²\nD = √(B² + H²)\n\nD = Diagonal do retângulo\nB = Base\nH = Altura\n"];
    
    return str;
}

-(NSString *)explicacaoTrapezio
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Trapézio\n\nO trapézio é um polígono de 4 lados com dois lados paralelos entre si, os quais são chamados de base maior e base menor.\n\nFórmulas\n\n1 - Área\n\nA área do trapézio é calculada pela seguinte fórmula:\n\nA = (B + b) . h/2\n(Área é igual a base maior mais a base menor, vezes a altura dividido por dois)\n\nA = Área\nB = Base maior\nb = Base menor\nh = Altura\n"];
    
    return str;
}


-(NSString *)explicacaoTriangulo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Triângulo\n\nO triângulo é o polígono com apenas 3 lados. Forma 3 ângulos internos, cuja soma resulta sempre em 180º.\n\nO triângulo possui vários tipos, que são classificados de acordo com as proporções dos seus lados e de seus ângulos internos.\n\nDe acordo com os lados:\n\n1- Triângulo equilátero\n\nÉ o triângulo que possui os três lados congruentes, ou seja, possuem a mesma medida. Todo triângulo equilátero tem seus ângulos internos medindo 60º, o que o torna também equiângulo e também um polígono regular.\n\n2- Triângulo isósceles\n\nÉ o triângulo que possui pelo menos dois lados e ângulos congruentes. Os dois ângulos congruentes são chamados de ângulos da base e o ângulo formado pelos lados congruentes é chamado de ângulo do vértice.\n\n3 - Triângulo escaleno\n\nÉ o triângulo onde todos os lados e ângulos possuem medidas diferentes.\n\nDe acordo com os ângulos internos:\n\n1 - Triângulo equiângulo\n\nÉ o triângulo onde todos os ângulos internos são congruentes, ocorre somente em triângulos equiláteros.\n\n2 - Triângulo retângulo\n\nÉ o triângulo que possui um ângulo reto (90º). Nele, a hipotenusa é o lado oposto ao ângulo reto, os outros lados são definidos como catetos. Além disso, os outros dois ângulos são complementares (sua soma resulta em 90º).\n\n3 - Triângulo obtusângulo\n\nÉ o triângulo que possui um ângulo obtuso (maior que 90º) e os outros dois ângulos agudos não complementares.\n\n4 - Triângulo acutângulo\n\nÉ o triângulo que possui todos os ângulos agudos (menores que 90º), que somam 180º.\n\n\nCondição de existência do triângulo:\n\nPara que um triângulo exista, é necessário que a medida de qualquer um dos lados seja menor que a soma das medidas dos outros dois e maior que o valor absoluto da diferença entre essas medidas, ou seja:\n\n|b - c| < a < b + c\n\nSendo a, b e c lados do triângulo.\n\n\nFórmulas:\n\n1 - Altura\n\nPodemos calcular a altura de um triângulo usando o teorema de Pitágoras.\nO teorema de Pitágoras somente pode ser aplicado a triângulos retângulos, então como vamos aplicá-la em triângulos equiláteros e isósceles?\nSimples, cortamos o triângulo de uma forma simétrica, assim obtendo dois triângulos retângulos congruentes.\nEntão para calcular a altura do triângulo isósceles, temos:\nh² = L² + (B/2)²\nComo dividimos a base ao meio, temos que dividí-la por dois, então:\nh² = L² + B²/4\nh = √(L² + B²/4)\n\nh = Altura\nL = Lado\nB = Base\nDetalhe:\n\nComo a base e o lado do triângulo equilátero são congruentes, sua fórmula pode ser escrita de maneira mais simplificada.\nCalculando a altura do triângulo equilátero:\nh² = L² + (L/2)²\nh² = (3L²)/4\nh = (√3L²)/4\nh = (L√3)/2\n\nh = Altura\nL = Lado\n\n\n2 - Área\n\nA área do triângulo é calculada pela seguinte fórmula:\n\nAt = (B . h)/2\n(Área é igual a base vezes a altura sobre dois)\n\nA = Área\nB = Base\nh = Altura\n\nDetalhe:\n\nSe temos um triângulo equilátero de lado L, sua área será definida por:\n\nA = (L²√3)/4\n\nMas se a área é calculado por base vezes altura sobre dois, como chegar nessa fórmula?\nVamos colocar a base e a altura do triângulo:\n\nA = (L . h)/2\n\nSabendo que a altura do triângulo equilátero é:\n\nh = (L√3)/2\n\nEntão:\n\nA = (L . L√3/2) /2\nA = (L²√3)/4\n\nExemplo 1:\n\nSupondo que temos um retângulo de base B e altura h. Sua área será calculada por:\n\nAr = B . h\n\nEntão, traçando a diagonal do retângulo, obtemos dois triângulos, logo para obtermos sua área, basta dividirmos a área do retângulo por dois.\n\nLogo:\n\nAt = Ar/2\nAt = (B . h)/2\n\nA = Área\nB = Base\nh = Altura\n\nExemplo 2:\n\nSe cortarmos um triângulo isósceles no meio de forma simétrica, obteremos 2 metades de um retângulo, para calcular sua área, usaremos a fórmula da área do retângulo:\n\nA = B . h\n\nPorém, como cortamos simetricamente, a base foi reduzida pela metade. Então:\n\nA = (B . h)/2\n"];
    
    return str;
}

-(NSString *)explicacaoTroncoDeCone
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Tronco de cone\n\nO tronco de cone é uma fatia cortada de um cone.\n\nFórmulas:\n\n1 - Área\n\nA = π . g (R + r)\n\nA = Área\nπ = Constante PI\ng = Geratriz\nR = Raio maior\nr = Raio menor\n2 - Volume\n\nV =  π . h/3 . (r² + r . R + R²)\n\nV = Volume\nπ = Constante PI\nh = Altura\nR = Raio maior\nr = Raio menor\n"];
    
    return str;
}
@end
