-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Jun-2020 às 14:56
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `resumo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `nome`, `resumo`) VALUES
(1, 'J. K. Rowling', 'Escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'),
(2, 'Gabriel García Márquez', 'Gabriel José García Márquez foi um escritor, jornalista, editor, ativista e político colombiano.'),
(3, 'George Orwell', 'Eric Arthur Blair, mais conhecido pelo pseudónimo George Orwell, foi um escritor, jornalista e ensaísta político inglês.'),
(4, 'Jane Austen', 'Jane Austen foi uma escritora inglesa. A ironia que utilizou para descrever as personagens de seus romances a coloca entre os clássicos.'),
(5, 'Stephen King', 'Stephen Edwin King é um escritor norte-americano de terror, ficção sobrenatural, suspense, ficção científica e fantasia.'),
(10, 'Franz Kafka', 'Franz Kafka foi um escritor de língua alemã, autor de romances e contos, um dos escritores mais influentes do século XX.'),
(11, 'Virginia Woolf', 'Adeline Virginia Woolf, nascida Adeline Virginia Stephen, foi uma escritora, ensaísta e editora britânica.'),
(12, 'J. R. R. Tolkien', 'John Ronald Reuel Tolkien, conhecido por J. R. R. Tolkien, foi um premiado escritor, professor universitário e filólogo britânico.'),
(13, 'Vladimir Nabokov', 'Vladimir Vladimirovich Nabokov foi um romancista, poeta, tradutor e entomologista russo-americano.'),
(14, 'F. Scott Fitzgerald', 'Francis Scott Key Fitzgerald, foi um escritor, romancista, contista, roteirista e poeta norte-americano.'),
(15, 'Augusto Cury', 'Augusto Jorge Cury é um psiquiatra, professor e escritor brasileiro.'),
(16, 'Mário de Andrade', 'Mário Raul Morais de Andrade foi um poeta, escritor, crítico literário, musicólogo, folclorista, ensaísta e fotógrafo brasileiro.'),
(17, 'John Green', 'John Michael Green é um vlogger, empresário, produtor e autor norte-americano de livros para jovens.'),
(18, 'Monteiro Lobato', 'José Bento Renato Monteiro Lobato foi um escritor, ativista, diretor e produtor brasileiro.'),
(19, 'George R. R. Martin', 'George Raymond Richard Martin, nascido George Raymond Martin, é um roteirista e escritor de ficção científica, terror e fantasia norte-americano.'),
(20, 'Manuel Bandeira', 'Manuel Carneiro de Sousa Bandeira Filho foi um poeta, crítico literário e de arte, professor de literatura e tradutor brasileiro.'),
(21, 'Neil Gaiman', 'Neil Richard MacKinnon Gaiman, é um autor britânico de contos, romances, banda desenhada e roteiros radicado nos Estados Unidos.'),
(22, 'Nicholas Sparks', 'Nicholas Sparks é um escritor, roteirista e produtor estadunidense.'),
(23, 'J. D. Salinger', 'Jerome David Salinger foi um escritor norte-americano.'),
(24, 'Dan Brown', 'Daniel Gerhard Brown, conhecido por assinar como Dan Brown, é um escritor norte-americano.'),
(25, 'Margaret Atwood', 'Margaret Eleanor Atwood é uma escritora canadense, romancista, poetisa, contista, ensaísta e crítica literária internacionalmente reconhecida.'),
(26, 'Alexandre Dumas', 'Alexandre Dumas, conhecido como Alexandre Dumas, Pai, foi um romancista francês.'),
(27, 'Jojo Moyes', 'Pauline Sara Jo Moyes, mais conhecida como Jojo Moyes é uma jornalista britânica e, desde 2002, romancista.'),
(28, 'Yuval Harari', 'Yuval Noah Harari é um professor israelense de História e autor do best-seller internacional.'),
(29, 'Clive Staples Lewis', 'Clive Staples Lewis, foi um professor universitário, escritor, romancista, poeta, crítico literário, ensaísta e teólogo irlandês.'),
(30, 'Haruki Murakami', 'Haruki Murakami, é um escritor e tradutor japonês. Seus livros são sucessos de vendas no Japão e internacionalmente.'),
(31, 'Ziraldo Alves Pinto', 'É um cartunista, chargista, pintor, dramaturgo, caricaturista, escritor, cronista, desenhista, humorista, colunista e jornalista brasileiro.'),
(32, 'Zaratustra', 'Zaratustra, também conhecido na versão grega de seu nome Zoroastres, Zoroastro, foi um profeta e poeta nascido na Pérsia.'),
(33, 'James Patterson', 'James Brendan Patterson é um autor best-seller norte-americano de romances de suspense e policial.'),
(34, 'Rick Riordan', 'Rick Russell Riordan, Jr., também conhecido simplesmente como Rick Riordan, é um escritor norte-americano.'),
(35, 'Eleanor Marie Robertson', 'Nora Roberts é uma escritora norte-americana de mais de 200 best-sellers românticos.'),
(36, 'Akira Toriyama', 'Akira Toriyama é um autor japonês de mangá, conhecido por ser o criador de séries como Dragon Ball e Dr. Slump.'),
(37, 'Masashi Kishimoto', 'Masashi Kishimoto é um mangaká e escritor japonês, entre seus maiores trabalhos está Naruto criado em 1997.'),
(38, 'Yoshihiro Togashi', 'Yoshihiro Togashi nascido em 27 de abril de 1966, em Shinjō, Yamagata, é um mangaká japonês.'),
(39, 'Tite Kubo', 'Noriaki Kubo, mais conhecido como Tite Kubo é um famoso mangaká japonês.'),
(40, 'Hiromu Arakawa', 'Hiromu Arakawa é uma mangaká japonesa nascida em Hokkaido.'),
(41, 'Hiro Mashima', 'Hiro Mashima é um mangaká japonês.'),
(42, 'Hiroyuki Takei', 'Hiroyuki Takei é um mangaká.'),
(43, 'Naoko Takeuchi', 'Naoko Takeuchi é uma mangaká japonesa. Seu trabalho mais popular, Sailor Moon.'),
(44, 'Hideaki Sorachi', 'Traduzido do inglês-Hideaki Sorachi é um mangá japonês mais conhecido por Gin Tama.'),
(45, 'Masami Kurumada', 'Masami Kurumada é um mangaká japonês e autor de vários mangás, dentre eles: Cavaleiros do Zodíaco.'),
(46, 'Machado de Assis', 'Joaquim Maria Machado de Assis foi um escritor brasileiro, considerado por muitos um dos maiores senão o maior nome da literatura do Brasil.'),
(47, 'Carlos Drummond de Andrade', 'Foi um poeta, contista e cronista brasileiro, considerado por muitos o mais influente poeta brasileiro do século XX.'),
(48, 'Graciliano Ramos', 'Graciliano Ramos de Oliveira foi um romancista, cronista, contista, jornalista, político, militante comunista e memorialista brasileiro.'),
(49, 'Guimarães Rosa', 'João Guimarães Rosa foi um escritor, diplomata, novelista, romancista, contista e médico brasileiro.'),
(50, 'Cecília Meireles', 'Cecília Benevides de Carvalho Meireles foi uma jornalista, pintora, poeta, escritora e professora brasileira.'),
(51, 'Érico Veríssimo', 'Erico Lopes Verissimo foi um dos escritores brasileiros mais populares do século XX.'),
(52, 'Oswald de Andrade', 'José Oswald de Sousa de Andrade, nome completo de Oswald de Andrade, foi um poeta, escritor, ensaísta e dramaturgo brasileiro.'),
(53, 'Mauricio de Sousa', 'Mauricio Araújo de Sousa é um cartunista, empresário e escritor brasileiro.'),
(54, 'Chu-Gong', 'Chu-Gong é um escritor Sul-Koreano que escreveu grandes obras como Solo Leveling'),
(55, 'Clive Staples Lewis', 'Foi um professor universitário, escritor, romancista, poeta, crítico literário, ensaísta e teólogo irlandês.'),
(56, 'Patrick Rothfuss', 'Patrick James Rothfuss é um escritor de fantasia americano. Ele é o autor da série A Crônica do Matador do Rei.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `idEditora` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`idEditora`, `nome`, `idEndereco`, `idTelefone`) VALUES
(1, 'Innotype', 85, 41),
(2, 'Kimia', 80, 11),
(3, 'Skyble', 91, 9),
(4, 'Oozz', 58, 38),
(5, 'Janyx', 55, 3),
(6, 'Gabspot', 59, 47),
(7, 'Skimia', 71, 43),
(8, 'Quinu', 82, 29),
(9, 'Dynava', 89, 44),
(10, 'Voomm', 93, 25),
(11, 'Thoughtmix', 93, 26),
(12, 'Janyx', 68, 38),
(13, 'Blogtags', 90, 13),
(14, 'Meedoo', 54, 12),
(15, 'Dynava', 78, 7),
(16, 'Tagpad', 91, 31),
(17, 'Leenti', 97, 41),
(18, 'Mydeo', 63, 10),
(19, 'Yodel', 53, 19),
(20, 'Yakitri', 64, 26),
(21, 'Kamba', 65, 32),
(22, 'Rhycero', 72, 4),
(23, 'Mymm', 75, 26),
(24, 'Mydeo', 99, 40),
(25, 'Oodoo', 94, 17),
(26, 'Tagpad', 100, 44),
(27, 'Kazu', 84, 15),
(28, 'Skiba', 72, 31),
(29, 'Flashdog', 87, 45),
(30, 'Wordware', 61, 41),
(31, 'Jaloo', 82, 2),
(32, 'Skajo', 100, 37),
(33, 'Linktype', 77, 44),
(34, 'Fatz', 51, 36),
(35, 'Zooveo', 80, 38),
(36, 'Zoonoodle', 65, 39),
(37, 'Youtags', 75, 45),
(38, 'Dynava', 90, 44),
(39, 'Skyba', 52, 8),
(40, 'Cogibox', 69, 10),
(41, 'Twitternation', 56, 25),
(42, 'Skiptube', 64, 10),
(43, 'Thoughtsphere', 53, 32),
(44, 'Photobug', 75, 35),
(45, 'Centizu', 95, 40),
(46, 'Flipbug', 53, 16),
(47, 'Linktype', 78, 22),
(48, 'Rhynoodle', 52, 28),
(49, 'Dynabox', 54, 36),
(50, 'Bubblebox', 89, 8),
(51, 'Panini', 1, 1),
(52, 'Leya', 2, 9),
(53, 'Shonnem-Jump', 3, 8),
(54, 'Kadokawa Publishing', 4, 7),
(55, 'Pearson', 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `idEmprestimo` int(11) NOT NULL,
  `idLeitor` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`idEmprestimo`, `idLeitor`, `idLivro`, `data_inicio`, `data_entrega`) VALUES
(1, 1, 1, '2018-05-11', '2018-06-11'),
(2, 2, 2, '2019-05-12', '2019-06-12'),
(3, 3, 3, '2018-07-23', '2018-08-23'),
(4, 4, 4, '2019-08-12', '2019-09-12'),
(5, 5, 5, '2019-09-24', '2019-10-24'),
(6, 6, 6, '2019-10-17', '2019-11-17'),
(7, 7, 7, '2019-05-21', '2019-06-21'),
(8, 8, 8, '2018-07-22', '2018-08-22'),
(9, 9, 9, '2019-08-20', '2019-09-20'),
(10, 10, 10, '2018-09-01', '2018-10-01'),
(11, 11, 11, '2019-05-08', '2019-06-08'),
(12, 12, 12, '2019-07-07', '2019-08-07'),
(13, 13, 13, '2019-08-21', '2019-09-21'),
(14, 14, 14, '2018-10-23', '2018-11-23'),
(15, 15, 15, '2019-09-25', '2019-10-25'),
(16, 16, 16, '2019-10-27', '2019-11-27'),
(17, 17, 17, '2019-05-29', '2019-06-29'),
(18, 18, 18, '2019-10-30', '2019-11-30'),
(19, 19, 2, '2018-08-21', '2018-09-21'),
(20, 20, 2, '2019-05-11', '2019-06-11'),
(21, 21, 2, '2019-07-15', '2019-08-15'),
(22, 22, 22, '2018-10-17', '2018-11-17'),
(23, 23, 23, '2019-10-16', '2019-11-16'),
(24, 24, 24, '2019-05-18', '2019-06-18'),
(25, 25, 25, '2019-08-09', '2019-09-09'),
(26, 26, 26, '2019-10-01', '2019-11-01'),
(27, 27, 27, '2019-05-06', '2019-06-06'),
(28, 28, 12, '2019-08-23', '2019-09-23'),
(29, 29, 28, '2018-08-22', '2018-09-22'),
(30, 30, 29, '2019-10-11', '2019-11-11'),
(31, 32, 2, '2019-05-09', '2019-06-09'),
(32, 33, 2, '2018-08-02', '2018-09-02'),
(33, 34, 2, '2019-10-04', '2019-11-04'),
(34, 35, 2, '2019-10-11', '2019-11-11'),
(35, 36, 2, '2019-05-23', '2019-06-23'),
(36, 37, 3, '2019-07-25', '2019-08-25'),
(37, 38, 3, '2019-10-22', '2019-11-22'),
(38, 39, 3, '2018-10-12', '2018-11-12'),
(39, 41, 16, '2019-07-15', '2019-08-15'),
(40, 42, 16, '2019-08-16', '2019-09-16'),
(41, 43, 16, '2019-10-12', '2019-11-12'),
(42, 44, 16, '2019-08-11', '2019-09-11'),
(43, 45, 18, '2018-09-10', '2018-10-10'),
(44, 46, 18, '2019-10-10', '2019-11-10'),
(45, 47, 18, '2019-07-20', '2019-08-20'),
(46, 48, 3, '2019-05-20', '2019-06-20'),
(47, 49, 27, '2019-06-24', '2019-07-24'),
(48, 40, 27, '2018-09-28', '2018-10-28'),
(49, 50, 27, '2019-11-29', '2019-12-29'),
(50, 1, 27, '2018-05-11', '2018-06-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rua` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `localProximo` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `cidade`, `estado`, `rua`, `numero`, `localProximo`) VALUES
(1, 'Atlanta', 'Georgia', 'Scoville', '0', 'Editas Medicine, Inc.'),
(2, 'Austin', 'Texas', 'Coolidge', '154', 'Arc Logistic Partners LP'),
(3, 'Vienna', 'Virginia', 'Dwight', '638', 'Mastercard Incorporated'),
(4, 'Durham', 'North Carolina', 'Pond', '083', 'Arbor Realty Trust'),
(5, 'Albuquerque', 'New Mexico', 'Charing Cross', '3559', 'Dynegy Inc.'),
(6, 'El Paso', 'Texas', 'Butterfield', '9', 'Advaxis, Inc.'),
(7, 'Detroit', 'Michigan', 'Farragut', '10881', 'Monro Muffler Brake, Inc.'),
(8, 'Palo Alto', 'California', 'Superior', '81', 'Citizens & Northern Corp'),
(9, 'Newport Beach', 'California', 'Maple', '45278', 'OFG Bancorp'),
(10, 'Springfield', 'Virginia', 'Dayton', '5723', 'Chesapeake Granite Wash Trust'),
(11, 'Los Angeles', 'California', 'Canary', '553', 'Nuveen Senior Income Fund'),
(12, 'Minneapolis', 'Minnesota', 'American Ash', '1117', 'PC Connection, Inc.'),
(13, 'Chattanooga', 'Tennessee', 'Sherman', '586', 'ENGlobal Corporation'),
(14, 'Portland', 'Oregon', 'Sherman', '48571', 'SEI Investments Company'),
(15, 'Alhambra', 'California', 'Oxford', '65892', 'New York Community Bancorp, Inc.'),
(16, 'Reston', 'Virginia', 'Tennyson', '7', 'Alcentra Capital Corp.'),
(17, 'Scottsdale', 'Arizona', 'Lindbergh', '66862', 'Wells Fargo & Company'),
(18, 'Lake Worth', 'Florida', 'Clemons', '1', 'World Acceptance Corporation'),
(19, 'Memphis', 'Tennessee', 'Lunder', '3079', 'Panhandle Royalty Company'),
(20, 'Ocala', 'Florida', 'Jenna', '0', 'The Bancorp, Inc.'),
(21, 'San Diego', 'California', 'Bayside', '52164', 'Cubic Corporation'),
(22, 'Atlanta', 'Georgia', 'Brown', '55136', 'Texas Capital Bancshares, Inc.'),
(23, 'Salt Lake City', 'Utah', 'Utah', '200', 'AG Mortgage Investment Trust, Inc.'),
(24, 'New Orleans', 'Louisiana', 'Blaine', '12963', 'Granite Real Estate Inc.'),
(25, 'Jacksonville', 'Florida', 'Morrow', '861', 'IHS Markit Ltd.'),
(26, 'Waterbury', 'Connecticut', 'Orin', '2', 'PowerShares KBW Regional Banking Portfolio'),
(27, 'Saint Louis', 'Missouri', 'Granby', '037', 'SkyWest, Inc.'),
(28, 'Washington', 'District of Columbia', 'Erie', '6328', 'Epizyme, Inc.'),
(29, 'Silver Spring', 'Maryland', 'Northview', '61261', 'Vanguard Russell 2000 Growth ETF'),
(30, 'Boston', 'Massachusetts', 'Nevada', '7', 'Investors Title Company'),
(31, 'Memphis', 'Tennessee', 'Weeping Birch', '8357', 'Universal Forest Products, Inc.'),
(32, 'Baton Rouge', 'Louisiana', 'Forest Dale', '09', 'Tesoro Logistics LP'),
(33, 'Alexandria', 'Virginia', 'Kingsford', '34', 'Capital Trust, Inc.'),
(34, 'Houston', 'Texas', 'South', '62694', 'Global X Social Media ETF'),
(35, 'Fort Myers', 'Florida', 'Clyde Gallagher', '8', 'Gabelli Dividend'),
(36, 'Canton', 'Ohio', 'Dapin', '34873', 'Banco Santander Chile'),
(37, 'Scottsdale', 'Arizona', 'Clyde Gallagher', '26784', 'AU Optronics Corp'),
(38, 'Bloomington', 'Indiana', 'Lakewood', '687', 'Aspen Insurance Holdings Limited'),
(39, 'Evansville', 'Indiana', 'Pine View', '96', 'Acasti Pharma, Inc.'),
(40, 'Canton', 'Ohio', 'Schmedeman', '98', 'Corporate Office Properties Trust'),
(41, 'Naperville', 'Illinois', 'Pierstorff', '3469', 'TCP Capital Corp.'),
(42, 'Austin', 'Texas', 'Caliangt', '7', 'Atlantic American Corporation'),
(43, 'Greeley', 'Colorado', 'Burrows', '94', 'KCAP Financial, Inc.'),
(44, 'Tacoma', 'Washington', 'Farmco', '867', 'Shoe Carnival, Inc.'),
(45, 'Los Angeles', 'California', 'Corry', '4615', 'International Business Machines Corporation'),
(46, 'Boca Raton', 'Florida', 'Dakota', '9', 'Flaherty & Crumrine Preferred Securities Income Fund Inc'),
(47, 'Washington', 'District of Columbia', 'Carberry', '3092', 'JAKKS Pacific, Inc.'),
(48, 'Hicksville', 'New York', 'Sunnyside', '68', 'John Wiley & Sons, Inc.'),
(49, 'El Paso', 'Texas', 'Brentwood', '470', 'MagneGas Corporation'),
(50, 'Portland', 'Oregon', 'Messerschmidt', '8015', 'Natural Grocers by Vitamin Cottage, Inc.'),
(51, 'Albany', 'New York', 'Moose', '49', 'Blackstone GSO Senior Floating Rate Term Fund'),
(52, 'Atlanta', 'Georgia', 'Melody', '847', 'The Obesity ETF'),
(53, 'Jackson', 'Mississippi', 'Warner', '236', 'OneMain Holdings, Inc.'),
(54, 'Baltimore', 'Maryland', 'Dennis', '3903', 'Legg Mason Global Infrastructure ETF'),
(55, 'Asheville', 'North Carolina', 'Rusk', '6082', 'Heritage Commerce Corp'),
(56, 'Denver', 'Colorado', 'Corry', '07522', 'Capital One Financial Corporation'),
(57, 'Billings', 'Montana', 'Novick', '869', 'VelocityShares Daily Inverse VIX Short-Term ETN'),
(58, 'Stamford', 'Connecticut', 'Hollow Ridge', '08', 'Bio-Path Holdings, Inc.'),
(59, 'Madison', 'Wisconsin', 'Maryland', '31349', 'Cytori Therapeutics Inc'),
(60, 'Dallas', 'Texas', 'Jenifer', '5', 'Digital Realty Trust, Inc.'),
(61, 'Sarasota', 'Florida', 'Red Cloud', '034', 'Sanofi'),
(62, 'Milwaukee', 'Wisconsin', 'Hollow Ridge', '429', 'OptimumBank Holdings, Inc.'),
(63, 'Fort Wayne', 'Indiana', 'West', '128', 'Meridian Bioscience Inc.'),
(64, 'Santa Monica', 'California', 'Shoshone', '69448', 'Hill-Rom Holdings Inc'),
(65, 'Midland', 'Texas', 'Hoffman', '4506', 'Xcerra Corporation'),
(66, 'Wichita', 'Kansas', 'Myrtle', '6297', 'FinTech Acquisition Corp. II'),
(67, 'Memphis', 'Tennessee', 'Ludington', '07318', 'Guggenheim Enhanced Equity Income Fund'),
(68, 'Reading', 'Pennsylvania', 'Eliot', '8370', 'The Joint Corp.'),
(69, 'West Hartford', 'Connecticut', 'Paget', '67986', 'Oceaneering International, Inc.'),
(70, 'Silver Spring', 'Maryland', 'Redwing', '50', 'BlueLinx Holdings Inc.'),
(71, 'Omaha', 'Nebraska', 'Eagan', '8213', 'The Cheesecake Factory Incorporated'),
(72, 'Madison', 'Wisconsin', 'Mallard', '3', 'Thor Industries, Inc.'),
(73, 'Jacksonville', 'Florida', 'Duke', '018', 'ProPhase Labs, Inc.'),
(74, 'Augusta', 'Georgia', 'Del Sol', '5637', 'Nuveenn Intermediate Duration Quality Municipal Term Fund'),
(75, 'Memphis', 'Tennessee', 'Oneill', '83', 'Minerals Technologies Inc.'),
(76, 'Tampa', 'Florida', 'Mockingbird', '0', 'Omeros Corporation'),
(77, 'Port Washington', 'New York', 'Starling', '5739', 'Colony NorthStar, Inc.'),
(78, 'Alexandria', 'Virginia', 'Larry', '11680', 'Aralez Pharmaceuticals Inc.'),
(79, 'Arlington', 'Virginia', 'Lake View', '38', 'KB Home'),
(80, 'Charleston', 'West Virginia', 'Glendale', '761', 'Stonegate Bank'),
(81, 'Naples', 'Florida', 'Goodland', '44', 'Eaton Vance Tax-Managed Buy-Write Income Fund'),
(82, 'Joliet', 'Illinois', 'Twin Pines', '054', 'Gabelli Equity Trust, Inc. (The)'),
(83, 'San Diego', 'California', 'Shasta', '0222', 'Conyers Park Acquisition Corp.'),
(84, 'Philadelphia', 'Pennsylvania', 'Browning', '864', 'DHX Media Ltd.'),
(85, 'Monroe', 'Louisiana', 'Summerview', '3', 'The Gabelli Healthcare & Wellness Trust'),
(86, 'Richmond', 'Virginia', 'Moose', '63581', 'FlexShares STOXX Global ESG Impact Index Fund'),
(87, 'Columbia', 'South Carolina', 'Mayer', '57435', 'Agnico Eagle Mines Limited'),
(88, 'Schaumburg', 'Illinois', 'Lukken', '083', 'Stag Industrial, Inc.'),
(89, 'Philadelphia', 'Pennsylvania', 'Commercial', '93545', 'Barnes & Noble Education, Inc'),
(90, 'San Bernardino', 'California', 'Glendale', '353', 'Verizon Communications Inc.'),
(91, 'Huntington', 'West Virginia', 'Mitchell', '77294', 'Retail Properties of America, Inc.'),
(92, 'Shreveport', 'Louisiana', 'Kensington', '26', 'Barington/Hilco Acquisition Corp.'),
(93, 'Austin', 'Texas', 'Union', '75', 'NanoString Technologies, Inc.'),
(94, 'Springfield', 'Virginia', 'Butternut', '5', 'Aaron\'s,  Inc.'),
(95, 'Spring', 'Texas', 'Northview', '2', 'Royal Bank Of Canada'),
(96, 'Columbus', 'Ohio', 'Carioca', '0', 'MaxLinear, Inc'),
(97, 'Canton', 'Ohio', 'Butternut', '11', 'Bank of America Corporation'),
(98, 'San Antonio', 'Texas', 'Cottonwood', '2056', 'Silver Run Acquisition Corporation II'),
(99, 'Santa Monica', 'California', 'Holy Cross', '18', 'AcelRx Pharmaceuticals, Inc.'),
(100, 'Washington', 'District of Columbia', 'Cherokee', '17', 'Parker-Hannifin Corporation');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--

CREATE TABLE `idioma` (
  `idIdiomas` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `codigo_idioma` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `idLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `idioma`
--

INSERT INTO `idioma` (`idIdiomas`, `nome`, `codigo_idioma`, `idLivro`) VALUES
(155, 'Português', 'PT-BR', 1),
(156, 'Português', 'PT-BR', 2),
(157, 'Português', 'PT-BR', 3),
(158, 'Português', 'PT-BR', 4),
(159, 'Português', 'PT-BR', 5),
(160, 'Português', 'PT-BR', 6),
(161, 'Português', 'PT-BR', 7),
(162, 'Português', 'PT-BR', 8),
(163, 'Português', 'PT-BR', 9),
(164, 'Português', 'PT-BR', 10),
(165, 'Português', 'PT-BR', 11),
(166, 'Português', 'PT-BR', 12),
(167, 'Português', 'PT-BR', 13),
(168, 'Português', 'PT-BR', 14),
(169, 'Português', 'PT-BR', 15),
(170, 'Português', 'PT-BR', 16),
(171, 'Português', 'PT-BR', 17),
(172, 'Português', 'PT-BR', 18),
(173, 'Português', 'PT-BR', 22),
(174, 'Português', 'PT-BR', 23),
(175, 'Português', 'PT-BR', 24),
(176, 'Português', 'PT-BR', 25),
(177, 'Português', 'PT-BR', 26),
(178, 'Português', 'PT-BR', 27),
(179, 'Português', 'PT-BR', 28),
(180, 'Português', 'PT-BR', 29),
(181, 'Português', 'PT-BR', 30),
(182, 'Inglês', 'EN-US', 1),
(183, 'Inglês', 'EN-US', 2),
(184, 'Inglês', 'EN-US', 3),
(185, 'Inglês', 'EN-US', 4),
(186, 'Inglês', 'EN-US', 5),
(187, 'Inglês', 'EN-US', 6),
(188, 'Inglês', 'EN-US', 7),
(189, 'Inglês', 'EN-US', 8),
(190, 'Inglês', 'EN-US', 9),
(191, 'Inglês', 'EN-US', 10),
(192, 'Inglês', 'EN-US', 11),
(193, 'Inglês', 'EN-US', 12),
(194, 'Inglês', 'EN-US', 13),
(195, 'Inglês', 'EN-US', 14),
(196, 'Inglês', 'EN-US', 15),
(197, 'Inglês', 'EN-US', 16),
(198, 'Inglês', 'EN-US', 17),
(199, 'Inglês', 'EN-US', 18),
(200, 'Inglês', 'EN-US', 22),
(201, 'Inglês', 'EN-US', 23),
(202, 'Inglês', 'EN-US', 24),
(203, 'Inglês', 'EN-US', 25),
(204, 'Inglês', 'EN-US', 26),
(205, 'Inglês', 'EN-US', 27),
(206, 'Inglês', 'EN-US', 28),
(207, 'Inglês', 'EN-US', 29),
(208, 'Inglês', 'EN-US', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitor`
--

CREATE TABLE `leitor` (
  `idLeitor` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `leitor`
--

INSERT INTO `leitor` (`idLeitor`, `nome`, `data_nasc`, `email`, `rg`, `cpf`, `idEndereco`, `idTelefone`) VALUES
(1, 'Desiree', '1975-09-10', 'ddesseine0@weather.com', '9293694352', '2343606811', 46, 89),
(2, 'Rachael', '1973-07-10', 'rstride1@canalblog.com', '5933685305', '9890393697', 42, 57),
(3, 'Leonanie', '1988-02-16', 'ldilnot2@geocities.com', '6904301732', '4621932446', 50, 58),
(4, 'Roseline', '2008-03-22', 'rlenglet3@hc360.com', '0777189143', '4904806077', 42, 84),
(5, 'Mable', '1974-03-25', 'mlagne4@prlog.org', '3349767117', '8478082778', 15, 55),
(6, 'Godiva', '1989-03-07', 'gamis5@blogtalkradio.com', '6003758651', '3614989925', 50, 55),
(7, 'Katuscha', '1999-11-20', 'kscarlett6@sogou.com', '7302752966', '7245617546', 37, 54),
(8, 'Mead', '1982-04-13', 'mbott7@wikia.com', '0224195239', '7860848244', 43, 52),
(9, 'Serene', '1985-07-01', 'svogeller8@google.co.jp', '6739075719', '4442121923', 14, 59),
(10, 'Kathrine', '1997-04-25', 'kvodden9@dmoz.org', '8233255521', '9781814489', 26, 52),
(11, 'Timi', '1980-02-03', 'tschouthedea@japanpost.jp', '1905848749', '5695375843', 35, 51),
(12, 'Flore', '1992-01-19', 'fhilleyb@ucsd.edu', '3282197039', '9082047268', 18, 83),
(13, 'Loralee', '1984-02-21', 'lswindallc@list-manage.com', '7904490277', '0569744709', 45, 55),
(14, 'Lilyan', '1998-10-31', 'lfergysond@ameblo.jp', '7234983635', '5275838964', 21, 75),
(15, 'Evie', '2008-08-10', 'eubeee@paginegialle.it', '3185572807', '5403492143', 44, 78),
(16, 'Alvina', '1982-01-06', 'abeiningf@acquirethisname.com', '8848425615', '7843114491', 33, 53),
(17, 'Rozelle', '1994-01-25', 'rdebenedittig@yelp.com', '6424964940', '8511231870', 11, 67),
(18, 'Kriste', '1978-06-21', 'kkobelth@wp.com', '4118305542', '5213419402', 33, 94),
(19, 'Jania', '2003-12-24', 'jdundendalei@alibaba.com', '1722287632', '1782571167', 38, 54),
(20, 'Darsey', '1997-07-28', 'ddudingj@economist.com', '9344826021', '4618977949', 22, 85),
(21, 'Euphemia', '1999-01-17', 'emacdunlevyk@mapquest.com', '6117488599', '3787159711', 35, 73),
(22, 'Leonore', '1992-09-07', 'lbashaml@geocities.jp', '2726086187', '6682617534', 30, 72),
(23, 'Valentia', '1993-05-06', 'vspillerm@businesswire.com', '4633589237', '0183220994', 36, 51),
(24, 'Aubry', '1994-09-06', 'amalloyn@unicef.org', '8769703469', '7822398059', 44, 96),
(25, 'Gaby', '2007-10-13', 'gthodyo@theglobeandmail.com', '9017958685', '4273423286', 6, 75),
(26, 'Mollee', '1986-12-27', 'mairdsp@typepad.com', '1461914019', '2524931617', 7, 81),
(27, 'Robinett', '1994-08-16', 'rheersq@imdb.com', '6843021700', '4576678124', 19, 59),
(28, 'Josephine', '2002-07-17', 'jcarmodyr@skype.com', '9795084372', '5168942660', 39, 70),
(29, 'Brianna', '1971-11-12', 'btaigs@mysql.com', '7150780733', '0570116090', 43, 69),
(30, 'Ailee', '2004-03-19', 'aboyst@nydailynews.com', '2296551432', '1736694375', 17, 81),
(31, 'Kandy', '1987-05-31', 'kpawlingu@tiny.cc', '3977809687', '3472476664', 1, 91),
(32, 'Lanita', '1986-04-21', 'lglidev@reuters.com', '5760710672', '1513970275', 47, 80),
(33, 'Sharleen', '1974-10-16', 'sreysonw@answers.com', '8330724840', '3848030969', 36, 94),
(34, 'Melania', '2010-01-12', 'mjanuszkiewiczx@shinystat.com', '3724765134', '9773102432', 28, 86),
(35, 'Molly', '2009-02-02', 'mlowdery@discovery.com', '0370191560', '0769407471', 44, 84),
(36, 'Charlotte', '1990-02-09', 'cblencowez@nydailynews.com', '8486322669', '3705978896', 19, 67),
(37, 'Rebbecca', '1980-10-17', 'rmounsie10@liveinternet.ru', '3823147242', '7788718998', 44, 57),
(38, 'Anabelle', '2001-05-03', 'ateather11@bizjournals.com', '7211416882', '8845931161', 27, 100),
(39, 'Penelopa', '1971-03-15', 'pswift12@pinterest.com', '2207907325', '8507740618', 26, 60),
(40, 'Flo', '1988-04-24', 'frendle13@patch.com', '1170113591', '6454664112', 19, 73),
(41, 'Allene', '2000-08-15', 'awixey14@cornell.edu', '4274528529', '1383366160', 21, 82),
(42, 'Deny', '1996-09-28', 'dfoskin15@wordpress.com', '7791365189', '1517774853', 27, 98),
(43, 'Johna', '2002-04-02', 'jbatting16@arizona.edu', '5711090631', '1517026431', 23, 91),
(44, 'Winnie', '1985-11-05', 'wfevier17@skyrock.com', '0022086625', '7489119952', 10, 64),
(45, 'Quintilla', '2002-01-25', 'qjakobssen18@mashable.com', '9160799749', '7142810556', 6, 68),
(46, 'Leone', '1994-06-28', 'larchdeckne19@sbwire.com', '0088305147', '1295645920', 36, 99),
(47, 'Neala', '1993-03-23', 'ndubber1a@eventbrite.com', '9570303174', '6587855482', 8, 70),
(48, 'Vivian', '1980-08-27', 'vmenichelli1b@globo.com', '0150298323', '6766243260', 28, 76),
(49, 'Nicolina', '2005-11-13', 'netoile1c@bigcartel.com', '0978155734', '4783827680', 50, 91),
(50, 'Xylina', '1992-04-29', 'xleedes1d@jalbum.net', '9183030948', '0762166355', 11, 90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `idLivro` int(11) NOT NULL,
  `título` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descrição` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `anoLancamento` int(11) NOT NULL,
  `edicao` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `idEditora` int(11) NOT NULL,
  `genero` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`idLivro`, `título`, `descrição`, `anoLancamento`, `edicao`, `idAutor`, `idEditora`, `genero`) VALUES
(1, 'A Metamorfose', 'A Metamorfose é uma novela escrita por Franz Kafka, publicada pela primeira vez em 1915. Veio a ser o texto mais conhecido, estudado e citado da obra de Kafka. Apesar de ter sido publicada em 1915, foi escrita em novembro de 1912 e concluída em vinte dias.', 1915, 1, 10, 55, 'Conto, Novela, Literatura fantástica, Ficção Absurdista'),
(2, 'Solo Leveling', 'Dez anos atrás, depois do “Portal” que conecta o mundo real com um mundo de monstros se abriu, algumas pessoas comuns receberam o poder de caçar os monstros do portal. Eles são conhecidos como caçadores. Porém, nem todos os caçadores são fortes. ', 2018, 1, 54, 54, 'Action, Fantasy'),
(3, 'Harry Potter e a Pedra Filosofal', 'O livro conta a história de Harry Potter, um órfão criado pelos tios que descobre, em seu décimo primeiro aniversário, que é um bruxo.', 1997, 5, 1, 52, 'Romance, Fantasia, Literatura infantil, Literatura fantástica, Alta fantasia'),
(4, 'Harry Potter e a Câmara Secreta', 'É o segundo livro da série Harry Potter. O livro se envolve em torno da lenda de uma câmara secreta localizada na Escola de Magia e Bruxaria de Hogwarts, na qual abriga um monstro que matará a todos os bruxos que não provém de famílias mágicas. Diversos alunos aparecem petrificados e Harry Potter, além de ser apontado como o maior suspeito, tenta desvendar e resolver o mistério junto de seus melhores amigos, Rony Weasley e Hermione Granger.', 1998, 2, 1, 52, 'Romance, Literatura fantástica'),
(5, 'Harry Potter e o Prisioneiro de Azkaban', 'Daquela vez Harry Potter não conseguira conter-se. Quebrara uma das regras principais de Hogwarts - não exercer técnicas de feitiçaria fora dos muros da escola. Mas aquela detestável Tia Marge merecia permanecer umas boas horas suspensa no tecto da sala dos Dursleys inchada como um balão. Além disso já faltavam poucos dias para recomeçar as aulas. Mas o seu terceiro ano não irá ser fácil.', 2002, 3, 1, 52, 'Romance, Literatura fantástica'),
(6, 'Harry Potter e o Cálice de Fogo', 'Harry Potter nem quer acreditar na sua sorte! Afinal não vai ter de aturar os Dursleys até ao início do seu quarto ano em Hogwarts. Graças à taça Mundial de Quidditch vai passar os últimos quinze dias de férias na companhia dos Weasleys e do seu amigo Ron. Mas a verdade é que nem tudo vai correr pelo melhor para o nosso herói. Quando Harry começa a sentir a sua cicatriz a doer terrivelmente, sabe que Lord Voldemort está de novo a rondá-lo e a ganhar poder.', 2000, 4, 1, 52, 'Aventura, Fantasia'),
(7, 'Harry Potter e a Ordem da Fénix', 'Harry Potter está prestes a começar o seu quinto ano na Escola de Magia e Feitiçaria de Hogwarts. É, aliás, com ansiedade que aguarda o regresso às aulas para rever os seus amigos Ron e Hermione que, estranhamente, deram muito poucas notícias durante o Verão. Contudo, o que Harry vai descobrir neste novo ano em Hogwarts vai transformar radicalmente todo o seu mundo e a sua vida.', 2003, 3, 1, 52, 'Aventura, Fantasia'),
(8, 'Harry Potter e o Príncipe Misterioso', 'Voldemort está mesmo de volta! Esta é a terrível confirmação que agita o início do sexto ano na escola de feitiçaria de Hogwarts. O crescente poder maléfico de Voldemort e do seu vasto exército de Devoradores da Morte é cada vez mais visível, não só no mundo da Magia como no mundo dos Muggles. Agora, mais do que nunca, é necessário reunir forças para combater o mal, e, para isso, Harry e Dumbledore visitam o passado misterioso de Voldemort e o coração da magia negra.', 2005, 3, 1, 52, 'Aventura, Fantasia'),
(9, 'Harry Potter e as Relíquias da Morte', 'Após se encarregarem da tarefa do falecido diretor da Escola de Magia e Bruxaria de Hogwarts, Alvo Dumbledore em encontrar e destruir todas as Horcruxes criadas pelo maior bruxo das trevas Voldemort, o livro narra a jornada do personagem principal, o jovem Harry, e seus melhores amigos Rony e Hermione, que abandonaram seu último ano letivo na escola de feitiçaria para cumprirem tal dever. Ao passo que o confronto final entre Harry e Voldemort se aproxima.', 2007, 1, 1, 52, 'Romance, Mistério, Suspense, Ficção, Literatura fantástica, Ficção de aventura'),
(10, 'Monstros Fantásticos e Onde Encontrá-los', 'É um sumptuoso compêndio de criaturas mágicas, que vão desde a Acromântula ao Yeti, a dez raças diferentes de dragões, todos maravilhosamente ilustrados a cores. Esta nova edição atualizada inclui a classificação de seis novas magníficas criaturas que habitam a América do Norte e um novo prefácio de J.K. Rowling, isto é, Newt Scamander.', 2017, 4, 1, 52, 'Fantasia, Ficção Juvenil, Romance'),
(11, 'O Hobbit', 'O livro segue a busca do hobbit caseiro Bilbo Bolseiro para conquistar uma parte do tesouro guardado pelo dragão Smaug. A jornada de Bilbo o leva de um ambiente rural alegre a um território mais sinistro.', 1937, 1, 12, 55, 'Romance, Fantasia, Literatura infantil, Épico, Literatura fantástica, Alta fantasia'),
(12, 'O Senhor dos Anéis', 'Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso, o hobbit Frodo tem um caminho árduo pela frente, onde encontra perigo, medo e seres bizarros. Ao seu lado para o cumprimento desta jornada, ele aos poucos pode contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando nove pessoas que formam a Sociedade do Anel.', 1954, 1, 12, 55, 'Romance, Fantasia, Literatura infantil, Épico, Literatura fantástica, Alta fantasia'),
(13, 'O Silmarillion', 'Este livro fala sobre a divindade suprema, Ilúvatar (Eru), e sobre a criação do mundo.', 1977, 1, 12, 55, 'Romance, Fantasia, Literatura infantil, Épico, Literatura fantástica, Alta fantasia'),
(14, 'Os Filhos de Húrin', 'Seis mil anos antes de o Um Anel ser destruído, a Terra-média é assombrada por Morgoth, o Primeiro Senhor Sombrio, senhor e mestre de Sauron. Húrin, um poderoso guerreiro da raça humana se recusa a trair os Elfos e, por isso, ele e sua família são amaldiçoados. Assim, os destinos de Túrin e de sua irmã Niënor são tragicamente entrelaçados.', 2007, 1, 12, 55, 'Romance, Fantasia, Literatura infantil, Épico, Literatura fantástica, Alta fantasia'),
(15, 'Beren e Lúthien', 'Beren é um homem mortal que vive apaixonado por Lúthien, uma bela criatura élfica imortal. Eis o problema: o pai de Lúthien, líder dos Elfos, não aprova a relação. Por isso, impõe a Beren a missão impossível de roubar uma preciosa joia ao mais poderoso representante do mal, Morgoth. Seria esta a única forma de Beren receber permissão para casar com a sua apaixonada.', 2017, 1, 12, 55, 'Romance, Fantasia, Literatura infantil, Épico, Literatura fantástica, Alta fantasia'),
(16, 'O Nome do Vento', 'Da infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo de aprender o mistério por trás da arte de nomear as coisas.', 2007, 1, 56, 52, 'Romance, Fantasia, Alta fantasia, Literatura fantástica, Fantasia heroica'),
(17, 'O Temor do Sábio', 'O temor do sábio dá continuidade à impressionante história de Kvothe, o Arcano, o Sem-Sangue, o Matador do Rei.Quando é aconselhado a abandonar seus estudos na Universidade por um período, por causa de sua rivalidade com um membro da nobreza local, Kvothe é obrigado a tentar a vida em outras paragens.', 2011, 1, 56, 52, 'Romance, Fantasia, Alta fantasia, Literatura fantástica, Fantasia heroica'),
(18, 'A Guerra dos Tronos', 'Lorde Eddard Stark é patriarca da Casa Stark, uma das grandes casas nobres dos Sete Reinos de Westeros, e o Guardião do Norte. O Rei Robert Baratheon, amigo de infância de Eddard, viaja até Winterfell com sua família e corte para oferecer a Eddard o cargo de Mão do Rei.', 1996, 1, 19, 52, 'Drama, Ação, Suspense, Aventura, aÉpico, Fantasia medieval'),
(22, 'A Fúria dos Reis', 'A Clash of Kings começa onde A Game of Thrones terminou. Os Sete Reinos de Westeros estão em uma guerra civil, enquanto a Patrulha da Noite monta uma força de reconhecimento ao Norte da Muralha para investigar as pessoas misteriosas. Enquanto isso, no distante Leste, Daenerys Targaryen continua sua busca para retornar e conquistar os Sete Reinos.', 1998, 1, 19, 52, 'Drama, Ação, Suspense, Aventura, aÉpico, Fantasia medieval'),
(23, 'A Tormenta de Espadas', 'A Storm of Swords retoma a história um pouco antes do final do seu antecessor, A Clash of Kings. Os Sete Reinos ainda estão lutando a Guerra dos Cinco Reis, com os restantes Robb Stark, Balon Greyjoy, Joffrey Baratheon e Stannis Baratheon lutando para garantir suas coroas.', 2000, 1, 19, 52, 'Drama, Ação, Suspense, Aventura, aÉpico, Fantasia medieval'),
(24, 'O Festim dos Corvos', 'O Festim do Corvos começa onde A Tormenta de Espadas termina e ocorre simultaneamente com os eventos do livro seguinte, A Dança dos Dragões. A Guerra dos Cinco Reis parece ter terminado. Robb Stark, Joffrey Baratheon, Renly Baratheon e Balon Greyjoy estão mortos. Rei Stannis Baratheon fugiu para a Muralha, onde Jon Snow se tornou Senhor Comandante da Patrulha da Noite.', 2005, 1, 19, 52, 'Drama, Ação, Suspense, Aventura, aÉpico, Fantasia medieval'),
(25, 'A Dança dos Dragões', 'Jon Snow foi eleito o 998º Senhor Comandante da Patrulha da Noite mas tem inimigos dentro da própria Patrulha e além da Muralha. Enquanto isso, muito ao norte da Muralha, a busca de Bran Stark pelo Corvo de Três Olhos o leva para uma caverna secreta onde vivem os últimos Filhos da Floresta, os místicos habitantes originais de Westeros.', 2011, 1, 19, 52, 'Drama,Ação,Suspense,Aventura,Épico,Fantasia medieval'),
(26, 'Hunter × Hunter', 'Doze anos antes do início da história, Ging Freecss deixou seu filho Gon nas mãos de sua tia Mito na Ilha da Baleia. Gon, que sempre acreditou que seus pais tinham morrido, descobre um dia graças ao aprendiz de seu pai, Kite, que ele ainda está vivo e se tornou um dos melhores Hunters.', 1998, 1, 38, 51, 'Ficção de aventura, Fantasia, Artes marciais'),
(27, 'Naruto', 'Naruto é uma série de mangá escrita e ilustrada por Masashi Kishimoto, que conta a história de Naruto Uzumaki, um jovem ninja que constantemente procura por reconhecimento e sonha em se tornar Hokage, o ninja líder de sua vila.', 1997, 1, 37, 51, 'Ficção de aventura, Fantasia, Artes marciais'),
(28, 'Dragon Ball', 'A história de Dragon Ball começa com Son Goku, um garoto ingênuo e puro com cauda de macaco e uma força extraordinária. Ele mora sozinho após a morte de seu avô adotivo em uma montanha chamada Paozu. Um dia ele conhece Bulma, uma garota muito inteligente da cidade, que estava em busca das sete Esferas do Dragão. Persuadido, Goku concorda em ajudar Bulma a encontrar as Esferas. Os dois partem em uma longa jornada, durante a qual eles fazem muitos amigos.', 1984, 1, 36, 51, 'Ficção de aventura, Fantasia, Artes marciais'),
(29, 'Bleach', 'Bleach segue as aventuras de Ichigo Kurosaki que após ganhar os poderes de um Ceifeiro de Almas, através de uma Ceifeira de Almas, Rukia Kuchiki.', 2001, 1, 39, 51, 'Ficção de aventura, Ficção supernatural'),
(30, 'Fairy Tail', 'Lucy Heartfilia é uma jovem maga de 17 anos que deseja tornar-se uma maga evoluída. Para isso, ela terá que entrar em uma guilda de magos, para ganhar dinheiro para sobreviver e também para aprimorar suas habilidades. Assim sendo, ela chega até a cidade de Hargeon, onde encontra Natsu Dragneel e Happy.', 2006, 1, 41, 51, 'Ficção de aventura, Fantasia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `multa`
--

CREATE TABLE `multa` (
  `idmulta` int(11) NOT NULL,
  `idEmprestimo` int(11) NOT NULL,
  `valorMulta` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `telefone` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idTelefone`, `telefone`) VALUES
(1, '7775253571'),
(2, '5902045780'),
(3, '4665332442'),
(4, '8662872417'),
(5, '2659115459'),
(6, '1378171452'),
(7, '7355291819'),
(8, '2275702196'),
(9, '9267518124'),
(10, '5438031280'),
(11, '7372628002'),
(12, '3615580995'),
(13, '8399271425'),
(14, '9813329057'),
(15, '7734496351'),
(16, '8121101137'),
(17, '6227258984'),
(18, '4781172481'),
(19, '5913418704'),
(20, '1142644364'),
(21, '4777988056'),
(22, '1714395856'),
(23, '7228710262'),
(24, '4918847956'),
(25, '8783574695'),
(26, '5494860095'),
(27, '8644475022'),
(28, '4159614004'),
(29, '8555213804'),
(30, '2432758480'),
(31, '5462888859'),
(32, '5536087298'),
(33, '9772787371'),
(34, '8557492758'),
(35, '8705017736'),
(36, '9946679797'),
(37, '9979859388'),
(38, '2734237124'),
(39, '5314783784'),
(40, '2534894725'),
(41, '2884124846'),
(42, '8213985449'),
(43, '5372617144'),
(44, '3476695390'),
(45, '8182521614'),
(46, '8954561432'),
(47, '7673686205'),
(48, '1661241822'),
(49, '6631837956'),
(50, '3307470642'),
(51, '8941035722'),
(52, '9476595095'),
(53, '2274498728'),
(54, '5115705684'),
(55, '9614126563'),
(56, '3205652646'),
(57, '3345739732'),
(58, '5582679892'),
(59, '6726141534'),
(60, '6593549910'),
(61, '1667108428'),
(62, '8865785429'),
(63, '7746269470'),
(64, '7763504981'),
(65, '2614110632'),
(66, '7225712880'),
(67, '6312067217'),
(68, '5781133694'),
(69, '2105665008'),
(70, '9017448491'),
(71, '6079653535'),
(72, '1674839542'),
(73, '5862720332'),
(74, '7968903782'),
(75, '1808355839'),
(76, '4985006625'),
(77, '8427193376'),
(78, '1154779753'),
(79, '3803126998'),
(80, '7445358900'),
(81, '6908122251'),
(82, '5113414391'),
(83, '1104800835'),
(84, '2945867184'),
(85, '6909571058'),
(86, '1497804016'),
(87, '8461609087'),
(88, '6691677326'),
(89, '2038466630'),
(90, '4242586855'),
(91, '3404857260'),
(92, '3139947770'),
(93, '7034467636'),
(94, '7142844784'),
(95, '3596430493'),
(96, '7237256969'),
(97, '2723250205'),
(98, '4016025139'),
(99, '9371488308'),
(100, '8792854287');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`idEditora`),
  ADD KEY `fk_telefoneEditora_idx` (`idTelefone`),
  ADD KEY `fk_enderecoEditora_idx` (`idEndereco`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`idEmprestimo`),
  ADD KEY `fk_livro_idx` (`idLivro`),
  ADD KEY `fk_leitor_idx` (`idLeitor`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Indexes for table `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdiomas`),
  ADD KEY `fk_livroIdioma_idx` (`idLivro`);

--
-- Indexes for table `leitor`
--
ALTER TABLE `leitor`
  ADD PRIMARY KEY (`idLeitor`),
  ADD KEY `f_leitorEndereco_idx` (`idEndereco`),
  ADD KEY `fk_leitorTelefone_idx` (`idTelefone`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idLivro`),
  ADD KEY `idAutor_idx` (`idAutor`),
  ADD KEY `idEditora_idx` (`idEditora`);

--
-- Indexes for table `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`idmulta`),
  ADD KEY `fk_emprestimoMulta_idx` (`idEmprestimo`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `idEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `idEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdiomas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `leitor`
--
ALTER TABLE `leitor`
  MODIFY `idLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `multa`
--
ALTER TABLE `multa`
  MODIFY `idmulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `editora`
--
ALTER TABLE `editora`
  ADD CONSTRAINT `fk_enderecoEditora` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `fk_telefoneEditora` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`);

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `fk_leitor` FOREIGN KEY (`idLeitor`) REFERENCES `leitor` (`idLeitor`),
  ADD CONSTRAINT `fk_livro` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`idLivro`);

--
-- Limitadores para a tabela `idioma`
--
ALTER TABLE `idioma`
  ADD CONSTRAINT `fk_livroIdioma` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`idLivro`);

--
-- Limitadores para a tabela `leitor`
--
ALTER TABLE `leitor`
  ADD CONSTRAINT `f_leitorEndereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `fk_leitorTelefone` FOREIGN KEY (`idTelefone`) REFERENCES `telefone` (`idTelefone`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `idAutor` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  ADD CONSTRAINT `idEditora` FOREIGN KEY (`idEditora`) REFERENCES `editora` (`idEditora`);

--
-- Limitadores para a tabela `multa`
--
ALTER TABLE `multa`
  ADD CONSTRAINT `fk_emprestimoMulta` FOREIGN KEY (`idEmprestimo`) REFERENCES `emprestimo` (`idEmprestimo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
