using DesafioPOO.Models;

// TODO: Realizar os testes com as classes Nokia e Iphone
Console.WriteLine("Smartphone Nokia:");
Smartphone nokia = new Nokia (numero: "43543445234", modelo: "Nokia 20 Pro", imei: "12334342355431", memoria: "256");
nokia.Ligar();
nokia.InstalarAplicativo("WhatsApp");

Console.WriteLine("Smartphone Iphone:");
Smartphone iphone = new Iphone (numero: "987654321", modelo: "Iphone 20 Pro", imei: "98765432112345", memoria: "512");
iphone.Ligar();
iphone.InstalarAplicativo("Facebook");