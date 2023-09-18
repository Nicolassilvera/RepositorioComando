        // Crear una clase comprobante de factura, con id, fecha, importe, lista de items
        //(cantidad, descripcion, precio unitario) y una función para calcular el total de la
        //factura. Imprimir el resultado en la consola del navegador.
         
        // clase Item 
        class Item{
            constructor(cantidad, descripcion, precioUnitario){
                this.cantidad = cantidad;
                this.descripcion = descripcion;
                this.precioUnitario = precioUnitario;
            }

            calcularSubtotal(){
                return this.cantidad * this.precioUnitario;
            }
        }

        // Instancias de item  
        const item1 = new Item(2, "Atún", 850);
        const item2 = new Item(2, "Mermelada", 750);
        const item3= new Item(2, "Jamon", 1250);

        // clase ComprobanteFactura
        class ComprobanteFactura {
            constructor(id, fecha, importe) {
                this.id = id;
                this.fecha = fecha;
                this.importe = importe;
                this.items = [];
                this.total = 0;
            }

            verfactura = () => this.id;

            agregarItem(item){
                this.items.push(item);
            }

            calcularTotal(){
                let total = this.importe;
                for(const item of this.items){
                    total += item.calcularSubtotal();
                }
                this.total = total;
            }

        }

        // creo la el comprobante
        const ticket = new ComprobanteFactura(23423, "17-08-2023", 0);
        // agrego los items
        ticket.agregarItem(item1);
        ticket.agregarItem(item2);
        ticket.agregarItem(item3);
        
        ticket.calcularTotal();

        console.log(" total " + ticket.total );