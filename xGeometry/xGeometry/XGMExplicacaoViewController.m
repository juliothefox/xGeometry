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
    
    [str appendString:@"Cilindro\n\t\n\tO cilindro é um objeto tridimensional obtido pela rotação de um retângulo.\n\t\nFórmulas:\n\t\n1 - Área lateral\n\t\n\tA área lateral pode ser considerada um retângulo, pois se planificarmos um cilindro, obtemos 2 círculos e um retângulo, então podemos aplicar a área do retângulo na área lateral do cilindro:\n\t\n\tAl = B . h\n\t\n\tMas como a base é a circunferência de um círculo, substituímos sua base pela circunferência do círculo:\n\t\n\tAl = (2 . π . r) . h\n\t\n\tEntão:\n\t\n\tAl = 2 . π . r . h\n\t\n\tAl = Área lateral\n\tπ = Constante PI\n\tr = Raio da base do cilindro\n\th = Altura do cilindro\n\t\n2 - Área total\n\t\n\tA Área total é a soma da área lateral com as áreas das duas bases:\n\t\n\tAt = Al + 2 Ab\n\tAt = (2 . π . r . h) + 2 . (π . r²)\n\tAt = 2 . π . r (r + h)\n\t\n\tAt = Área total\n\tAl = Área lateral\n\tAb = Área da base\n\tπ = Constante PI\n\tr = Raio da base do cilindro\n\th = Altura do cilindro\n\t\n3 - Volume\n\t\n\tO volume é definido pelo produto da área da base vezes a altura.\n\t\n\tV = Ab . h\n\t\n\tV = Volume do cilindro\n\tAb = Área da base\n\th = Altura\n\t"];
    
    return str;
}

-(NSString *)explicacaoCirculo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Círculo\n\t\n\tO círculo é o conjunto de todos os pontos de um plano onde sua distância a um ponto fixo P é menor ou igual a uma distância R dada.\n\t\n\tA circunferência é o lugar geométrico de todos os pontos de um plano localizados a uma distância R do centro da circunferência.\n\t\nFórmulas:\n\t\n1 - Área do círculo\n\t\n\tA = π . r²\n\t(A área é igual a PI vezes o raio ao quadrado)\n\t\n\tA = Área\n\tπ = Constante PI\n\tr = Raio do círculo\n\t\n2 - Circunferência\n\t\n\tC = 2 . π . r\n\t(A circunferência do círculo é duas vezes PI vezes o raio)\n\t\n\tπ = Constante PI\n\tr = Raio do círculo\n\t"];
    
    return str;
}

-(NSString *)explicacaoCone
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Cone\n\t\n\tO cone é um objeto tridimensional obtido pela rotação de um triângulo retângulo.\n\t\nFórmulas:\n\t\n1 - Área Lateral\n\t\n\tAl = π . r . g\n\t\n\tAl = Área Lateral\n\tπ = Constante PI\n\tr = Raio da base do cone\n\tg = Geratriz do cone\n\t\n2 - Área Total\n\t\n\tA área total do cone é a soma da área lateral e a área da base.\n\tComo a base é um círculo, usamos sua fórmula de área na área da base.\n\t\n\tAt = Al + Ab\n\tAt = π . r . g + π . r²\n\tAt = π . r . (g + r)\n\t\n\tAt = Área total\n\tAl = Área lateral\n\tπ = Constante PI\n\tg = Geratriz do cone\n\tr = Raio da base do cone\n\t\n3 - Volume\n\t\n\tO volume do cone é calculado pela seguinte fórmula:\n\t\n\tV = 1/3 . π . r² . h\n\t(Volume do cone é um terço do produto da área da base pela altura)\n\t\n\tV = Volume do cone\n\tr = Raio da base do cone\n\th = Altura do cone\n\t"];
    
    return str;
}

-(NSString *)explicacaoCubo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Cubo\n\t\n\tO cubo é um polígono regular de 6 faces, 12 arestas e 8 vértices.\n\t\nFórmulas:\n\t\n1 - Área Lateral\n\t\n\tA área lateral de um cubo consiste na área das faces laterais, desconsiderando a base e o topo\n\t\n\tAl = 4L²\n\t(Área lateral é igual a quatro vezes o lado ao quadrado)\n\t\n\tAl = Área lateral\n\tL = Lado do cubo\n\t\n2 - Área total\n\t\n\tA área total do cubo é a soma das áreas de todas as faces.\n\t\n\tAt = 6L²\n\t(Área total é igual a seis vezes o lado ao quadrado)\n\t\n\tAt = Área total\n\tL = Lado do cubo\n\t\n3 - Diagonal\n\t\n\tA diagonal de um cubo pode ser vista como um triângulo retângulo, sendo a hipotenusa a diagonal do cubo, e os catetos sendo o lado do cubo e a diagonal da base.\n\t\n\tDc² = L² + Db²\n\t\n\tComo a base é um quadrado, podemos aplicar a diagonal do quadrado na diagonal da base\n\t\n\tDc² = L² + (L√2)²\n\tDc² = L² + 2 . L²\n\tDc² = 3 . L²\n\tDc = √3 . L²\n\tDc = L √3\n\t(Diagonal do cubo é o lado vezes a raiz quadrada de três)\n\t\n\tDc = Diagonal do cubo\n\tDb = Diagonal da base\n\tL = Lado do cubo\n\t\n\t4 - Volume\n\t\n\tO volume do cubo é calculado pela fórmula\n\t\n\tV = L³\n\t(Volume é o lado ao cubo)\n\t\n\tV = Volume\n\tL = Lado do cubo\n\t"];
    
    return str;
}

-(NSString *)explicacaoEsfera
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Esfera\n\t\n\tA esfera é um objeto tridimensional obtido pela rotação de um círculo.\n\t\nFórmulas:\n\t\n1 - Área\n\t\n\tA = 4 . π . r²\n\t\n\tA = Área da esfera\n\tπ = Constante PI\n\tr = Raio da esfera\n2 - Volume\n\t\n\tV = 4/3 . π . r³\n\t\n\tV = Volume da esfera\n\tπ = Constante PI\n\tr = Raio da esfera\n\t"];
    
    return str;
}

-(NSString *)explicacaoQuadrado
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Quadrado\n\t\n\tO quadrado é um polígono de 4 lados regular, ou seja, contém 4 ângulos retos e seus lados possuem a mesma medida. O quadrado também é um retângulo pois seus vértices formam ângulos retos (90º) e suas diagonais possuem a mesma medida.\n\t\nFórmulas:\n\t\n1 - Área\n\t\n\tComo o quadrado também é um retângulo, o cálculo da área do quadrado é o mesmo cálculo usado na área do retângulo.\n\t\n\tA = B . H\n\t\n\tB = Base\n\tH = Altura\n\t(Área é igual a base vezes a altura)\n\t\n\tMas como os lados do quadrado são iguais, podemos substituir B e A por L.\n\t\n\tA = L . L\n\tA = L²\n\t\n\tL = Lado\n\t\n\tLogo, a área do quadrado é a medida do seu lado elevada ao quadrado.\n\t\n2 - Diagonal\n\t\n\tSe for traçada uma linha reta ligando o vértice inferior direito ao vértice superior esquerdo ou uma reta que ligue o vértice inferior esquerdo ao vértice superior esquerdo, temos a diagonal do quadrado.\n\t\n\tPara calcular a diagonal do quadrado, usa-se a fórmula:\n\t\n\tD = L√2\n\t(Diagonal é igual ao lado vezes a raiz quadrada de dois)\n\t\n\tAo traçar a diagonal, dividimos o quadrado em dois triângulos retângulos, e podemos notar que a diagonal é a hipotenusa do triângulo retângulo, e os lados do quadrado são os catetos do triângulo.\n\t\n\tEntão podemos usar o Teorema de Pitágoras para calcular a diagonal do quadrado.\n\t\n\tD² = L² + L²\n\tD² = 2L²\n\tD = √2L²\n\tD = L√2\n\t"];
    
    return str;
}

-(NSString *)explicacaoRetangulo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Retângulo\n\t\n\tO retângulo é um polígono de 4 lados, onde seus ângulos internos são retos (90º) e possui dois lados paralelos horizontalmente e outros dois lados paralelos verticalmente. A base é representada pelo lado horizontal e a altura pelo lado vertical.\n\t\nFórmulas\n\t\n1 - Área\n\t\n\tA área ou superfície de um retângulo é calculada pela seguinte fórmula:\n\t\n\tA = B . H\n\t(Área é igual a base vezes a altura)\n\t\n\tA = Área\n\tB = Base\n\tH = Altura\n\t\n2 - Diagonal\n\t\n\tSe for traçada uma linha reta ligando o vértice inferior direito ao vértice superior esquerdo ou uma reta que ligue o vértice inferior esquerdo ao vértice superior esquerdo, temos a diagonal do retângulo.\n\t\n\tAo traçar a diagonal, dividimos o retângulo em dois triângulos retângulos, e podemos notar que a diagonal é a hipotenusa do triângulo retângulo, enquanto a base e a altura do retângulo são os catetos do triângulo.\n\t\n\tEntão podemos usar o Teorema de Pitágoras para calcular a diagonal do retângulo.\n\t\n\tD² = B² + H²\n\tD = √(B² + H²)\n\t\n\tD = Diagonal do retângulo\n\tB = Base\n\tH = Altura\n\t"];
    
    return str;
}

-(NSString *)explicacaoTrapezio
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Trapézio\n\t\n\tO trapézio é um polígono de 4 lados com dois lados paralelos entre si, os quais são chamados de base maior e base menor.\n\t\nFórmulas\n\t\n1 - Área\n\t\n\tA área do trapézio é calculada pela seguinte fórmula:\n\t\n\tA = (B + b) . h/2\n\t(Área é igual a base maior mais a base menor, vezes a altura dividido por dois)\n\t\n\tA = Área\n\tB = Base maior\n\tb = Base menor\n\th = Altura\n\t"];
    
    return str;
}


-(NSString *)explicacaoTriangulo
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Triângulo\n\t\n\tO triângulo é o polígono com apenas 3 lados. Forma 3 ângulos internos, cuja soma resulta sempre em 180º.\n\t\n\tO triângulo possui vários tipos, que são classificados de acordo com as proporções dos seus lados e de seus ângulos internos.\n\t\n\tDe acordo com os lados:\n\t\n1- Triângulo equilátero\n\t\n\tÉ o triângulo que possui os três lados congruentes, ou seja, possuem a mesma medida. Todo triângulo equilátero tem seus ângulos internos medindo 60º, o que o torna também equiângulo e também um polígono regular.\n\t\n2- Triângulo isósceles\n\t\n\tÉ o triângulo que possui pelo menos dois lados e ângulos congruentes. Os dois ângulos congruentes são chamados de ângulos da base e o ângulo formado pelos lados congruentes é chamado de ângulo do vértice.\n\t\n3 - Triângulo escaleno\n\t\n\tÉ o triângulo onde todos os lados e ângulos possuem medidas diferentes.\n\t\n\tDe acordo com os ângulos internos:\n\t\n1 - Triângulo equiângulo\n\t\n\tÉ o triângulo onde todos os ângulos internos são congruentes, ocorre somente em triângulos equiláteros.\n\t\n2 - Triângulo retângulo\n\t\n\tÉ o triângulo que possui um ângulo reto (90º). Nele, a hipotenusa é o lado oposto ao ângulo reto, os outros lados são definidos como catetos. Além disso, os outros dois ângulos são complementares (sua soma resulta em 90º).\n\t\n3 - Triângulo obtusângulo\n\t\n\tÉ o triângulo que possui um ângulo obtuso (maior que 90º) e os outros dois ângulos agudos não complementares.\n\t\n\t4 - Triângulo acutângulo\n\t\n\tÉ o triângulo que possui todos os ângulos agudos (menores que 90º), que somam 180º.\n\t\n\t\n\tCondição de existência do triângulo:\n\t\n\tPara que um triângulo exista, é necessário que a medida de qualquer um dos lados seja menor que a soma das medidas dos outros dois e maior que o valor absoluto da diferença entre essas medidas, ou seja:\n\t\n\t|b - c| < a < b + c\n\t\n\tSendo a, b e c lados do triângulo.\n\t\n\t\nFórmulas:\n\t\n1 - Altura\n\t\n\tPodemos calcular a altura de um triângulo usando o teorema de Pitágoras.\n\tO teorema de Pitágoras somente pode ser aplicado a triângulos retângulos, então como vamos aplicá-la em triângulos equiláteros e isósceles?\n\tSimples, cortamos o triângulo de uma forma simétrica, assim obtendo dois triângulos retângulos congruentes.\n\tEntão para calcular a altura do triângulo isósceles, temos:\n\th² = L² + (B/2)²\n\tComo dividimos a base ao meio, temos que dividí-la por dois, então:\n\th² = L² + B²/4\n\th = √(L² + B²/4)\n\t\n\th = Altura\n\tL = Lado\n\tB = Base\n\tDetalhe:\n\t\n\tComo a base e o lado do triângulo equilátero são congruentes, sua fórmula pode ser escrita de maneira mais simplificada.\n\tCalculando a altura do triângulo equilátero:\n\th² = L² + (L/2)²\n\th² = (3L²)/4\n\th = (√3L²)/4\n\th = (L√3)/2\n\t\n\th = Altura\n\tL = Lado\n\t\n\t\n2 - Área\n\t\n\tA área do triângulo é calculada pela seguinte fórmula:\n\t\n\tAt = (B . h)/2\n\t(Área é igual a base vezes a altura sobre dois)\n\t\n\tA = Área\n\tB = Base\n\th = Altura\n\t\n\tDetalhe:\n\t\n\tSe temos um triângulo equilátero de lado L, sua área será definida por:\n\t\n\tA = (L²√3)/4\n\t\n\tMas se a área é calculado por base vezes altura sobre dois, como chegar nessa fórmula?\n\tVamos colocar a base e a altura do triângulo:\n\t\n\tA = (L . h)/2\n\t\n\tSabendo que a altura do triângulo equilátero é:\n\t\n\th = (L√3)/2\n\t\n\tEntão:\n\t\n\tA = (L . L√3/2) /2\n\tA = (L²√3)/4\n\t\n\tExemplo 1:\n\t\n\tSupondo que temos um retângulo de base B e altura h. Sua área será calculada por:\n\t\n\tAr = B . h\n\t\n\tEntão, traçando a diagonal do retângulo, obtemos dois triângulos, logo para obtermos sua área, basta dividirmos a área do retângulo por dois.\n\t\n\tLogo:\n\t\n\tAt = Ar/2\n\tAt = (B . h)/2\n\t\n\tA = Área\n\tB = Base\n\th = Altura\n\t\n\tExemplo 2:\n\t\n\tSe cortarmos um triângulo isósceles no meio de forma simétrica, obteremos 2 metades de um retângulo, para calcular sua área, usaremos a fórmula da área do retângulo:\n\t\n\tA = B . h\n\t\n\tPorém, como cortamos simetricamente, a base foi reduzida pela metade. Então:\n\t\n\tA = (B . h)/2\n\t"];
    
    return str;
}

-(NSString *)explicacaoTroncoDeCone
{
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:@"Tronco de cone\n\t\n\tO tronco de cone é uma fatia cortada de um cone.\n\t\nFórmulas:\n\t\n1 - Área\n\t\n\tA = π . g (R + r)\n\t\n\tA = Área\n\tπ = Constante PI\n\tg = Geratriz\n\tR = Raio maior\n\tr = Raio menor\n2 - Volume\n\t\n\tV =  π . h/3 . (r² + r . R + R²)\n\t\n\tV = Volume\n\tπ = Constante PI\n\th = Altura\n\tR = Raio maior\n\tr = Raio menor\n\t"];
    
    return str;
}
@end
