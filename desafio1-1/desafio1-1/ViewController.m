//
//  ViewController.m
//  Desafio01
//
//  Created by Pedro Almeida on 05/08/21.
//

#import "ViewController.h"
#import "Desafio2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(abrirControler) ];
    [_btn1 addGestureRecognizer:tap];
    NSLog(@"CARREGUEI");
}
-(void) abrirControler{
    Desafio2ViewController *d = [[Desafio2ViewController alloc] initWithNibName:@"Desafio2ViewController" bundle:nil];

    [self.navigationController pushViewController: d animated:NO];
   
}


- (IBAction)changeView:(UIButton *)sender {
    NSLog(@"funciona");
    [self abrirControler];
}


- (IBAction)showAlert:(id)sender {
    [self ok1];
}

-(void)ok1:(NSString*)	{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Errado"
                                   message:@"Tenta mais uma vez"
                      preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"Repetir alerta" style:UIAlertActionStyleDefault
        handler:^(UIAlertAction * action) {
        NSLog(@"ok");
        [self ok1];

    }];
    UIAlertAction* cancelar = [UIAlertAction actionWithTitle:@"Sair do Alert" style:UIAlertActionStyleCancel handler:nil];

    [alert addAction:ok];
    [alert addAction:cancelar];

    [self presentViewController:alert animated:YES completion:nil];
}
@end
