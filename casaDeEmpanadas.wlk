object galvan {
	var sueldo = 15000
	var saldo = 0
	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
	method sueldo() {
		return sueldo
	}
	method cobrarSueldo() {
		saldo += sueldo
		
	}
	method gastar(cuanto) {
		saldo -= cuanto
	}
	method totalDinero() {
		 
		 return if (saldo > 0) saldo else 0
	}
	method totalDeuda() {
		return if (saldo < 0) saldo.abs() else 0
	}
	
}


object baigorria {
	var precioPorEmpanada = 15
	var empanadasVendidas = 0 
	var totalCobrado = 0
	method precioPorEmpanada (_precioPorEmpanada) {
		precioPorEmpanada = _precioPorEmpanada
	}
	method empanadasVendidas(_empanadasVendidas) {
		empanadasVendidas = empanadasVendidas + _empanadasVendidas
	}
	method sueldo() {
		return empanadasVendidas*precioPorEmpanada
	}
	method cobrarSueldo() {
		totalCobrado += self.sueldo() 
		empanadasVendidas = 0 
	}
	method totalCobrado() {
		return totalCobrado
	}
}

object gimenez {
	var fondos = 300000
	method pagarSueldo(empleado) {
		fondos -= empleado.sueldo()
		empleado.cobrarSueldo()	
	}  
	method fondos() {
		return fondos 
	}
	
}