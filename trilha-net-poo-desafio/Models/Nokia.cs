namespace DesafioPOO.Models
{
    // TODO: Herdar da classe "Smartphone"
    public class Nokia : Smartphone
    {
        public Nokia (string numero, string modelo, string imei, int memoria) : base (numero, modelo, imei, memoria)
        {
            
        }
        public override void InstalarAplicativo(string whatsapp)
        {
            Console.WriteLine($"Instalar aplicativo {whatsapp} no Nokia");
        }
        // TODO: Sobrescrever o método "InstalarAplicativo"
    }
}