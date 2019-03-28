function calcular() {
	var bruto = $("#Bruto").val();
	var desconto = $("#Desconto").val();
	$("#pagar").val(bruto - desconto);
	$("#pagarCopy").val(bruto - desconto);
}

