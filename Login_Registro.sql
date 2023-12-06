CREATE DATABASE DB_ACCESO

USE DB_ACCESO

CREATE TABLE USUARIO(
	IdUsuario int primary key identity(1,1),
	Correo varchar(100),
	Clave varchar(MAX)
)

CREATE PROC sp_RegistrarUsuario(
@Correo varchar(100),
@Clave varchar(500),
@Registrado bit output,
@Mensaje varchar(100) output
)
as
begin

	if(not exists(select * from USUARIO where Correo = @Correo))
	begin
		insert into USUARIO(Correo,Clave) values(@Correo,@Clave)
		set @Registrado = 1
		set @Mensaje = 'usuario registrado'
	end
	else
	begin
		set @Registrado = 0
		set @Mensaje = 'correo ya existe'
	end

end



CREATE PROC	sp_ValidarUsuario(
@Correo varchar(100),
@Clave varchar(500)
)
as
begin
	if(exists(select * from USUARIO where Correo = @Correo and Clave = @Clave))
		select IdUsuario from USUARIO where Correo = @Correo and Clave = @Clave
	else
		select '0'

end


ALTER TABLE DB_ACCESO.dbo.USUARIO
ALTER COLUMN Clave VARCHAR(MAX);