-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2025 at 03:06 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u740525722_modeloSiadam`
--

-- --------------------------------------------------------

--
-- Table structure for table `AEROLINEA`
--

CREATE TABLE `AEROLINEA` (
  `AL_ID` varchar(3) NOT NULL,
  `AL_NONBRE` varchar(100) NOT NULL,
  `RUTAS` varchar(8) NOT NULL,
  `CODE_ICAO` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AEROLINEA`
--

INSERT INTO `AEROLINEA` (`AL_ID`, `AL_NONBRE`, `RUTAS`, `CODE_ICAO`) VALUES
('AAL', 'American Airlines', 'AAL001', 'AAL'),
('AMX', 'Aeroméxico', 'AMX001', 'AMX'),
('ARG', 'Aerolíneas Argentinas', 'ARG001', 'ARG'),
('AVA', 'Avianca', 'AVA001', 'AVA'),
('AZU', 'Azul Brazilian Airlines', 'AZU001', 'AZU'),
('BAW', 'British Airways', 'BAW001', 'BAW'),
('DLH', 'Lufthansa', 'DLH001', 'DLH'),
('IBE', 'Iberia', 'IBE001', 'IBE'),
('LAN', 'LATAM Airlines', 'LAN001', 'LAN'),
('VIV', 'Viva Air Colombia', 'VIV001', 'VIV');

-- --------------------------------------------------------

--
-- Table structure for table `AERONAVE`
--

CREATE TABLE `AERONAVE` (
  `AN_ID` varchar(4) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `MATRICULA` varchar(9) NOT NULL,
  `IATA_COD` varchar(3) NOT NULL,
  `ID_MODELO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AERONAVE`
--

INSERT INTO `AERONAVE` (`AN_ID`, `AL_ID`, `MATRICULA`, `IATA_COD`, `ID_MODELO`) VALUES
('N001', 'AVA', 'HK-1234', '320', 1),
('N002', 'AAL', 'N5678AA', '738', 5),
('N003', 'IBE', 'EC-MNO', '330', 3),
('N004', 'AMX', 'XA-ABC', '321', 2),
('N005', 'LAN', 'CC-AAA', '789', 8),
('N006', 'ARG', 'LV-ABC', '332', 3),
('N007', 'AZU', 'PR-AZB', '350', 4),
('N008', 'VIV', 'HK-5678', '320', 1),
('N009', 'AVA', 'HK-9012', '320', 1),
('N010', 'AAL', 'N9012AA', '7M8', 6),
('N011', 'IBE', 'EC-PQR', '330', 3),
('N012', 'AMX', 'XA-DEF', '321', 2),
('N013', 'DLH', 'D-ABYA', '320', 1),
('N014', 'BAW', 'G-YMMM', '388', 4),
('N015', 'LAN', 'CC-BGG', '7M8', 6);

-- --------------------------------------------------------

--
-- Table structure for table `AEROPUERTO`
--

CREATE TABLE `AEROPUERTO` (
  `AP_ICAO` varchar(4) NOT NULL,
  `AP_NOM` varchar(255) NOT NULL,
  `AP_LATITUD` decimal(10,8) NOT NULL,
  `AP_LONGITUD` decimal(11,8) NOT NULL,
  `AP_IATA` varchar(3) NOT NULL,
  `C_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AEROPUERTO`
--

INSERT INTO `AEROPUERTO` (`AP_ICAO`, `AP_NOM`, `AP_LATITUD`, `AP_LONGITUD`, `AP_IATA`, `C_ID`) VALUES
('KJFK', 'Aeropuerto Internacional John F. Kennedy', 40.63972200, -73.77888900, 'JFK', 5),
('KLAX', 'Aeropuerto Internacional de Los Ángeles', 33.94250000, -118.40797200, 'LAX', 6),
('KMIA', 'Aeropuerto Internacional de Miami', 25.79536100, -80.29000000, 'MIA', 4),
('LEBL', 'Aeropuerto de Barcelona-El Prat', 41.29694400, 2.07833300, 'BCN', 8),
('LEMD', 'Aeropuerto Adolfo Suárez Madrid-Barajas', 40.47222200, -3.56083300, 'MAD', 7),
('MMMX', 'Aeropuerto Internacional Benito Juárez', 19.43611100, -99.07194400, 'MEX', 9),
('MMUN', 'Aeropuerto Internacional de Cancún', 21.03666700, -86.87722200, 'CUN', 10),
('SAEZ', 'Aeropuerto Internacional Ministro Pistarini', -34.82222200, -58.53583300, 'EZE', 11),
('SBGR', 'Aeropuerto Internacional de São Paulo-Guarulhos', -23.43222200, -46.46916700, 'GRU', 14),
('SBRJ', 'Aeropuerto Internacional de Galeão', -22.80888900, -43.24361100, 'GIG', 15),
('SCEL', 'Aeropuerto Internacional Arturo Merino Benítez', -33.39277800, -70.78527800, 'SCL', 12),
('SKBO', 'Aeropuerto Internacional El Dorado', 4.70138900, -74.14694400, 'BOG', 1),
('SKCL', 'Aeropuerto Internacional Alfonso Bonilla Aragón', 3.54305600, -76.38166700, 'CLO', 3),
('SKRG', 'Aeropuerto Internacional José María Córdova', 6.16444400, -75.42305600, 'MDE', 2),
('SPIM', 'Aeropuerto Internacional Jorge Chávez', -12.02194400, -77.11416700, 'LIM', 13),
('SVMI', 'Aeropuerto Internacional Simón Bolívar', 10.60361100, -66.99055600, 'CCS', 20);

-- --------------------------------------------------------

--
-- Table structure for table `CAPITAN`
--

CREATE TABLE `CAPITAN` (
  `E_ID` int(11) NOT NULL,
  `ID_MODELO` int(11) NOT NULL,
  `ID_LICENCIA` int(11) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `E_DOC` varchar(15) NOT NULL,
  `E_PASAPORTE` varchar(15) NOT NULL,
  `E_NOMBRE` varchar(255) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `E_TELEFONO` bigint(20) NOT NULL,
  `E_EMAIL` varchar(127) NOT NULL,
  `NACIONALIDAD` varchar(255) NOT NULL,
  `ACTIVO` tinyint(1) NOT NULL,
  `HORAS_VUELO` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CAPITAN`
--

INSERT INTO `CAPITAN` (`E_ID`, `ID_MODELO`, `ID_LICENCIA`, `AL_ID`, `E_DOC`, `E_PASAPORTE`, `E_NOMBRE`, `FECHA_NACIMIENTO`, `E_TELEFONO`, `E_EMAIL`, `NACIONALIDAD`, `ACTIVO`, `HORAS_VUELO`) VALUES
(1, 1, 1, 'AVA', '123456789', 'AB123456', 'Juan Pérez', '1974-03-15', 573001234567, 'juan.perez@avianca.com', 'Colombiana', 1, 8500),
(2, 2, 4, 'AAL', '987654321', 'CD789012', 'Robert Johnson', '1975-07-22', 13055501234, 'r.johnson@aa.com', 'Estadounidense', 1, 12000),
(3, 3, 6, 'IBE', '456789123', 'EF345678', 'Carlos Gutiérrez', '1978-11-30', 34910000000, 'c.gutierrez@iberia.com', 'Española', 1, 9500),
(4, 4, 8, 'AMX', '789123456', 'GH901234', 'Miguel Ángel Torres', '1982-05-18', 525512345678, 'm.torres@aeromexico.com', 'Mexicana', 1, 7800),
(5, 5, 10, 'LAN', '321654987', 'IJ567890', 'Fernando Silva', '1979-09-25', 562299999999, 'f.silva@latam.com', 'Chilena', 1, 11000),
(6, 6, 12, 'ARG', '654987321', 'KL123456', 'Diego Maradona', '1985-12-22', 541123456789, 'd.maradona@aerolineas.com', 'Argentina', 1, 6500),
(7, 7, 14, 'AZU', '147258369', 'MN789012', 'Pedro Santos', '1983-04-10', 5511987654321, 'p.santos@azul.com', 'Brasileña', 1, 7200),
(8, 8, 1, 'VIV', '258369147', 'OP901234', 'Luis Martínez', '1988-08-05', 573002345678, 'l.martinez@viva.com', 'Colombiana', 1, 4500),
(9, 1, 2, 'AVA', '369147258', 'QR567890', 'Ana Rodríguez', '1986-02-14', 573003456789, 'ana.rodriguez@avianca.com', 'Colombiana', 1, 5200),
(10, 5, 11, 'AAL', '741852963', 'ST123456', 'John Smith', '1972-06-30', 13055567890, 'j.smith@aa.com', 'Estadounidense', 1, 15000),
(11, 9, 3, 'DLH', '852963741', 'BC234567', 'Hans Müller', '1981-09-12', 491571234567, 'h.muller@lufthansa.com', 'Alemana', 1, 8800),
(12, 10, 5, 'BAW', '963741852', 'DE890123', 'Thomas Brown', '1977-04-03', 441238765432, 't.brown@ba.com', 'Británica', 1, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `CIUDAD`
--

CREATE TABLE `CIUDAD` (
  `C_ID` int(11) NOT NULL,
  `C_NOMBRE` varchar(100) NOT NULL,
  `REGION` varchar(100) NOT NULL,
  `PAIS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CIUDAD`
--

INSERT INTO `CIUDAD` (`C_ID`, `C_NOMBRE`, `REGION`, `PAIS`) VALUES
(1, 'Bogotá', 'Cundinamarca', 'Colombia'),
(2, 'Medellín', 'Antioquia', 'Colombia'),
(3, 'Cali', 'Valle del Cauca', 'Colombia'),
(4, 'Miami', 'Florida', 'Estados Unidos'),
(5, 'Nueva York', 'Nueva York', 'Estados Unidos'),
(6, 'Los Ángeles', 'California', 'Estados Unidos'),
(7, 'Madrid', 'Comunidad de Madrid', 'España'),
(8, 'Barcelona', 'Cataluña', 'España'),
(9, 'Ciudad de México', 'CDMX', 'México'),
(10, 'Cancún', 'Quintana Roo', 'México'),
(11, 'Buenos Aires', 'Buenos Aires', 'Argentina'),
(12, 'Santiago', 'Región Metropolitana', 'Chile'),
(13, 'Lima', 'Lima', 'Perú'),
(14, 'São Paulo', 'São Paulo', 'Brasil'),
(15, 'Río de Janeiro', 'Río de Janeiro', 'Brasil'),
(16, 'Bogotá', 'Cundinamarca', 'Colombia'),
(20, 'Caracas', 'Distrito Capital', 'Venezuela');

-- --------------------------------------------------------

--
-- Table structure for table `DESPACH`
--

CREATE TABLE `DESPACH` (
  `E_ID` int(11) NOT NULL,
  `ID_MODELO` int(11) NOT NULL,
  `ID_LICENCIA` int(11) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `E_DOC` varchar(15) NOT NULL,
  `E_PASAPORTE` varchar(15) NOT NULL,
  `E_NOMBRE` varchar(255) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `E_TELEFONO` bigint(20) NOT NULL,
  `E_EMAIL` varchar(127) NOT NULL,
  `NACIONALIDAD` varchar(255) NOT NULL,
  `ACTIVO` tinyint(1) NOT NULL,
  `CERT_METEOROLOGICO` tinyint(1) NOT NULL,
  `CERT_PLAN` tinyint(1) NOT NULL,
  `CERT_CARGA` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DESPACH`
--

INSERT INTO `DESPACH` (`E_ID`, `ID_MODELO`, `ID_LICENCIA`, `AL_ID`, `E_DOC`, `E_PASAPORTE`, `E_NOMBRE`, `FECHA_NACIMIENTO`, `E_TELEFONO`, `E_EMAIL`, `NACIONALIDAD`, `ACTIVO`, `CERT_METEOROLOGICO`, `CERT_PLAN`, `CERT_CARGA`) VALUES
(1, 1, 1, 'AVA', '111222333', 'GH901234', 'Ana López', '1985-04-12', 573009876543, 'ana.lopez@avianca.com', 'Colombiana', 1, 1, 1, 1),
(2, 2, 4, 'AAL', '444555666', 'IJ567890', 'Michael Brown', '1990-09-18', 13055598765, 'm.brown@aa.com', 'Estadounidense', 1, 1, 1, 1),
(3, 3, 6, 'IBE', '777888999', 'KL123456', 'Carmen Ruiz', '1987-07-03', 349102222222, 'c.ruiz@iberia.com', 'Española', 1, 1, 1, 1),
(4, 4, 8, 'AMX', '222333444', 'MN789012', 'Patricia Herrera', '1992-11-20', 525511111111, 'p.herrera@aeromexico.com', 'Mexicana', 1, 1, 1, 1),
(5, 5, 10, 'LAN', '555666777', 'OP901234', 'Claudio Neira', '1989-01-15', 562233333333, 'c.neira@latam.com', 'Chilena', 1, 1, 1, 1),
(6, 6, 12, 'ARG', '888999000', 'QR567890', 'Jorge Sosa', '1991-03-28', 541199999999, 'j.sosa@aerolineas.com', 'Argentina', 1, 1, 1, 1),
(7, 7, 14, 'AZU', '333444555', 'ST123456', 'Ricardo Alves', '1993-06-08', 5511888888888, 'r.alves@azul.com', 'Brasileña', 1, 1, 1, 1),
(8, 8, 1, 'VIV', '666777888', 'UV901234', 'Sofía Vargas', '1994-10-17', 573004444444, 's.vargas@viva.com', 'Colombiana', 1, 1, 1, 1),
(9, 9, 3, 'DLH', '999000111', 'WX123457', 'Klaus Schmidt', '1990-03-25', 491511234567, 'k.schmidt@lufthansa.com', 'Alemana', 1, 1, 1, 1),
(10, 10, 5, 'BAW', '000111222', 'YZ567890', 'Emma Wilson', '1992-11-08', 441234567890, 'e.wilson@ba.com', 'Británica', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ESTACION_CLIMA`
--

CREATE TABLE `ESTACION_CLIMA` (
  `EST_ID` int(7) NOT NULL,
  `E_LATITUD` decimal(10,8) NOT NULL,
  `E_LONGITUD` decimal(10,8) NOT NULL,
  `E_PLUVIOSIDAD` int(11) NOT NULL,
  `E_TEMPERATURA` int(11) NOT NULL,
  `E_PRESION_ATM` float NOT NULL,
  `C_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ESTACION_CLIMA`
--

INSERT INTO `ESTACION_CLIMA` (`EST_ID`, `E_LATITUD`, `E_LONGITUD`, `E_PLUVIOSIDAD`, `E_TEMPERATURA`, `E_PRESION_ATM`, `C_ID`) VALUES
(1, 4.70138900, -74.14694400, 15, 22, 1013.2, 1),
(2, 6.16444400, -75.42305600, 20, 24, 1012.8, 2),
(3, 3.54305600, -76.38166700, 25, 28, 1012.5, 3),
(4, 25.79536100, -80.29000000, 5, 28, 1014.5, 4),
(5, 40.63972200, -73.77888900, 10, 18, 1015, 5),
(6, 33.94250000, -99.99999999, 2, 25, 1014, 6),
(7, 40.47222200, -3.56083300, 8, 15, 1020.5, 7),
(8, 41.29694400, 2.07833300, 12, 18, 1018.7, 8),
(9, 19.43611100, -99.07194400, 18, 20, 1013.9, 9),
(10, -34.82222200, -58.53583300, 22, 25, 1012, 11),
(11, 40.47222200, -3.56083300, 6, 14, 1021, 7),
(12, 41.29694400, 2.07833300, 10, 16, 1019.5, 8),
(13, -33.39277800, -70.78527800, 15, 20, 1010.8, 12),
(14, -12.02194400, -77.11416700, 8, 22, 1013.2, 13),
(15, 21.03666700, -86.87722200, 3, 30, 1014.8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `LICENCIA`
--

CREATE TABLE `LICENCIA` (
  `ID_LICENCIA` int(11) NOT NULL,
  `L_FECHA_EMISION` date NOT NULL,
  `L_FECHA_VENCIMIENTO` date NOT NULL,
  `ENTIDAD_EMISORA` varchar(255) NOT NULL,
  `L_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `LICENCIA`
--

INSERT INTO `LICENCIA` (`ID_LICENCIA`, `L_FECHA_EMISION`, `L_FECHA_VENCIMIENTO`, `ENTIDAD_EMISORA`, `L_ESTADO`) VALUES
(1, '2020-05-15', '2025-12-15', 'Aerocivil Colombia', 1),
(2, '2019-11-20', '2024-11-20', 'FAA', 1),
(3, '2021-03-10', '2026-03-10', 'EASA', 1),
(4, '2018-08-25', '2023-08-25', 'DGAC México', 1),
(5, '2022-01-30', '2027-01-30', 'Aerocivil Colombia', 1),
(6, '2020-07-12', '2025-07-12', 'ANAC Argentina', 1),
(7, '2019-09-05', '2024-09-05', 'DGAC Chile', 1),
(8, '2021-12-15', '2026-12-15', 'FAA', 1),
(9, '2020-02-28', '2025-02-28', 'EASA', 1),
(10, '2022-06-10', '2027-06-10', 'ANAC Brasil', 1),
(11, '2021-04-18', '2026-04-18', 'Aerocivil Colombia', 1),
(12, '2020-10-30', '2025-10-30', 'DGAC México', 1),
(13, '2021-08-22', '2026-08-22', 'ANAC Argentina', 1),
(14, '2022-03-14', '2027-03-14', 'FAA', 1),
(15, '2021-11-05', '2026-11-05', 'EASA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `METAR`
--

CREATE TABLE `METAR` (
  `M_ID` int(11) NOT NULL,
  `AP_ICAO` varchar(4) NOT NULL,
  `M_TIME_REG` timestamp NOT NULL,
  `REPORT_MOD` decimal(4,2) NOT NULL,
  `WINDS` decimal(6,2) NOT NULL,
  `WIND_GUST` decimal(5,2) NOT NULL,
  `WIND_DIR` decimal(5,2) NOT NULL,
  `VISIBILITY` varchar(100) NOT NULL,
  `SKY_COND` varchar(9) NOT NULL,
  `TEMP` decimal(3,0) NOT NULL,
  `DEWPOINT` varchar(3) NOT NULL,
  `ALTIMETER` varchar(4) NOT NULL,
  `REMARKS` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `METAR`
--

INSERT INTO `METAR` (`M_ID`, `AP_ICAO`, `M_TIME_REG`, `REPORT_MOD`, `WINDS`, `WIND_GUST`, `WIND_DIR`, `VISIBILITY`, `SKY_COND`, `TEMP`, `DEWPOINT`, `ALTIMETER`, `REMARKS`) VALUES
(1, 'SKBO', '2025-12-10 10:00:00', 1.00, 12.50, 20.00, 120.00, '10SM', 'SCT030', 22, '18', '1013', 'Sin observaciones'),
(2, 'KMIA', '2025-12-10 11:00:00', 0.50, 8.30, 15.00, 80.00, '8SM', 'FEW020', 28, '24', '1014', 'Viento variable'),
(3, 'KJFK', '2025-12-10 12:00:00', 0.75, 15.20, 25.00, 100.00, '6SM', 'BKN015', 18, '15', '1015', 'Lluvia ligera'),
(4, 'LEMD', '2025-12-10 13:00:00', 1.00, 10.50, 18.00, 90.00, '10SM', 'SCT025', 15, '12', '1020', 'Despejado'),
(5, 'MMMX', '2025-12-10 14:00:00', 0.80, 5.80, 12.00, 110.00, '8SM', 'FEW030', 20, '16', '1013', 'Neblina matutina'),
(6, 'SAEZ', '2025-12-10 15:00:00', 0.90, 18.30, 30.00, 130.00, '4SM', 'OVC010', 25, '22', '1012', 'Tormenta eléctrica'),
(7, 'SCEL', '2025-12-10 16:00:00', 1.00, 22.10, 35.00, 150.00, '5SM', 'BKN020', 22, '18', '1011', 'Vientos fuertes'),
(8, 'SPIM', '2025-12-10 17:00:00', 0.70, 7.50, 14.00, 95.00, '10SM', 'SCT040', 24, '20', '1013', 'Condiciones normales'),
(9, 'SBGR', '2025-12-10 18:00:00', 0.85, 12.80, 22.00, 85.00, '7SM', 'BKN018', 26, '23', '1012', 'Chubascos dispersos'),
(10, 'SBRJ', '2025-12-10 19:00:00', 0.95, 9.60, 17.00, 105.00, '9SM', 'FEW025', 28, '24', '1014', 'Cielo parcialmente nublado'),
(11, 'KLAX', '2025-12-10 20:00:00', 1.00, 6.50, 11.00, 75.00, '10SM', 'SKC', 25, '19', '1014', 'Perfecto para vuelos'),
(12, 'LEBL', '2025-12-10 21:00:00', 0.60, 14.20, 24.00, 115.00, '8SM', 'SCT035', 18, '14', '1018', 'Vientos del noreste'),
(13, 'LEBL', '2025-12-10 22:00:00', 0.80, 12.30, 20.00, 95.00, '9SM', 'BKN025', 16, '12', '1019', 'Nublado parcial'),
(14, 'MMUN', '2025-12-10 23:00:00', 0.95, 7.80, 14.00, 110.00, '10SM', 'FEW015', 30, '26', '1015', 'Cielo despejado'),
(15, 'SKCL', '2025-12-11 00:00:00', 0.75, 9.50, 16.00, 85.00, '8SM', 'SCT030', 28, '24', '1012', 'Lluvias dispersas');

-- --------------------------------------------------------

--
-- Table structure for table `MODELO`
--

CREATE TABLE `MODELO` (
  `ID_MODELO` int(11) NOT NULL,
  `M_NOMBRE` varchar(255) NOT NULL,
  `M_FABRICANTE` varchar(127) NOT NULL,
  `M_CARGA_MAX` decimal(10,2) NOT NULL,
  `M_PAX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MODELO`
--

INSERT INTO `MODELO` (`ID_MODELO`, `M_NOMBRE`, `M_FABRICANTE`, `M_CARGA_MAX`, `M_PAX`) VALUES
(1, 'Airbus A320', 'Airbus', 16500.00, 180),
(2, 'Airbus A321', 'Airbus', 19500.00, 220),
(3, 'Airbus A330', 'Airbus', 23300.00, 293),
(4, 'Airbus A350', 'Airbus', 28000.00, 350),
(5, 'Boeing 737-800', 'Boeing', 18900.00, 189),
(6, 'Boeing 737 MAX 8', 'Boeing', 21000.00, 210),
(7, 'Boeing 777', 'Boeing', 35100.00, 396),
(8, 'Boeing 787-9', 'Boeing', 25400.00, 296),
(9, 'Embraer 190', 'Embraer', 12500.00, 114),
(10, 'Embraer 195', 'Embraer', 14500.00, 132);

-- --------------------------------------------------------

--
-- Table structure for table `PLANNING`
--

CREATE TABLE `PLANNING` (
  `P_ID` int(100) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `AP_ICAO` varchar(4) NOT NULL,
  `DESPACH_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PLANNING`
--

INSERT INTO `PLANNING` (`P_ID`, `AL_ID`, `AP_ICAO`, `DESPACH_ID`) VALUES
(1, 'AVA', 'SKBO', 1),
(2, 'AAL', 'KMIA', 2),
(3, 'IBE', 'LEMD', 3),
(4, 'AMX', 'MMMX', 4),
(5, 'LAN', 'SCEL', 5),
(6, 'ARG', 'SAEZ', 6),
(7, 'AZU', 'SBGR', 7),
(8, 'VIV', 'SKBO', 8),
(9, 'AVA', 'SKBO', 1),
(10, 'AAL', 'KJFK', 2),
(11, 'IBE', 'LEBL', 3),
(12, 'AMX', 'MMUN', 4),
(13, 'LAN', 'SPIM', 5),
(14, 'ARG', 'SAEZ', 6),
(15, 'AZU', 'SBRJ', 7),
(16, 'AVA', 'SKBO', 1),
(17, 'AAL', 'SKBO', 2),
(18, 'IBE', 'KMIA', 3),
(19, 'AMX', 'MMMX', 4),
(20, 'LAN', 'SCEL', 5),
(21, 'DLH', 'LEMD', 9),
(22, 'BAW', 'KJFK', 10),
(23, 'AVA', 'SKRG', 1),
(24, 'AAL', 'KLAX', 2),
(25, 'IBE', 'LEBL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `RUTA`
--

CREATE TABLE `RUTA` (
  `R_ID` varchar(6) NOT NULL,
  `AP_ORIGEN` varchar(4) NOT NULL,
  `AP_DESTINO` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RUTA`
--

INSERT INTO `RUTA` (`R_ID`, `AP_ORIGEN`, `AP_DESTINO`) VALUES
('BOGGRU', 'SKBO', 'SBGR'),
('BOGLIM', 'SKBO', 'SPIM'),
('BOGMAD', 'SKBO', 'LEMD'),
('BOGMDE', 'SKBO', 'SKRG'),
('BOGMIA', 'SKBO', 'KMIA'),
('BOGSCL', 'SKBO', 'SCEL'),
('EZEJFK', 'SAEZ', 'KJFK'),
('GRUEZE', 'SBGR', 'SAEZ'),
('JFKGRU', 'KJFK', 'SBGR'),
('LAXJFK', 'KLAX', 'KJFK'),
('LIMSCL', 'SPIM', 'SCEL'),
('MADBCN', 'LEMD', 'LEBL'),
('MADCUN', 'LEMD', 'MMUN'),
('MDEBOG', 'SKRG', 'SKBO'),
('MEXLIM', 'MMMX', 'SPIM'),
('MEXMIA', 'MMMX', 'KMIA'),
('MIAJFK', 'KMIA', 'KJFK'),
('MIALAX', 'KMIA', 'KLAX'),
('MIAMAD', 'KMIA', 'LEMD'),
('SCLGRU', 'SCEL', 'SBGR');

-- --------------------------------------------------------

--
-- Table structure for table `SIGMET`
--

CREATE TABLE `SIGMET` (
  `S_ID` int(255) NOT NULL,
  `M_ID` int(11) DEFAULT NULL,
  `S_TYPE` char(1) NOT NULL,
  `S_CONDITION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SIGMET`
--

INSERT INTO `SIGMET` (`S_ID`, `M_ID`, `S_TYPE`, `S_CONDITION`) VALUES
(1, 1, 'C', 'Tormenta eléctrica moderada'),
(2, 2, 'T', 'Turbulencia moderada'),
(3, 3, 'I', 'Formación de hielo'),
(4, 4, 'V', 'Erupción volcánica'),
(5, 5, 'D', 'Ceniza volcánica'),
(6, 6, 'C', 'Tormenta severa'),
(7, 7, 'T', 'Turbulencia severa'),
(8, 8, 'I', 'Formación de hielo severa'),
(9, 9, 'C', 'Tormenta tropical'),
(10, 10, 'T', 'Turbulencia extrema');

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_LICENCIA`
--

CREATE TABLE `TIPO_LICENCIA` (
  `ID_MODELO` int(11) NOT NULL,
  `ID_LICENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TIPO_LICENCIA`
--

INSERT INTO `TIPO_LICENCIA` (`ID_MODELO`, `ID_LICENCIA`) VALUES
(1, 1),
(8, 1),
(1, 2),
(8, 2),
(1, 3),
(9, 3),
(2, 4),
(9, 4),
(2, 5),
(10, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(5, 10),
(2, 11),
(5, 11),
(6, 12),
(6, 13),
(7, 14),
(7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `TRIPULACION`
--

CREATE TABLE `TRIPULACION` (
  `E_ID` int(11) NOT NULL,
  `ID_MODELO` int(11) NOT NULL,
  `ID_LICENCIA` int(11) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `E_DOC` varchar(15) NOT NULL,
  `E_PASAPORTE` varchar(15) NOT NULL,
  `E_NOMBRE` varchar(255) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `E_TELEFONO` bigint(20) NOT NULL,
  `E_EMAIL` varchar(127) NOT NULL,
  `NACIONALIDAD` varchar(255) NOT NULL,
  `ACTIVO` tinyint(1) NOT NULL,
  `CLASE` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TRIPULACION`
--

INSERT INTO `TRIPULACION` (`E_ID`, `ID_MODELO`, `ID_LICENCIA`, `AL_ID`, `E_DOC`, `E_PASAPORTE`, `E_NOMBRE`, `FECHA_NACIMIENTO`, `E_TELEFONO`, `E_EMAIL`, `NACIONALIDAD`, `ACTIVO`, `CLASE`) VALUES
(1, 1, 1, 'AVA', '777888999', 'KL123456', 'María Rodríguez', '1992-05-25', 573004567890, 'maria.rodriguez@avianca.com', 'Colombiana', 1, 'F'),
(2, 2, 4, 'AAL', '000111222', 'MN789012', 'Sarah Miller', '1993-08-14', 13055545678, 's.miller@aa.com', 'Estadounidense', 1, 'F'),
(3, 3, 6, 'IBE', '111222333', 'OP901234', 'Laura Gómez', '1991-12-08', 349103333333, 'l.gomez@iberia.com', 'Española', 1, 'F'),
(4, 4, 8, 'AMX', '222333444', 'QR567890', 'Gabriela Castro', '1994-03-19', 525522222222, 'g.castro@aeromexico.com', 'Mexicana', 1, 'F'),
(5, 5, 10, 'LAN', '333444555', 'ST123456', 'Valentina Muñoz', '1990-07-22', 562244444444, 'v.munoz@latam.com', 'Chilena', 1, 'F'),
(6, 6, 12, 'ARG', '444555666', 'UV901234', 'Camila López', '1995-09-30', 541188888888, 'c.lopez@aerolineas.com', 'Argentina', 1, 'F'),
(7, 7, 14, 'AZU', '555666777', 'WX123456', 'Beatriz Costa', '1993-11-11', 5511777777777, 'b.costa@azul.com', 'Brasileña', 1, 'F'),
(8, 8, 1, 'VIV', '666777888', 'YZ901234', 'Carolina Ruiz', '1996-02-14', 573005555555, 'c.ruiz@viva.com', 'Colombiana', 1, 'F'),
(9, 1, 2, 'AVA', '777888999', 'AB123457', 'David Torres', '1989-06-18', 573006666666, 'd.torres@avianca.com', 'Colombiana', 1, 'T'),
(10, 2, 5, 'AAL', '888999000', 'CD789013', 'James Wilson', '1988-04-25', 13055534567, 'j.wilson@aa.com', 'Estadounidense', 1, 'T'),
(11, 3, 7, 'IBE', '999000111', 'EF345679', 'Antonio Navarro', '1990-10-03', 349104444444, 'a.navarro@iberia.com', 'Española', 1, 'T'),
(12, 4, 9, 'AMX', '000111222', 'GH901235', 'Francisco Mendoza', '1992-01-28', 525533333333, 'f.mendoza@aeromexico.com', 'Mexicana', 1, 'T'),
(13, 5, 11, 'LAN', '111222333', 'IJ567891', 'Pablo Contreras', '1991-05-15', 562255555555, 'p.contreras@latam.com', 'Chilena', 1, 'T'),
(14, 6, 13, 'ARG', '222333444', 'KL123457', 'Martín Díaz', '1994-08-20', 541177777777, 'm.diaz@aerolineas.com', 'Argentina', 1, 'T'),
(15, 7, 15, 'AZU', '333444555', 'MN789013', 'Lucas Souza', '1993-12-05', 5511666666666, 'l.souza@azul.com', 'Brasileña', 1, 'T'),
(16, 8, 2, 'DLH', '444555666', 'FG456789', 'Sophie Weber', '1994-07-19', 491578765432, 's.weber@lufthansa.com', 'Alemana', 1, 'F'),
(17, 9, 4, 'BAW', '555666777', 'HI012345', 'Oliver Taylor', '1991-02-28', 441239876543, 'o.taylor@ba.com', 'Británica', 1, 'F'),
(18, 1, 1, 'AVA', '666777888', 'JK678901', 'Santiago Gómez', '1993-05-15', 573007777777, 's.gomez@avianca.com', 'Colombiana', 1, 'T'),
(19, 5, 11, 'AAL', '777888999', 'LM234567', 'Daniel White', '1990-08-22', 13055599999, 'd.white@aa.com', 'Estadounidense', 1, 'T'),
(20, 7, 15, 'AZU', '888999000', 'NO890123', 'Isabela Santos', '1995-01-30', 5511999999999, 'i.santos@azul.com', 'Brasileña', 1, 'F');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Vista_Licencias_Capitanes`
-- (See below for the actual view)
--
CREATE TABLE `Vista_Licencias_Capitanes` (
`E_ID` int(11)
,`E_NOMBRE` varchar(255)
,`E_DOC` varchar(15)
,`NACIONALIDAD` varchar(255)
,`ID_LICENCIA` int(11)
,`L_FECHA_EMISION` date
,`L_FECHA_VENCIMIENTO` date
,`ENTIDAD_EMISORA` varchar(255)
,`L_ESTADO` tinyint(1)
,`DIAS_HASTA_VENCIMIENTO` int(8)
,`ESTADO_VENCIMIENTO` varchar(21)
,`MODELO_AUTORIZADO` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `VUELO`
--

CREATE TABLE `VUELO` (
  `R_ID` varchar(6) NOT NULL,
  `P_ID` int(100) NOT NULL,
  `E_CAPITAN_ID` int(11) NOT NULL,
  `E_TRIP_ID` int(11) NOT NULL,
  `AL_ID` varchar(3) NOT NULL,
  `AP_ICAO_ORIGEN` varchar(4) NOT NULL,
  `AP_ICAO_DESTINO` varchar(4) NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `VUELO`
--

INSERT INTO `VUELO` (`R_ID`, `P_ID`, `E_CAPITAN_ID`, `E_TRIP_ID`, `AL_ID`, `AP_ICAO_ORIGEN`, `AP_ICAO_DESTINO`, `FECHA`) VALUES
('BOGMDE', 1, 1, 1, 'AVA', 'SKBO', 'SKRG', '2025-12-10 08:30:00'),
('BOGMIA', 2, 2, 2, 'AAL', 'SKBO', 'KMIA', '2025-12-10 14:45:00'),
('MIAMAD', 3, 3, 3, 'IBE', 'KMIA', 'LEMD', '2025-12-10 22:15:00'),
('MEXMIA', 4, 4, 4, 'AMX', 'MMMX', 'KMIA', '2025-12-11 09:20:00'),
('SCLGRU', 5, 5, 5, 'LAN', 'SCEL', 'SBGR', '2025-12-11 11:40:00'),
('EZEJFK', 6, 6, 6, 'ARG', 'SAEZ', 'KJFK', '2025-12-11 16:55:00'),
('GRUEZE', 7, 7, 7, 'AZU', 'SBGR', 'SAEZ', '2025-12-12 07:15:00'),
('MDEBOG', 8, 8, 8, 'VIV', 'SKRG', 'SKBO', '2025-12-12 10:25:00'),
('BOGLIM', 9, 1, 9, 'AVA', 'SKBO', 'SPIM', '2025-12-12 13:30:00'),
('MIAJFK', 10, 2, 10, 'AAL', 'KMIA', 'KJFK', '2025-12-12 18:45:00'),
('MADBCN', 11, 3, 11, 'IBE', 'LEMD', 'LEBL', '2025-12-13 08:10:00'),
('BOGSCL', 12, 4, 12, 'AMX', 'SKBO', 'SCEL', '2025-12-13 12:20:00'),
('MEXLIM', 13, 5, 13, 'LAN', 'MMMX', 'SPIM', '2025-12-13 15:35:00'),
('BOGMAD', 14, 6, 14, 'ARG', 'SKBO', 'LEMD', '2025-12-14 19:50:00'),
('LAXJFK', 15, 7, 15, 'AZU', 'KLAX', 'KJFK', '2025-12-14 21:05:00'),
('BOGMDE', 16, 9, 1, 'AVA', 'SKBO', 'SKRG', '2025-12-15 06:30:00'),
('BOGMIA', 17, 10, 2, 'AAL', 'SKBO', 'KMIA', '2025-12-15 10:45:00'),
('MIAMAD', 18, 3, 3, 'IBE', 'KMIA', 'LEMD', '2025-12-15 14:15:00'),
('MEXMIA', 19, 4, 4, 'AMX', 'MMMX', 'KMIA', '2025-12-16 08:20:00'),
('SCLGRU', 20, 5, 5, 'LAN', 'SCEL', 'SBGR', '2025-12-16 17:40:00'),
('BOGGRU', 21, 11, 16, 'DLH', 'SKBO', 'SBGR', '2025-12-17 08:00:00'),
('MIALAX', 22, 12, 17, 'BAW', 'KMIA', 'KLAX', '2025-12-17 12:30:00'),
('MADCUN', 23, 1, 18, 'AVA', 'LEMD', 'MMUN', '2025-12-17 16:45:00'),
('JFKGRU', 24, 2, 19, 'AAL', 'KJFK', 'SBGR', '2025-12-18 10:15:00'),
('LIMSCL', 25, 3, 20, 'IBE', 'SPIM', 'SCEL', '2025-12-18 14:20:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AEROLINEA`
--
ALTER TABLE `AEROLINEA`
  ADD PRIMARY KEY (`AL_ID`);

--
-- Indexes for table `AERONAVE`
--
ALTER TABLE `AERONAVE`
  ADD PRIMARY KEY (`AN_ID`),
  ADD KEY `FK_AEROLINEA_AERONAVE` (`AL_ID`),
  ADD KEY `FK_AERONAVE_MODELO` (`ID_MODELO`);

--
-- Indexes for table `AEROPUERTO`
--
ALTER TABLE `AEROPUERTO`
  ADD PRIMARY KEY (`AP_ICAO`),
  ADD KEY `FK_AEROPUERTO_CIUDAD` (`C_ID`);

--
-- Indexes for table `CAPITAN`
--
ALTER TABLE `CAPITAN`
  ADD PRIMARY KEY (`E_ID`),
  ADD KEY `FK_TIPO_LICENCIA_CAPITAN` (`ID_MODELO`,`ID_LICENCIA`),
  ADD KEY `FK_AEROLINA_CAPITAN` (`AL_ID`);

--
-- Indexes for table `CIUDAD`
--
ALTER TABLE `CIUDAD`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `DESPACH`
--
ALTER TABLE `DESPACH`
  ADD PRIMARY KEY (`E_ID`),
  ADD KEY `FK_TIPO_LICENCIA_DESPACH` (`ID_MODELO`,`ID_LICENCIA`),
  ADD KEY `FK_AEROLINA_DESPACH` (`AL_ID`);

--
-- Indexes for table `ESTACION_CLIMA`
--
ALTER TABLE `ESTACION_CLIMA`
  ADD PRIMARY KEY (`EST_ID`),
  ADD KEY `FK_CIUDAD_ESTACION` (`C_ID`);

--
-- Indexes for table `LICENCIA`
--
ALTER TABLE `LICENCIA`
  ADD PRIMARY KEY (`ID_LICENCIA`);

--
-- Indexes for table `METAR`
--
ALTER TABLE `METAR`
  ADD PRIMARY KEY (`M_ID`),
  ADD KEY `FK_AEROPUERTO_METAR` (`AP_ICAO`);

--
-- Indexes for table `MODELO`
--
ALTER TABLE `MODELO`
  ADD PRIMARY KEY (`ID_MODELO`);

--
-- Indexes for table `PLANNING`
--
ALTER TABLE `PLANNING`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `FK_DESPACH_PLANNING` (`DESPACH_ID`),
  ADD KEY `FK_PLANNING_AL` (`AL_ID`),
  ADD KEY `FK_PLANNING_AP` (`AP_ICAO`);

--
-- Indexes for table `RUTA`
--
ALTER TABLE `RUTA`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `FK_DESTINO` (`AP_DESTINO`),
  ADD KEY `FK_ORIGEN` (`AP_ORIGEN`);

--
-- Indexes for table `SIGMET`
--
ALTER TABLE `SIGMET`
  ADD PRIMARY KEY (`S_ID`),
  ADD KEY `FK_METAR_SIGMET` (`M_ID`);

--
-- Indexes for table `TIPO_LICENCIA`
--
ALTER TABLE `TIPO_LICENCIA`
  ADD PRIMARY KEY (`ID_MODELO`,`ID_LICENCIA`),
  ADD KEY `FK_TIPO_LICENCIA` (`ID_LICENCIA`);

--
-- Indexes for table `TRIPULACION`
--
ALTER TABLE `TRIPULACION`
  ADD PRIMARY KEY (`E_ID`),
  ADD KEY `FK_TIPO_LICENCIA_TRIPULACION` (`ID_MODELO`,`ID_LICENCIA`),
  ADD KEY `FK_AEROLINA_TRIPULACION` (`AL_ID`);

--
-- Indexes for table `VUELO`
--
ALTER TABLE `VUELO`
  ADD PRIMARY KEY (`P_ID`,`R_ID`),
  ADD KEY `FK_CAPITAN_VUELO` (`E_CAPITAN_ID`),
  ADD KEY `FK_TRIPULACION_VUELO` (`E_TRIP_ID`),
  ADD KEY `FK_VUELO_RUTA` (`R_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CAPITAN`
--
ALTER TABLE `CAPITAN`
  MODIFY `E_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `DESPACH`
--
ALTER TABLE `DESPACH`
  MODIFY `E_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ESTACION_CLIMA`
--
ALTER TABLE `ESTACION_CLIMA`
  MODIFY `EST_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `LICENCIA`
--
ALTER TABLE `LICENCIA`
  MODIFY `ID_LICENCIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `MODELO`
--
ALTER TABLE `MODELO`
  MODIFY `ID_MODELO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PLANNING`
--
ALTER TABLE `PLANNING`
  MODIFY `P_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `SIGMET`
--
ALTER TABLE `SIGMET`
  MODIFY `S_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `TRIPULACION`
--
ALTER TABLE `TRIPULACION`
  MODIFY `E_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

-- --------------------------------------------------------

--
-- Structure for view `Vista_Licencias_Capitanes`
--
DROP TABLE IF EXISTS `Vista_Licencias_Capitanes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u740525722_admin`@`127.0.0.1` SQL SECURITY DEFINER VIEW `Vista_Licencias_Capitanes`  AS SELECT `C`.`E_ID` AS `E_ID`, `C`.`E_NOMBRE` AS `E_NOMBRE`, `C`.`E_DOC` AS `E_DOC`, `C`.`NACIONALIDAD` AS `NACIONALIDAD`, `L`.`ID_LICENCIA` AS `ID_LICENCIA`, `L`.`L_FECHA_EMISION` AS `L_FECHA_EMISION`, `L`.`L_FECHA_VENCIMIENTO` AS `L_FECHA_VENCIMIENTO`, `L`.`ENTIDAD_EMISORA` AS `ENTIDAD_EMISORA`, `L`.`L_ESTADO` AS `L_ESTADO`, to_days(`L`.`L_FECHA_VENCIMIENTO`) - to_days(curdate()) AS `DIAS_HASTA_VENCIMIENTO`, CASE WHEN `L`.`L_FECHA_VENCIMIENTO` < curdate() THEN 'VENCIDA' WHEN to_days(`L`.`L_FECHA_VENCIMIENTO`) - to_days(curdate()) <= 30 THEN 'POR VENCER (≤30 días)' ELSE 'VIGENTE' END AS `ESTADO_VENCIMIENTO`, `M`.`M_NOMBRE` AS `MODELO_AUTORIZADO` FROM (((`CAPITAN` `C` join `TIPO_LICENCIA` `TL` on(`C`.`ID_MODELO` = `TL`.`ID_MODELO` and `C`.`ID_LICENCIA` = `TL`.`ID_LICENCIA`)) join `LICENCIA` `L` on(`TL`.`ID_LICENCIA` = `L`.`ID_LICENCIA`)) join `MODELO` `M` on(`TL`.`ID_MODELO` = `M`.`ID_MODELO`)) WHERE `C`.`ACTIVO` = 1 ORDER BY `L`.`L_FECHA_VENCIMIENTO` ASC ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AERONAVE`
--
ALTER TABLE `AERONAVE`
  ADD CONSTRAINT `FK_AEROLINEA_AERONAVE` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_AERONAVE_MODELO` FOREIGN KEY (`ID_MODELO`) REFERENCES `MODELO` (`ID_MODELO`);

--
-- Constraints for table `AEROPUERTO`
--
ALTER TABLE `AEROPUERTO`
  ADD CONSTRAINT `FK_AEROPUERTO_CIUDAD` FOREIGN KEY (`C_ID`) REFERENCES `CIUDAD` (`C_ID`);

--
-- Constraints for table `CAPITAN`
--
ALTER TABLE `CAPITAN`
  ADD CONSTRAINT `FK_AEROLINA_CAPITAN` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_AEROLINA_EMPLEADO` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_TIPO_LICENCIA_CAPITAN` FOREIGN KEY (`ID_MODELO`,`ID_LICENCIA`) REFERENCES `TIPO_LICENCIA` (`ID_MODELO`, `ID_LICENCIA`);

--
-- Constraints for table `DESPACH`
--
ALTER TABLE `DESPACH`
  ADD CONSTRAINT `FK_AEROLINA_DESPACH` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_TIPO_LICENCIA_DESPACH` FOREIGN KEY (`ID_MODELO`,`ID_LICENCIA`) REFERENCES `TIPO_LICENCIA` (`ID_MODELO`, `ID_LICENCIA`);

--
-- Constraints for table `ESTACION_CLIMA`
--
ALTER TABLE `ESTACION_CLIMA`
  ADD CONSTRAINT `FK_CIUDAD_ESTACION` FOREIGN KEY (`C_ID`) REFERENCES `CIUDAD` (`C_ID`);

--
-- Constraints for table `METAR`
--
ALTER TABLE `METAR`
  ADD CONSTRAINT `FK_AEROPUERTO_METAR` FOREIGN KEY (`AP_ICAO`) REFERENCES `AEROPUERTO` (`AP_ICAO`);

--
-- Constraints for table `PLANNING`
--
ALTER TABLE `PLANNING`
  ADD CONSTRAINT `FK_DESPACH_PLANNING` FOREIGN KEY (`DESPACH_ID`) REFERENCES `DESPACH` (`E_ID`),
  ADD CONSTRAINT `FK_PLANNING` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_PLANNING_AL` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_PLANNING_AP` FOREIGN KEY (`AP_ICAO`) REFERENCES `AEROPUERTO` (`AP_ICAO`);

--
-- Constraints for table `RUTA`
--
ALTER TABLE `RUTA`
  ADD CONSTRAINT `FK_DESTINO` FOREIGN KEY (`AP_DESTINO`) REFERENCES `AEROPUERTO` (`AP_ICAO`),
  ADD CONSTRAINT `FK_ORIGEN` FOREIGN KEY (`AP_ORIGEN`) REFERENCES `AEROPUERTO` (`AP_ICAO`);

--
-- Constraints for table `SIGMET`
--
ALTER TABLE `SIGMET`
  ADD CONSTRAINT `FK_METAR_SIGMET` FOREIGN KEY (`M_ID`) REFERENCES `METAR` (`M_ID`);

--
-- Constraints for table `TIPO_LICENCIA`
--
ALTER TABLE `TIPO_LICENCIA`
  ADD CONSTRAINT `FK_TIPO_LICENCIA` FOREIGN KEY (`ID_LICENCIA`) REFERENCES `LICENCIA` (`ID_LICENCIA`),
  ADD CONSTRAINT `FK_TIPO_LICENCIA_MOD` FOREIGN KEY (`ID_MODELO`) REFERENCES `MODELO` (`ID_MODELO`);

--
-- Constraints for table `TRIPULACION`
--
ALTER TABLE `TRIPULACION`
  ADD CONSTRAINT `FK_AEROLINA_TRIPULACION` FOREIGN KEY (`AL_ID`) REFERENCES `AEROLINEA` (`AL_ID`),
  ADD CONSTRAINT `FK_TIPO_LICENCIA_TRIPULACION` FOREIGN KEY (`ID_MODELO`,`ID_LICENCIA`) REFERENCES `TIPO_LICENCIA` (`ID_MODELO`, `ID_LICENCIA`);

--
-- Constraints for table `VUELO`
--
ALTER TABLE `VUELO`
  ADD CONSTRAINT `FK_CAPITAN_VUELO` FOREIGN KEY (`E_CAPITAN_ID`) REFERENCES `CAPITAN` (`E_ID`),
  ADD CONSTRAINT `FK_TRIPULACION_VUELO` FOREIGN KEY (`E_TRIP_ID`) REFERENCES `TRIPULACION` (`E_ID`),
  ADD CONSTRAINT `FK_VUELO_PLANNING` FOREIGN KEY (`P_ID`) REFERENCES `PLANNING` (`P_ID`),
  ADD CONSTRAINT `FK_VUELO_RUTA` FOREIGN KEY (`R_ID`) REFERENCES `RUTA` (`R_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
