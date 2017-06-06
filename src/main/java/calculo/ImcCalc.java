package calculo;

import java.text.DecimalFormat;
import java.util.Locale;

public class ImcCalc {
	
	private String sexo;
    private String message;
	private Double peso;
	private Double altura;
	private Double imc;

	public void calcular() {
		imc = 0.0;		
		imc = (peso / (altura / 100 * altura / 100));

        if (sexo == "mas") {
            if (imc < 19.1) {
                message = "Você está abaixo do peso";
            } else if (imc >= 19.1 && imc < 25.8){
                message = "Seu peso está normal";
            } else if (imc >= 25.8 && imc < 27.3) {
                message = "Você está marginalmente acima do peso";
            } else if (imc >= 27.3 && imc < 32.3){
                message = "Você está acima do peso";
            } else {
                message = "Você está obeso";
            }
        } else {
            if (imc < 20.7) {
                message = "Você está abaixo do peso";
            } else if (imc >= 20.7 && imc < 26.4){
                message = "Seu peso está normal";
            } else if (imc >= 26.4 && imc < 27.8) {
                message = "Você está marginalmente acima do peso";
            } else if (imc >= 27.8 && imc < 31.1){
                message = "Você está acima do peso";
            } else {
                message = "Você está obeso";
            }
        }
    }
	public String getSexo() {return sexo;}

	public void setSexo(String sexo) {this.sexo = sexo;}

	public Double getPeso() {return peso;}

	public void setPeso(Double peso) {this.peso = peso;}

	public Double getAltura() {return altura;}

	public void setAltura(Double altura) {this.altura = altura;}
    
	public String getResultadoFormatado() {
		Locale.setDefault(Locale.US); 
		DecimalFormat df = new DecimalFormat("0.00");
		return df.format(imc);
	}
    public String getMessage(){
        return message;
    }
}