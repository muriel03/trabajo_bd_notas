create database notas;
create table usuario (idUsuario int not null primary key AUTO_INCREMENT, firsName varchar(15), lastName varchar(15),
 email varchar(50) not null unique);
 
 create table acciones(idAcciones int not null primary key AUTO_INCREMENT, tipoAcion varchar(10));
 
 create table categoria(idCategoria int not null primary key AUTO_INCREMENT, descripcion varchar(45));
 
 
 create table notas(idNotas int not null primary key AUTO_INCREMENT, 
 titulo varchar(100) NOT NULL, 
 fechaCreacion DATE NOT NULL,
 fechaActuliazacion DATE NOT NULL,
 fechaELiminacion TINYINT NOT NULL, 
 descripcion varchar(100) NOT NULL,
 idUsuario INT NOT NULL,
 idAcciones INT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idAcciones) REFERENCES acciones(idAcciones));
    
create table tipoCategoria(idTipoCategoria int not null primary key AUTO_INCREMENT, 
idNotas INT NOT NULL,
idCategoria INT NOT NULL,
    FOREIGN KEY (idNotas) REFERENCES notas(idNotas),
    FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria) ON UPDATE CASCADE);
    
    
    insert into categoria (descripcion) values(
     "noticias"),
     ("deportes"),
     ("anime"),
     ("religion"),
     ("libros"),
     ("música"),
     ("cultura"),
     ("ventas"),
     ("comida"),
     ("animales");
     
     select * from categoria;
     
     insert into acciones values(
     null, "Crear"),
     (null, "Modificar"),
     (null, "Eliminar");
     
     select * from acciones;
     
     insert into usuario values(
     null, "Juan", "Gutierrez", "juan@email.com"),
     (null, "Sebastian", "Tangarife", "sebastian@email.com"),
     (null, "Marypaz", "Cardona", "marypaz@email.com"),
     (null, "Estefany", "Cardona", "estefany@email.com"),
     (null, "Jose", "Muriel", "jose@email.com"),
     (null, "Oscar", "Mesa", "oscar@email.com"),
     (null, "Wilder", "Usma", "wilder@email.com"),
     (null, "Maria", "Fernandez", "maria@email.com"),
     (null, "Carlos", "Marin", "carlos@email.com"),
     (null, "Camilo", "Majin", "camilo@email.com");
     
     describe usuario;
     select * from usuario;
     
     describe notas;
	 select * from notas;
     truncate notas;
     INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('5', 'salida', '2022-04-11', '0000-00-00', '1', 'prueba 5', '6', '1');
UPDATE `notas`.`notas` SET `fechaCreacion` = '2022-04-11' WHERE (`idNotas` = '1');
UPDATE `notas`.`notas` SET `fechaCreacion` = '2022-04-11' WHERE (`idNotas` = '2');
UPDATE `notas`.`notas` SET `fechaCreacion` = '2022-04-11' WHERE (`idNotas` = '3');
UPDATE `notas`.`notas` SET `fechaCreacion` = '2022-04-11' WHERE (`idNotas` = '4');
INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('6', 'danza', '2022-04-11', '0000-00-00', '1', 'prueba 6', '7', '1');
INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('7', 'rumba', '2022-04-11', '0000-00-00', '1', 'prueba 7', '1', '1');
INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('8', 'lecturas', '2022-04-11', '0000-00-00', '1', 'prueba 8', '2', '1');
INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('9', 'salidas', '2022-04-11', '0000-00-00', '1', 'prueba 9', '4', '1');
INSERT INTO `notas`.`notas` (`idNotas`, `titulo`, `fechaCreacion`, `fechaActuliazacion`, `fechaELiminacion`, `descripcion`, `idUsuario`, `idAcciones`) VALUES ('10', 'parche', '2022-04-11', '0000-00-00', '1', 'prueba 10', '5', '1');

select * from notas;

INSERT INTO tipocategoria VALUES (
	NULL, 1, 1),
    (NULL, 1, 3),
    (NULL, 2, 2),
    (NULL, 4, 4),
    (NULL, 4, 7),
    (NULL, 4, 8),
    (NULL, 5, 10),
    (NULL, 6, 5),
    (NULL, 7, 1),
    (NULL, 8, 2);
     
     select * from tipocategoria;