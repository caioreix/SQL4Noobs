/*oficina*/

  DROP DATABASE IF EXISTS oficina;
CREATE DATABASE oficina;
   USE oficina;

/*TABLES*/

CREATE TABLE proprietarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  cpf CHAR(11) UNIQUE NOT NULL
);

CREATE TABLE modelos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE cores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL
);

CREATE TABLE carros (
  id INT PRIMARY KEY AUTO_INCREMENT,
  chassi CHAR(17) UNIQUE NOT NULL,
  placa CHAR(8) UNIQUE NOT NULL,
  proprietarios_id INT,
  modelos_id INT
);

CREATE TABLE telefones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  tipo CHAR(1) NOT NULL,
  numero CHAR(14) NOT NULL,
  proprietarios_id INT
);

CREATE TABLE carros_cores (
  carros_id INT,
  cores_id INT,
  PRIMARY KEY (carros_id,cores_id)
);

/*CONSTRAINTS*/

     ALTER TABLE carros
       ADD CONSTRAINT carros_proprietarios_fk
   FOREIGN KEY(proprietarios_id)
REFERENCES proprietarios(id);

     ALTER TABLE carros
       ADD CONSTRAINT carros_modelos_fk
   FOREIGN KEY(modelos_id)
REFERENCES modelos(id);

     ALTER TABLE telefones
       ADD CONSTRAINT telefones_proprietarios_fk
   FOREIGN KEY(proprietarios_id)
REFERENCES proprietarios(id);

     ALTER TABLE carros_cores
       ADD CONSTRAINT carros_fk
   FOREIGN KEY(carros_id)
REFERENCES carros(id);

     ALTER TABLE carros_cores
       ADD CONSTRAINT cor_fk
   FOREIGN KEY(cores_id)
REFERENCES cores(id);

/*INSERTS*/

INSERT INTO proprietarios (nome,cpf)
VALUES ("Uriah Hubbard","42408287187"),("Mufutau Harvey","31859521958"),("Kenyon Barron","24303261433"),("Baxter Burks","08948292121"),("Garrison Francis","66024809916"),("Connor Fowler","96932095840"),("Austin Wyatt","53239881003"),("Branden Woodard","26649257998"),("William Ferrell","10885417678"),("Harding Willis","69824552631"),("Devin Nguyen","84576830837"),("Jacob Simon","16145300735"),("Wing Cox","50953503151"),("Duncan Whitney","13920123462"),("Kamal Woodard","74567214310"),("Kareem Tate","55932451618"),("Chaney Keller","57388541024"),("Gage Nelson","24566289881"),("Marsden Osborn","93050093331"),("Bradley Livingston","34060536372"),("Christian Underwood","51604240959"),("Reese Ferguson","83435846203"),("Hashim Short","75752698221"),("Nolan Bryant","96927437698"),("Hyatt Guerra","75681941462"),("Arsenio Sykes","12234994107"),("Felix Burke","59695971607"),("Abbot Crosby","86038829484"),("Hamilton Baker","49082624226"),("Chaney Garrison","61975434569"),("Noah Malone","75180520790"),("Abdul Mcgee","41431520633"),("Kieran Solomon","61419057945"),("Galvin Ratliff","24040404548"),("Kevin Howell","12127583758"),("Acton Potts","37813194884"),("Benjamin Osborn","11691023973"),("Mannix Le","68292134488"),("Kirk Hobbs","52969407786"),("Nathan Sanford","53325965046"),("Dolan Golden","02150054287"),("Steel Holder","65230644899"),("Gareth Becker","72736448886"),("Kane Gilmore","13697030967"),("Aladdin Ramirez","18915841411"),("Randall Boyd","30519306532"),("Seth Goff","27075412752"),("Channing Mays","77603362219"),("Lionel Merrill","01903138590"),("Howard Berg","59557200201"),
       ("Graiden Mcgowan","08562758528"),("Nehru Murray","87946092843"),("Marsden Robertson","56920670913"),("Aristotle Nieves","85433838881"),("Christian Hunt","32618317527"),("Dane Strong","81381513636"),("Cullen Dennis","28337374470"),("Nicholas Hudson","49735967998"),("Amir Terry","59915522661"),("Rafael Wilkerson","73776136189"),("Basil Mason","19322505081"),("Hamilton Olson","79778819612"),("Denton Howard","47665906115"),("Kenneth Harrell","53311758233"),("Gannon Gardner","57108738495"),("Otto Franks","90135804200"),("Calvin Morton","24721415016"),("Tanek Powell","73798018112"),("Rigel Schultz","82516238470"),("Fletcher Frost","59709483955"),("Rigel Burch","76071934109"),("Thane Dorsey","53246048299"),("Matthew Hudson","99889689536"),("Donovan Nieves","12285008507"),("Wayne Mendoza","38051128677"),("Jasper Pennington","28356087331"),("Jack Mejia","85801535544"),("Dieter Cobb","63392294320"),("Russell Carney","33410267791"),("Burke Parker","66933401103"),("Wade Fleming","67896639099"),("Hilel Valencia","61665197513"),("Ezra Turner","83072476719"),("Christopher Malone","36252052227"),("Ciaran Frederick","77946101006"),("Gareth Charles","17091388845"),("Ferdinand Gates","96489887486"),("Leo Orr","29998757829"),("Wallace Poole","70206029812"),("Demetrius Wade","67847148454"),("Igor Mcguire","22393627249"),("Grady Lara","92280634007"),("Xavier Conrad","74533414747"),("Jacob Alvarez","27075836094"),("Channing Moss","73030210907"),("Zahir Terry","51392345651"),("Hu Warren","25939740015"),("Caleb Lott","19384865278"),("Logan Orr","44880663382"),("Dieter Powell","58625864072");

INSERT INTO modelos (nome)
VALUES ('Jeep Renegade'),('Jeep Compass'),('Hyundai Creta'),('Nissan Kicks'),('Honda HR-V'),('VW T Cross'),('Ford EcoSport'),('Renault Captur'),('Renault Duster'),('Citroen C4 Cactus'),('GM Tracker'),('Toyota Hilux Sw4'),('VW Tiguan'),('Honda WR-V'),('Golf'),('Chery Tiggo 5X'),('Gol G5'),('Hyundai Ix35'),('GM Equinox'),('Bmw X1'),('Toyota Rav4'),('Kia Sportage'),('Mitsubishi ASX'),('Hyundai Tucson'),('Volvo Xc60'),('GM Trailblazer'),('Land Rover Discovery'),('Citroen Aircross'),('M.Benz Classe GLA'),('Volvo XC40'),('Peugeot'),('Mitsubishi Eclipse'),('Mitsubishi Pajero'),('Chery Tiggo'),('Mitsubishi Outlander'),('Audi Q5'),('Suzuki Jimny'),('Audi Q3'),('Suzuki Vitara'),('Troller T4'),('Fiat Strada'),('Fiat Toro'),('VW Saveiro'),('Toyota Hilux'),('GM S10'),('Ford Ranger'),('VW Amarok'),('Fiat Fiorino'),('Renault Oroch'),('GM Montana');

INSERT INTO cores (nome)
VALUES ('Branco'),('Preto'),('Cinza'),('Prata'),('Vermelho'),('Azul'),('Marrom'),('Verde'),('Dourado'),('Amarelo'),('Laranja');

INSERT INTO carros (chassi,placa,proprietarios_id,modelos_id)
VALUES ("0C4E38F69AA9143C6","YWU-9833",1,1),("083D21DE200770E81","YKB-7945",2,2),("F1324B91E596B8BFD","BHQ-3097",3,3),("481251C7E8908B320","ENM-2244",4,4),("622340647EFC3F337","NPQ-1590",5,5),("C1DE51D24FB8ACBE7","MJC-9232",6,6),("19D3A9B562494CF0A","IWP-1685",7,7),("7E49EA10DF9E57747","BBO-3174",8,8),("1B13C3DAF9DFBD345","IJT-5644",9,9),("71AC7EC2BB83FA31D","IAJ-7015",10,10),("2748BD7FAA40F9590","EHB-7360",11,11),("8DD392E0EB50B9D52","QRR-2872",12,12),("34DF087DA8B8BEED7","BVR-1594",13,13),("FD1F83F3E29726BBD","JPI-6053",14,14),("D53F3E5B984246782","RUN-7015",15,15),("69002725B8658A10F","JPU-2520",16,16),("D8EF8596AB952C178","HZR-4897",17,17),("D38DC67DE695DB3A1","ACH-8697",18,18),("0905E3E253495E0A8","ZHT-3018",19,19),("C3B40AA2542BC1294","OFY-1557",20,20),("AF9539FB24EFBEFB3","FHU-7424",21,21),("6761EF99B6F2A5D78","ETF-6308",22,22),("340786818CD183679","RKL-2019",23,23),("EC8217A915130316A","HVW-6775",24,24),("869348781E5403340","RNF-4540",25,25),("708E320EB404D539B","XBO-8857",26,26),("E47DD0441438FA48E","WXZ-7924",27,27),("C46496D7E424DD90F","REB-5026",28,28),("48E358311B6271E9B","OWD-3128",29,29),("855E67F17BB7F3D2D","GFF-1742",30,30),("991952631E75C5C44","SYB-2114",31,31),("916C62F180FCD2440","FIV-6338",32,32),("A9FCCDBB2142A2FFB","MLB-2444",33,33),("21D7CFF31726A725E","BAS-6597",34,34),("DB223A25EA979039F","XGT-5284",35,35),("12677BC34261800A2","VVN-3042",36,36),("2541CB82EE76862EE","RHU-6035",37,37),("AD8EEEADEF1BADA34","SHS-1761",38,38),("9B2A28C0E41147F5A","WAV-7952",39,39),("6FDB83C168FEC3F28","QUQ-9671",40,40),("98DEEC95F46944765","JCY-0014",41,41),("9558E83755A3F88F4","XWN-0222",42,42),("AE84B4AC93A1C93B5","TKD-8682",43,43),("8C56A3794307E6B66","MBU-6557",44,44),("8A455E9CF40335BC8","XTZ-8261",45,45),("DB1315C0A32A2D8D0","QXO-5126",46,46),("388D7F689AE8C200E","NGG-1956",47,47),("7DD7F2F8B5D956EE9","FET-5999",48,48),("FAD312D3076682348","PIJ-9543",49,49),("516C51F5A53F0618E","HOR-5628",50,50),
       ("7213F715BB8F6B31E","FUB-3305",51,1),("492E3A75FBC5CCD95","UIL-5574",52,2),("1459F4F420E471DAD","BMQ-7444",53,3),("171B79CF11F72E1E9","AUD-7238",54,4),("08503BF30947F4BCF","AYV-3671",55,5),("9ED2667EF306CA6AA","LJG-6876",56,6),("16607E41D407233B4","SIV-8679",57,7),("2D35C72465D3345CA","AHO-4013",58,8),("CE11B553D578A9C20","EWS-5926",59,9),("58247DF59390A7768","VZS-9055",60,10),("0D4B78007AC1D9031","MAQ-4254",61,11),("81B33264EEC30FB49","MNR-3912",62,12),("0F5419032048D689B","PYF-9552",63,13),("069F119F81C885F31","JUR-0410",64,14),("7A219086BC149A46C","MFY-5119",65,15),("B55EB26C31F81C413","ZWA-4979",66,16),("6750B33CCD2BB59B9","EKW-5616",67,17),("E0C099E191C48FA78","TGV-7811",68,18),("13F57DBEB4589657C","WCJ-7338",69,19),("CDFDD5E6FEEB39131","UBQ-6298",70,20),("09A345655C785470C","WIB-8978",71,21),("543BBAEFF030E3698","NJI-5057",72,22),("E156F406FAC5B49E7","IQK-0278",73,23),("A0BDA00C6345A6F06","DIN-3617",74,24),("AD9D367ACD2A67F3D","HKC-8245",75,25),("387FC81A62AE8120A","NQA-2783",76,26),("F16BA96C22397207E","RPN-7292",77,27),("005039D766E950D8D","YCG-1949",78,28),("5722D388A299F6635","PPA-0443",79,29),("6DAA23094950C6A94","GCM-8245",80,30),("DF1EB8BC871E79447","WVH-0614",81,31),("BE6158565B822AC7E","LVA-8877",82,32),("F51C401220C968CF3","MCK-3217",83,33),("F289DB9D4797C1510","SSH-5837",84,34),("9AC353862476ACCDE","KEV-4961",85,35),("A0C5CA82B47386CE9","YHK-0616",86,36),("9D78CBAFE661CDFBC","YEZ-7884",87,37),("A0D9676C42D873488","HNP-5467",88,38),("616946A864FDFF10A","HFI-5552",89,39),("38929E8F2D0739A70","LJI-5739",90,40),("7F69BB5D21156A73C","SIW-2484",91,41),("21675986C95C8142D","PRS-2212",92,42),("DD9EB6EFD31B82F7F","POA-0094",93,43),("1279E5A40D9A584A3","VSM-0853",94,44),("18277F2C525BEB95F","QLJ-9576",95,45),("61DADEB5F1551E844","PUN-0576",96,46),("C236758CC406E4ACA","EUX-7013",97,47),("4B9F90DF89C03B39F","JZO-4502",98,48),("0467275B582BDC182","ILM-1949",99,49),("E1C74B4A2B4A160C3","QQI-4832",100,50);

INSERT INTO telefones (tipo,numero,proprietarios_id)
VALUES ("F","(84) 974449242",34),("F","(38) 985738667",17),("C","(54) 969614751",87),("C","(84) 969879249",31),("C","(79) 926173700",8),("F","(39) 978642221",29),("F","(16) 916303935",54),("F","(22) 913063831",25),("C","(89) 926906263",63),("C","(41) 990576665",63),("C","(24) 919437177",92),("F","(92) 969368921",85),("F","(76) 949522961",52),("F","(74) 991418073",62),("C","(70) 983873211",24),("C","(83) 933812949",25),("C","(61) 992900068",24),("F","(54) 916495496",97),("F","(37) 912016488",93),("F","(21) 915274597",51),("C","(14) 981603911",27),("C","(85) 925010978",29),("C","(64) 931596753",67),("F","(12) 968381823",70),("F","(99) 920984115",91),("F","(80) 942345872",9),("C","(32) 937916861",26),("C","(23) 929649180",63),("C","(86) 983921357",36),("F","(78) 968557875",70);

INSERT INTO carros_cores (carros_id,cores_id)
VALUES (34,4),(23,10),(5,4),(88,4),(51,11),(71,8),(13,7),(68,11),(71,5),(34,7),(15,4),(44,3),(26,11),(33,6),(56,2),(44,2),(77,5),(75,7),(23,3),(69,8),(82,2),(66,11),(14,10),(66,6),(46,5),(64,4),(92,1),(20,10),(33,8),(31,4),(80,9),(55,10),(17,3),(72,4),(69,4),(86,9),(97,10),(21,3),(8,11),(49,4),(41,2),(29,2),(70,6),(39,8),(39,6),(20,5),(12,8),(81,10),(14,4),(30,6),(65,7),(58,7),(97,5),(35,8),(75,6),(3,11),(55,6),(32,1),(41,10),(16,9),(9,4),(37,8),(80,7),(96,1),(47,11),(10,4),(6,3),(29,1),(45,9),(48,8),(45,11),(55,11),(18,2),(30,8),(17,7),(23,4),(87,5),(64,7),(93,2),(94,4),(52,6),(15,6),(100,5),(49,2),(98,7),(62,2),(61,7),(92,6),(13,8),(42,1),(73,4),(36,8),(10,1),(87,1),(90,8),(2,6),(86,3),(10,10),(49,5),(95,4);

/*sandbox*/

  DROP DATABASE IF EXISTS sandbox;
CREATE DATABASE sandbox;
   USE sandbox;

/*TABLES*/

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  sexo CHAR(1) NOT NULL,
  cpf CHAR(11) UNIQUE NOT NULL,
  cidade VARCHAR(40) NOT NULL,
  estado CHAR(2) NOT NULL
);

CREATE TABLE carros (
  id INT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(40) NOT NULL,
  marca VARCHAR(40) NOT NULL,
  placa CHAR(8) UNIQUE NOT NULL,
  clientes_id INT NOT NULL
);

/*INSERTS*/

INSERT INTO clientes (nome,sexo,cpf,cidade,estado)
VALUES ('Pedro','M','12304760987','São Paulo','SP'),('Maria','F','82319422364','Rio de Janeiro','RJ'),('Laura','F','46387115276','Curitiba','PR'),('Marcos','M','43769265834','Natal','RN'),('Lucas','M','09384283245','Santos','SP');

INSERT INTO carros (modelo,marca,placa,clientes_id)
VALUES ('Corsa 1.0','Chevrolet','FRE-0293','3'),
       ('Gol 2.0','Volkswagen','XNE-9824','2');

/*COPIE TUDO!*/
