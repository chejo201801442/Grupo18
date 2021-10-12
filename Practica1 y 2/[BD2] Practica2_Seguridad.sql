
-- Crear Tablespace
CREATE TABLESPACE TSZAPATERIA 
   DATAFILE 'ZAPATERIADF.tbs' 
   SIZE 250m AUTOEXTEND ON NEXT 1M MAXSIZE 500M	;

ALTER SYSTEM SET SGA_TARGET=2000M scope=SPFILE;
alter system set sessions=500 scope=spfile;
alter system set processes=1500 scope=spfile;
ALTER SYSTEM SET pga_aggregate_target=150M SCOPE=spfile;

--Crear Schema
create user zapateria identified by 1234  default tablespace TSZAPATERIA ;

--Crear usuarios
create user Contabilidad1 identified by bd2Conta1;
create user Contabilidad2 identified by bd2Conta2;
create user Ventas1 identified by bd2Ventas1 ;
create user Ventas2 identified by bd2Ventas2 ;
create user IT1 identified by bd2IT1;
create user IT2 identified by bd2IT2;
create user Gerencia1 identified by bd2Gerencia1;
create user Gerencia2 identified by bd2Gerencia2;

GRANT CREATE SESSION TO Contabilidad1;
GRANT CREATE SESSION TO Contabilidad2 ;
GRANT CREATE SESSION TO Ventas1 ;
GRANT CREATE SESSION TO Ventas2 ;
GRANT CREATE SESSION TO IT1 ;
GRANT CREATE SESSION TO IT2 ;
GRANT CREATE SESSION TO Gerencia1 ;
GRANT CREATE SESSION TO Gerencia2 ;

--Crear Roles
create roles contabilidad;
grant insert, select on sho.Cliente to contabilidad;
grant insert, select on sho.Detalle to contabilidad;
grant insert, select on sho.Factura to contabilidad;
grant insert, select on sho.Producto to contabilidad;
grant insert, select on sho.Vendedor to contabilidad;

GRANT contabilidad TO  Contabilidad1;
GRANT contabilidad TO  Contabilidad2;

--==============================================

create roles ventas;
grant insert, select on sho.Cliente to ventas;
grant insert, select on sho.Detalle to ventas;
grant insert, select on sho.Factura to ventas;
grant insert, select on sho.Producto to ventas;
grant insert, select on sho.Vendedor to ventas;

GRANT ventas TO  Ventas1;
GRANT ventas TO  Ventas2;

--==============================================
create roles it;
grant select, delete on sho.Cliente to it;
grant select, delete on sho.Detalle to it;
grant select, delete on sho.Factura to it;
grant select, delete on sho.Producto to it;
grant select, delete on sho.Vendedor to it;
grant create user, create table to it;

GRANT it TO  IT2;
GRANT it TO  IT2;
	
--==============================================
create roles gerencia;
grant update, insert, select, delete on sho.Cliente to gerencia;
grant update, insert, select, delete on sho.Detalle to gerencia;
grant update, insert, select, delete on sho.Factura to gerencia;
grant update, insert, select, delete on sho.Producto to gerencia;
grant update, insert, select, delete on sho.Vendedor to gerencia;
grant create user to gerencia;
grant CREATE MATERIALIZED VIEW to gerencia;


GRANT gerencia TO  Gerencia1;
GRANT gerencia TO  Gerencia2;
	
--==============================================
