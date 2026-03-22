# Agencia de Viajes - Base de Datos

Modelo relacional en SQL Server para gestión de agencia de viajes.

## 📦 Estructura

- core: entidades principales (Persona, Cliente, Vendedor)
- catalogo: tablas de referencia
- producto: servicios y paquetes turísticos
- operacion: ventas, pagos, gastos

## ⚙️ Ejecución

1. Ejecutar `00_reset.sql`
2. Ejecutar scripts de creación (schemas + tablas)
3. Ejecutar `02_seed.sql`

## 🧪 Flujo soportado

- Registro de clientes
- Creación de paquetes turísticos
- Registro de ventas
- Pagos y gastos asociados

## 🛠️ Tecnologías

- SQL Server
