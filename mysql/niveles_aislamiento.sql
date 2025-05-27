use 01_negocio;
select @@session.transaction_isolation; -- por defecto esta como REPEATABLE-READ en mi sesion.

-- cambiamos el primer nivel

set session transaction isolation level read uncommitted; -- ahora esta en modo: READ-UNCOMMITTED / dirty read

set autocommit = 0;
select @@autocommit;

SELECT * from productos;

update productos set prod_precio = 100 where idproducto = 1;

rollback;

-- -------------------------- segundo nivel ------------------

set session transaction isolation level read committed; -- lo ponemos tambien en terminal

-- probamos dirty read:
update productos set prod_precio = 155.80 where idproducto = 1;
commit;
rollback;

-- -------------------------- segundo nivel ------------------

-- probamos el NON REPEATABLE READ

start transaction;
select * from productos where idproducto = 1;

-- actualizar en otra transaccion
select * from productos where idproducto = 1;
commit;

-- ------------------------------------------------------------

set session transaction isolation level repeatable read;

-- probamos NON REPEATABLE READ

start transaction;
select * from productos where idproducto = 1;

select * from productos where idproducto = 1;
commit;

