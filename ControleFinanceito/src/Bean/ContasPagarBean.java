package Bean;

public class ContasPagarBean {
	private int codigo;
	private String nomeCredor;
	private double valorBruto;
	private double valorDesconto;
	private double limiteCredito;
	private double juros;
	private String endereco;
	private double valorPago;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNomeCredor() {
		return nomeCredor;
	}
	public void setNomeCredor(String nomeCredor) {
		this.nomeCredor = nomeCredor;
	}
	public double getValorBruto() {
		return valorBruto;
	}
	public void setValorBruto(double valorBruto) {
		this.valorBruto = valorBruto;
	}
	public double getValorDesconto() {
		return valorDesconto;
	}
	public void setValorDesconto(double valorDesconto) {
		this.valorDesconto = valorDesconto;
	}
	public double getLimiteCredito() {
		return limiteCredito;
	}
	public void setLimiteCredito(double limiteCredito) {
		this.limiteCredito = limiteCredito;
	}
	public double getJuros() {
		return juros;
	}
	public void setJuros(double juros) {
		this.juros = juros;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public double getValorPago() {
		return valorPago;
	}
	private void setValorPago(double valorPago) {
		this.valorPago = valorPago;
	}
	public void calculaValorPago(double vd,double vb) {
		setValorPago(vb-vd);
	}
	
	public ContasPagarBean( int codigo,String nomeCredor,double valorBruto,
							double valorDesconto,double limiteCredito,
							double juros,String endereco,double valorPago) 
	{
		
		setCodigo(codigo);
		setEndereco(endereco);
		setJuros(juros);
		setLimiteCredito(limiteCredito);
		setNomeCredor(nomeCredor);
		setValorBruto(valorBruto);
		setValorDesconto(valorDesconto);
		calculaValorPago(valorDesconto, valorBruto);
	}
	
	public ContasPagarBean( String nomeCredor,double valorBruto,
			double valorDesconto,double limiteCredito,
			double juros,String endereco,double valorPago) 
{

			setEndereco(endereco);
			setJuros(juros);
			setLimiteCredito(limiteCredito);
			setNomeCredor(nomeCredor);
			setValorBruto(valorBruto);
			setValorDesconto(valorDesconto);
			calculaValorPago(valorDesconto, valorBruto);
}
	
}
