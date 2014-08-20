//
//  XGMCalculoViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 18/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCalculoViewController.h"

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
        
        case 0:
            if(self.propriedade == 0){
                self.view = [self areaLateralCilindro];
            }else{
                self.view = [self volumeCilindro];
            }
            break;
            
        case 1:
            if(self.propriedade == 0){
                self.view = [self areaCirculo];
            }else{
                self.view = [self circunferenciaCirculo];
            }
            break;
            
        case 6:
            if(self.propriedade == 0){
                self.view = [self areaQuadrado];
            }else{
                self.view = [self diagonalQuadrado];
            }
            break;
            
        default:
            break;
    }
}

-(UIView *)areaQuadrado
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
    ladoTF.borderStyle = UITextBorderStyleRoundedRect;
    ladoTF.placeholder = @"Lado";
    ladoTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UIBarButtonItem *calcularBtn = [[UIBarButtonItem alloc]initWithTitle:@"Calcular" style:UIBarButtonItemStylePlain target:self action:@selector(calculaAreaQuadrado)];
    
    self.navigationItem.rightBarButtonItem = calcularBtn;
    
    /* UIButton programaticamente
    UIButton *calcularButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [calcularButton addTarget:self action:@selector(calculaAreaQuadrado:) forControlEvents:UIControlEventTouchUpInside];
    calcularButton.frame = CGRectMake(130, 380, 60, 30);
    [calcularButton setTitle:@"Calcular" forState:UIControlStateNormal];
    calcularButton.titleLabel.textColor = [UIColor blueColor];
    calcularButton.enabled = YES;
     */
    
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
    
    UITextField *ladoTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
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
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
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
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
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
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 160, 80, 30)];
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

-(UIView *)volumeCilindro
{
    UIView *view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    view.backgroundColor = [UIColor whiteColor];
    
    UITextField *raioTF = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 80, 30)];
    raioTF.borderStyle = UITextBorderStyleRoundedRect;
    raioTF.placeholder = @"Raio";
    raioTF.keyboardType = UIKeyboardTypeNumberPad;
    
    UITextField *alturaTF = [[UITextField alloc]initWithFrame:CGRectMake(230, 160, 80, 30)];
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

-(void)calculaVolumeCilindro
{
    self.resultado = [self.cilindro calculaVolume];
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
