CREATE DATABASE DBCONTACTO
 USE DBCONTACTO

CREATE TABLE CONTACTO(
IdContacto int identity,
Nombres varchar(100),
Apellidos varchar(100),
Telefono varchar(100),
Correo varchar(100)
)

insert into CONTACTO(Nombres,Apellidos,Telefono,Correo) values
('Jose','Perez','3454354','jose@gmail.com'),
('Maria','Paz','3454363','maria@gmail.com'),
('Thalia','Quinon','978643','thalia@gmail.com'),
('Belem','Madara','430985','belen@gmail.com'),
('Alex','Espinoza','8439348','alex@gmail.com')

SELECT * FROM CONTACTO

create procedure sp_RegistraR(
@Nombres varchar(100),
@Apellidos varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
as
begin
	insert into CONTACTO(Nombres,Apellidos,Telefono,Correo) values (@Nombres,@Apellidos,@Telefono,@Correo)
end


create procedure sp_Editar(
@IdContacto int,
@Nombres varchar(100),
@Apellidos varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
as
begin
	update CONTACTO set Nombres=@Nombres, Apellidos=@Apellidos, Telefono=@Telefono, Correo=@Correo where IdContacto=@IdContacto
end


create procedure sp_Eliminar(
@IdContacto int
)
as
begin
	delete from CONTACTO where IdContacto=@IdContacto
end
