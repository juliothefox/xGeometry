//
//  XGMCalculoViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 18/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCalculoViewController.h"
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

@interface XGMCalculoViewController ()

@end

@implementation XGMCalculoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if([self.view endEditing:YES]){
        [self resignFirstResponder];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    switch (self.forma) {
        
        case CILINDRO:
            if(self.propriedade == 0){
                self.view = [self areaLateralCilindro];
            }else{
                if(self.propriedade == 1){
                    self.view = [self areaTotalCilindro];
                }else{
                    self.view = [self volumeCilindro];
                }
            }
            break;
            
        case CIRCULO:
            if(self.propriedade == 0){
                self.view = [self areaCirculo];
            }else{
                self.view = [self circunferenciaCirculo];
            }
            break;
        
        case CONE:
            if(self.propriedade == 0){
                self.view = [self areaLateralCone];
            }else{
                if(self.propriedade == 1){
                    self.view = [self areaTotalCone];
                }else{
                    self.view = [self volumeCone];
                }
            }
            break;
            
        case CUBO:
            if(self.propriedade == 0){
                self.view = [self areaLateralCubo];
            }else{
                if(self.propriedade == 1){
                    self.view = [self areaTotalCubo];
                }else{
                    if(self.propriedade == 2){
                        self.view = [self diagonalCubo];
                    }else{
                        self.view = [self volumeCubo];
                    }
                }
            }
            break;
            
        case ESFERA:
            if(self.propriedade == 0){
                self.view = [self areaEsfera];
            }else{
                self.view = [self volumeEsfera];
            }
            break;
            
        case QUADRADO:
            if(self.propriedade == 0){
                self.view = [self areaQuadrado];
            }else{
                self.view = [self diagonalQuadrado];
            }
            break;
            
        case RETANGULO:
            if(self.propriedade == 0){
                self.view = [self areaRetangulo];
            }else{
                self.view = [self diagonalRetangulo];
            }
            break;
            
        case TRAPEZIO:
            if(self.propriedade == 0){
                self.view = [self areaTrapezio];
            }
            break;
            
        case TRIANGULO:
            if(self.propriedade == 0){
                self.view = [self alturaTrianguloEquilatero];
            }else{
                if(self.propriedade == 1){
                    self.view = [self alturaTrianguloIsosceles];
                }else{
                    if(self.propriedade == 2){
                        self.view = [self areaTrianguloEquilatero];
                    }else{
                        if(self.propriedade == 3){
                            self.view = [self areaTrianguloIsosceles];
                        }else{
                            self.title = @"Pitágoras";
                        }
                    }
                }
            }
            break;
            
        case TRONCO_DE_CONE:
            if(self.propriedade == 0){
                self.view = [self areaTroncoDeCone];
            }else{
                self.view = [self volumeTroncoDeCone];
            }
            break;
            
        default:
            break;
    }
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
}

-(UIView *)areaQuadrado
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaQuadrado)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMQuadrado *quadrado = [[XGMQuadrado alloc]init];
    quadrado.ladoTF = ladoTF;
    self.quadrado = quadrado;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)diagonalQuadrado
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaDiagonalQuadrado)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;

    XGMQuadrado *quadrado = [[XGMQuadrado alloc]init];
    quadrado.ladoTF = ladoTF;
    self.quadrado = quadrado;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)areaCirculo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaCirculo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCirculo *circulo = [[XGMCirculo alloc]init];
    circulo.raioTF = raioTF;
    self.circulo = circulo;
    
    [view addSubview:raioTF];
    
    return view;
}

-(UIView *)circunferenciaCirculo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaCircunferenciaCirculo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCirculo *circulo = [[XGMCirculo alloc]init];
    circulo.raioTF = raioTF;
    self.circulo = circulo;
    
    [view addSubview:raioTF];
    
    return view;
}

-(UIView *)areaLateralCilindro
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaLateralCilindro)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCilindro *cilindro = [[XGMCilindro alloc]init];
    cilindro.base = [[XGMCirculo alloc]init];
    cilindro.base.raioTF = raioTF;
    cilindro.alturaTF = alturaTF;
    self.cilindro = cilindro;
    
    [view addSubview:raioTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)areaTotalCilindro
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTotalCilindro)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCilindro *cilindro = [[XGMCilindro alloc]init];
    cilindro.base = [[XGMCirculo alloc]init];
    cilindro.base.raioTF = raioTF;
    cilindro.alturaTF = alturaTF;
    self.cilindro = cilindro;
    
    [view addSubview:raioTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)volumeCilindro
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaVolumeCilindro)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCilindro *cilindro = [[XGMCilindro alloc]init];
    cilindro.base = [[XGMCirculo alloc]init];
    cilindro.base.raioTF = raioTF;
    cilindro.alturaTF = alturaTF;
    self.cilindro = cilindro;
    
    [view addSubview:raioTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)areaLateralCone
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *geratrizTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    geratrizTF.borderStyle = UITextBorderStyleRoundedRect;
    geratrizTF.placeholder = @"Geratriz";
    geratrizTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaLateralCone)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCone *cone = [[XGMCone alloc]init];
    cone.base = [[XGMCirculo alloc]init];
    cone.base.raioTF = raioTF;
    cone.geratrizTF = geratrizTF;
    self.cone = cone;
    
    [view addSubview:raioTF];
    [view addSubview:geratrizTF];
    
    return view;
}

-(UIView *)areaTotalCone
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *geratrizTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    geratrizTF.borderStyle = UITextBorderStyleRoundedRect;
    geratrizTF.placeholder = @"Geratriz";
    geratrizTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTotalCone)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCone *cone = [[XGMCone alloc]init];
    cone.base = [[XGMCirculo alloc]init];
    cone.base.raioTF = raioTF;
    cone.geratrizTF = geratrizTF;
    self.cone = cone;
    
    [view addSubview:raioTF];
    [view addSubview:geratrizTF];
    
    return view;
}

-(UIView *)volumeCone
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *aluraTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    aluraTF.borderStyle = UITextBorderStyleRoundedRect;
    aluraTF.placeholder = @"Altura";
    aluraTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaVolumeCone)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCone *cone = [[XGMCone alloc]init];
    cone.base = [[XGMCirculo alloc]init];
    cone.base.raioTF = raioTF;
    cone.alturaTF = aluraTF;
    self.cone = cone;
    
    [view addSubview:raioTF];
    [view addSubview:aluraTF];
    
    return view;
}

-(UIView *)areaLateralCubo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaLateralCubo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCubo *cubo = [[XGMCubo alloc]init];
    cubo.ladoTF = ladoTF;
    self.cubo = cubo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)areaTotalCubo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTotalCubo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCubo *cubo = [[XGMCubo alloc]init];
    cubo.ladoTF = ladoTF;
    self.cubo = cubo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)diagonalCubo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaDiagonalCubo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCubo *cubo = [[XGMCubo alloc]init];
    cubo.ladoTF = ladoTF;
    self.cubo = cubo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)volumeCubo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaVolumeCubo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMCubo *cubo = [[XGMCubo alloc]init];
    cubo.ladoTF = ladoTF;
    self.cubo = cubo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)areaEsfera
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaEsfera)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMEsfera *esfera = [[XGMEsfera alloc]init];
    esfera.raioTF = raioTF;
    self.esfera = esfera;
    
    [view addSubview:raioTF];
    
    return view;
}

-(UIView *)volumeEsfera
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaVolumeEsfera)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMEsfera *esfera = [[XGMEsfera alloc]init];
    esfera.raioTF = raioTF;
    self.esfera = esfera;
    
    [view addSubview:raioTF];
    
    return view;
}

-(UIView *)areaRetangulo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseTF.borderStyle = UITextBorderStyleRoundedRect;
    baseTF.placeholder = @"Base";
    baseTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaRetangulo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMRetangulo *retangulo = [[XGMRetangulo alloc]init];
    retangulo.baseTF = baseTF;
    retangulo.alturaTF = alturaTF;
    self.retangulo = retangulo;
    
    [view addSubview:baseTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)diagonalRetangulo
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseTF.borderStyle = UITextBorderStyleRoundedRect;
    baseTF.placeholder = @"Base";
    baseTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaDiagonalRetangulo)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMRetangulo *retangulo = [[XGMRetangulo alloc]init];
    retangulo.baseTF = baseTF;
    retangulo.alturaTF = alturaTF;
    self.retangulo = retangulo;
    
    [view addSubview:baseTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)areaTrapezio
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseMaiorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseMaiorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMaiorTF.placeholder = @"Base";
    baseMaiorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *baseMenorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 70, 80, 30)];
    baseMenorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMenorTF.placeholder = @"Base";
    baseMenorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTrapezio)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTrapezio *trapezio = [[XGMTrapezio alloc]init];
    trapezio.baseMenorTF  = baseMenorTF;
    trapezio.baseMaiorTF  = baseMaiorTF;
    trapezio.alturaTF     = alturaTF;
    self.trapezio = trapezio;
    
    [view addSubview:baseMenorTF];
    [view addSubview:baseMaiorTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)areaTroncoDeCone
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseMaiorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseMaiorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMaiorTF.placeholder = @"Raio";
    baseMaiorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *baseMenorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 70, 80, 30)];
    baseMenorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMenorTF.placeholder = @"Raio";
    baseMenorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Geratriz";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTroncoDeCone)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTroncoDeCone *troncoDeCone = [[XGMTroncoDeCone alloc]init];
    troncoDeCone.baseMaior  = [[XGMCirculo alloc]init];
    troncoDeCone.baseMenor  = [[XGMCirculo alloc]init];
    troncoDeCone.baseMaior.raioTF  = baseMaiorTF;
    troncoDeCone.baseMenor.raioTF  = baseMenorTF;
    troncoDeCone.geratrizTF   = alturaTF;
    self.troncoDeCone = troncoDeCone;
    
    [view addSubview:baseMenorTF];
    [view addSubview:baseMaiorTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)volumeTroncoDeCone
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseMaiorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseMaiorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMaiorTF.placeholder = @"Raio";
    baseMaiorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *baseMenorTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 70, 80, 30)];
    baseMenorTF.borderStyle = UITextBorderStyleRoundedRect;
    baseMenorTF.placeholder = @"Raio";
    baseMenorTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    alturaTF.borderStyle = UITextBorderStyleRoundedRect;
    alturaTF.placeholder = @"Altura";
    alturaTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaVolumeTroncoDeCone)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTroncoDeCone *troncoDeCone = [[XGMTroncoDeCone alloc]init];
    troncoDeCone.baseMaior  = [[XGMCirculo alloc]init];
    troncoDeCone.baseMenor  = [[XGMCirculo alloc]init];
    troncoDeCone.baseMaior.raioTF  = baseMaiorTF;
    troncoDeCone.baseMenor.raioTF  = baseMenorTF;
    troncoDeCone.geratrizTF   = alturaTF;
    self.troncoDeCone = troncoDeCone;
    
    [view addSubview:baseMenorTF];
    [view addSubview:baseMaiorTF];
    [view addSubview:alturaTF];
    
    return view;
}

-(UIView *)alturaTrianguloEquilatero
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAlturaTrianguloEquilatero)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTriangulo *triangulo = [[XGMTriangulo alloc]init];
    triangulo.ladoTF = ladoTF;
    self.triangulo = triangulo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)areaTrianguloEquilatero
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTrianguloEquilatero)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTriangulo *triangulo = [[XGMTriangulo alloc]init];
    triangulo.ladoTF = ladoTF;
    self.triangulo = triangulo;
    
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)alturaTrianguloIsosceles
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseTF.borderStyle = UITextBorderStyleRoundedRect;
    baseTF.placeholder = @"Base";
    baseTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAlturaTrianguloIsosceles)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTriangulo *triangulo = [[XGMTriangulo alloc]init];
    triangulo.baseTF  = baseTF;
    triangulo.ladoTF = ladoTF;
    self.triangulo = triangulo;
    
    [view addSubview:baseTF];
    [view addSubview:ladoTF];
    
    return view;
}

-(UIView *)areaTrianguloIsosceles
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *baseTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 210, 80, 30)];
    baseTF.borderStyle = UITextBorderStyleRoundedRect;
    baseTF.placeholder = @"Base";
    baseTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 130, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaTrianguloIsosceles)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    XGMTriangulo *triangulo = [[XGMTriangulo alloc]init];
    triangulo.baseTF  = baseTF;
    triangulo.ladoTF = ladoTF;
    self.triangulo = triangulo;
    
    [view addSubview:baseTF];
    [view addSubview:ladoTF];
    
    return view;
}

-(void)calculaAreaQuadrado
{
    self.resultado = [self.quadrado calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaDiagonalQuadrado
{
    self.resultado = [self.quadrado calculaDiagonal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaCirculo
{
    self.resultado = [self.circulo calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaCircunferenciaCirculo
{
    self.resultado = [self.circulo calculaCircunferencia];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaLateralCilindro
{
    self.resultado = [self.cilindro calculaAreaLateral];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTotalCilindro
{
    self.resultado = [self.cilindro calculaAreaTotal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaVolumeCilindro
{
    self.resultado = [self.cilindro calculaVolume];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaLateralCone
{
    self.resultado = [self.cone calculaAreaLateral];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTotalCone
{
    self.resultado = [self.cone calculaAreaTotal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaVolumeCone
{
    self.resultado = [self.cone calculaVolume];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaLateralCubo
{
    self.resultado = [self.cubo calculaAreaLateral];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTotalCubo
{
    self.resultado = [self.cubo calculaAreaTotal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaDiagonalCubo
{
    self.resultado = [self.cubo calculaDiagonal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaVolumeCubo
{
    self.resultado = [self.cubo calculaVolume];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaEsfera
{
    self.resultado = [self.esfera calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaVolumeEsfera
{
    self.resultado = [self.esfera calculaVolume];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaRetangulo
{
    self.resultado = [self.retangulo calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaDiagonalRetangulo
{
    self.resultado = [self.retangulo calculaDiagonal];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTrapezio
{
    self.resultado = [self.trapezio calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTroncoDeCone
{
    self.resultado = [self.troncoDeCone calculaArea];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaVolumeTroncoDeCone
{
    self.resultado = [self.troncoDeCone calculaVolume];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAlturaTrianguloEquilatero
{
    self.resultado = [self.triangulo calculaAlturaEquilatero];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAlturaTrianguloIsosceles
{
    self.resultado = [self.triangulo calculaAlturaIsosceles];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTrianguloEquilatero
{
    self.resultado = [self.triangulo calculaAreaEquilatero];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

-(void)calculaAreaTrianguloIsosceles
{
    self.resultado = [self.triangulo calculaAreaIsosceles];
    [self performSegueWithIdentifier:@"resultado" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"resultado"]){
        XGMResultadoViewController *view = [segue destinationViewController];
        view.resultado = self.resultado;
    }
}

@end
