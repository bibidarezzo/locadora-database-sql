-- Projeto: Sistema de Locadora
-- Desenvolvedora: Gabriela Darezzo

CREATE DATABASE db_cds;

USE db_cds;

CREATE TABLE artista (
    cd_artista INT NOT NULL PRIMARY KEY,
    nome_artista VARCHAR(100) NOT NULL
);

CREATE TABLE gravadora (
    cd_grav INT NOT NULL PRIMARY KEY,
    nome_grav VARCHAR(50) NOT NULL
);

CREATE TABLE categoria (
    cod_cat INT NOT NULL PRIMARY KEY,
    nome_cat VARCHAR(50) NOT NULL
);

CREATE TABLE estado (
    sgl_estado CHAR(2) NOT NULL PRIMARY KEY,
    nome_estado VARCHAR(20) NOT NULL
);

CREATE TABLE cidade (
    cod_cidade INT NOT NULL PRIMARY KEY,
    sgl_estado CHAR(2),
    nome_cidade VARCHAR(100) NOT NULL,
    FOREIGN KEY (sgl_estado) REFERENCES estado(sgl_estado)
);

CREATE TABLE cliente (
    cod_cliente INT NOT NULL PRIMARY KEY,
    cod_cidade INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    end_cli VARCHAR(200) NOT NULL,
    renda_cli DECIMAL(10,2) DEFAULT 0,
    sexo_cli CHAR(1) DEFAULT 'F',
    FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE conjuge (
    cod_cli INT PRIMARY KEY,
    nome_cjg VARCHAR(100) NOT NULL,
    renda_cjg DECIMAL(10,2) DEFAULT 0,
    sexo_cjg CHAR(1) DEFAULT 'M',
    FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cliente)
);

CREATE TABLE funcionario (
    cod_fun INT NOT NULL PRIMARY KEY,
    nome_fun VARCHAR(100) NOT NULL,
    end_fun VARCHAR(200) NOT NULL,
    sal_func DECIMAL(10,2) DEFAULT 0,
    sexo_fun CHAR(1) DEFAULT 'F'
);

CREATE TABLE dependente (
    cod_dp INT NOT NULL PRIMARY KEY,
    cod_fun INT NOT NULL,
    nome_dp VARCHAR(100) NOT NULL,
    sexo_dp CHAR(1) DEFAULT 'M',
    FOREIGN KEY (cod_fun) REFERENCES funcionario(cod_fun)
);

CREATE TABLE titulo (
    cd_tt INT PRIMARY KEY,
    cod_cat INT,
    cd_grav INT,
    nome_cd VARCHAR(100),
    val_cd DECIMAL(10,2),
    qtd_est INT,
    FOREIGN KEY (cod_cat) REFERENCES categoria(cod_cat),
    FOREIGN KEY (cd_grav) REFERENCES gravadora(cd_grav)
);

CREATE TABLE pedido (
    num_ped INT PRIMARY KEY,
    cod_cliente INT,
    cod_fun INT,
    dt_ped DATE,
    val_ped DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
    FOREIGN KEY (cod_fun) REFERENCES funcionario(cod_fun)
);

CREATE TABLE tt_pedido (
    num_ped INT,
    cd_tt INT,
    qtd_cd INT DEFAULT 1,
    val_cd DECIMAL(10,2),
    FOREIGN KEY (num_ped) REFERENCES pedido(num_ped),
    FOREIGN KEY (cd_tt) REFERENCES titulo(cd_tt)
);

CREATE TABLE titulo_artista (
    cd_tt INT,
    cd_art INT,
    FOREIGN KEY (cd_tt) REFERENCES titulo(cd_tt),
    FOREIGN KEY (cd_art) REFERENCES artista(cd_artista)
);
