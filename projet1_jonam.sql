-- 1.0 CRÉATION DES TABLES ET AJOUT DES DONNÉES --

create table Etudiant(
id int not null auto_increment,
nomFamille varchar(25) not null,
prenom varchar(25) not null,
age int not null,
statut varchar(25) not null,
nombreCredit int not null,
codePermanent varchar(25) not null,
dateDeNaissance date not null,
primary key(id)
);

INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Blow', 'Joe', 72, 'Partiel', 12, 'BJOE4578545', '1950-01-01'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Luke', 'Lucky', 85, 'Partiel', 3,'LUCL2504584', '1937-05-06'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Allen', 'Woody', 86, 'Plein', 21, 'WOOA8545788', '1933-07-08'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Mouse', 'Mickey', 22, 'Plein', 30,'MICM7878802', '1990-11-08'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Duck', 'Donald', 28, 'Partiel', 2,'DOND4512458', '1990-11-09'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Tarrantino', 'Quentin', 58, 'Partiel', 18, 'QEUT2054854','1965-05-06'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Morisson', 'Jim', '37', 'Plein', '3', 'JIM7878545', '1949-01-01'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('John', 'Elton', '62', 'Partiel', '33', 'ELTJ2004584', '1970-12-15'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Starr', 'Ringo', '47', 'Plein', '54', 'RINS8545332', '1932-07-22'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Lennon', 'John', '62', 'Partiel', '9', 'JOHL7802027', '1982-11-08'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Trump', 'Donald', '100', 'Plein', '0', 'DONT0254875', '1950-02-09'); 
INSERT INTO Etudiant (nomFamille, prenom, age, statut, nombreCredit, codePermanent, dateDeNaissance) VALUES('Van Halen', 'Eddy', '65', 'Partiel', '21', 'EDYV3652698', '1965-05-06'); 

create table Telephone(
id int not null auto_increment,
idEtudiant int not null,
indicatif varchar(3) not null,
numTel varchar(25) not null,
numPrincipal boolean not null,
numCell boolean not null,
FOREIGN KEY (idEtudiant) references Etudiant(id),
primary key (id)
);

INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '6632545', FALSE, TRUE, 1); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '4522125', FALSE, TRUE, 2); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('418', '7774585', TRUE, FALSE, 3); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('418', '7852251', TRUE, TRUE, 4); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('819', '4520215', FALSE, FALSE, 4); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('819', '7845252', FALSE, TRUE, 5); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('418', '5552360', TRUE, FALSE, 6); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '8755850', TRUE, FALSE, 7); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('819', '7855541', FALSE, TRUE, 8); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '7745582', TRUE, FALSE, 8); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '3025520', TRUE, TRUE, 9); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '6542295', FALSE, TRUE, 10); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('418', '1212409', FALSE, FALSE, 11); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('819', '3622700', TRUE, FALSE, 11); 
INSERT INTO Telephone (indicatif, numTel, numPrincipal, numCell, idEtudiant) VALUES('514', '6503002', TRUE, FALSE, 12); 

create table Adresse(
id int not null auto_increment,
idEtudiant int not null,
numeroAdresse varchar(50) not null,
rue varchar(50) not null,
ville varchar(50) not null,
codePostal varchar(25) not null,
province varchar(25) not null,
pays varchar(25) not null,
principale boolean not null,
supprime boolean not null,
FOREIGN KEY (idEtudiant) references Etudiant(id),
primary key (id)
);

INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(330, 'Rue Braband', 'Quebec', 'G3C 4R5', 'Qc', 'Canada', TRUE, FALSE, 2); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(2550, 'Avenue Mouche', 'Quebec', 'G4F V3R', 'Qc', 'Canada', TRUE, FALSE, 2); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(999, 'Boulevard of broken dreams' ,'Quebec', 'F3F R3W','Qc', 'Canada', TRUE, FALSE, 2); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(0405, 'Rue du Cheval Bleu', 'Montreal', 'G5Y 7U8','Qc', 'USA', FALSE, FALSE, 4); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(2244, 'Boulevard Lachasse', 'Montreal', '2W3 R3W','Qc', 'USA', TRUE, FALSE, 4); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(776, 'Rue du Barbecue', 'Montreal', 'G5Y R3W', 'Qc', 'USA', FALSE, FALSE, 4); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(3955, 'Place patate', 'Trois-Rivieres', 'G3C 4R5','Qc', 'Italie', TRUE, FALSE, 6); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(559, 'Avenue du gros cave', 'Trois-Rivieres', 'G4F V3R','Qc', 'Italie', TRUE, FALSE, 6); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(7073, 'Rue rouge', 'Trois-Rivieres', 'F3F R3W','Qc', 'Italie', TRUE, FALSE, 7); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(888, 'Boulevard Walmart', 'Causapscal', 'G5Y 7U8','Qc', 'Canada', TRUE, FALSE, 9); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(663, 'Avenue Brebis', 'Causapscal', '2W3 R3W','Qc', 'Canada', TRUE, FALSE, 9); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(4722, 'Rue Roland', 'Causapscal', 'G5Y R3W','Qc', 'Canada', TRUE, FALSE, 10); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(229, 'Boulevard Bateau', 'Amqui', 'G3C 4R5','Qc', 'Espagne', TRUE, FALSE, 10); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(881, 'Avenue Avalanche', 'Amqui', 'F3F R3W','Qc', 'France', TRUE, FALSE, 11); 
INSERT INTO Adresse (numeroAdresse, rue, ville, codePostal, province, pays, principale, supprime, idEtudiant) VALUES(117, 'Rue Roche', 'Amqui', 'G3C 4R5','Qc', 'France', TRUE, FALSE, 12); 

-- 	2.0 MODIFICATION DE DONNÉES --

-- 2.1 Modifier le numéro de téléphone principal d'un étudiant --
update Telephone
set numTel = '5336664'
where numPrincipal = TRUE and idEtudiant = 1;

select * from Etudiant;

-- 2.2 Changer le statut d'un étudiant -- 
update Etudiant
set statut = 'Plein'
where idEtudiant = 4;

select * from Etudiant;

-- 2.3 Changer le numéro de téléphone de l'étudiant -- 
update Telephone
set numTel = '6552222'
where id = 4;

-- 2.4 Changer l'adresse principale d'un étudiant --
update adresse
set numeroAdresse = 2828, rue = 'Rue de la Mélasse'
where idEtudiant = 3 and principale = TRUE;

-- 2.5 Changer le numéro de téléphone principal dans la table Téléphone -- 
update telephone
set numPrincipale = '5734387'
where idEtudiant = 3 and numPrincipal = TRUE;

-- 2.6 Désigner un nouveau numéro comme étant le numéro principal --
update telephone
set numPrincipal = TRUE
where idEtudiant = 11 and numTel = '1212409';
select *
from telephone;
update telephone
set numPrincipal = FALSE
where idEtudiant = 11 and numTel = '3622700';

-- 2.7 Changer la ville, le code postal et le numéro dans la même requête --
update adresse
set ville = 'Rimouski', codePostal = 'J7K2B5', numeroAdresse = 4615
where id = 7;
select * 
from adresse;

-- 2.8 Affecter une adresse à un autre étudiant --
update adresse
set idEtudiant = 5
where idEtudiant = 8;


-- 3.0 SUPPRESSION DES DONNÉES --

-- 3.1 Suppression physique d'éléments de la table Étudiant --
delete from Etudiant 
where id = 4;

-- 3.2 Suppression physique de la table Téléphone --
delete from telephone
where id = 4;

-- 3.3 Suppression logique d'élément de la table adresse -- 
update adresse
set supprime = TRUE
where id = 4;

-- 4.0 MODIFICATION DE TABLES --

-- 4.1 Ajouter le champ 'DiplomeObtenu' dans la table étudiant --
alter table etudiant
add DiplomeObtenu boolean not null;

-- 4.2 Ajouter le champ 'AnneeDiplomation' dans la table étudiant --
alter table etudiant
add AnneeDiplomation varchar(4) not null;

-- 4.3 Ajouter le champ 'Compté' dans la table adresse --
alter table adresse
add Compté varchar(40) not null;

-- 4.4 Ajouter le champ 'Maison' dans la table Telephone -- 
alter table telephone
add Maison boolean not null;

-- 5.0 SÉLECTION DE DONNÉES -- 

-- 5.1 Obtenir la liste de tous les étudiants qui possède un numéro de telephone commençant par ‘514’ --
select * from telephone where indicatif = 514;

-- 5.2 Obtenir la liste (sans restrictions) de la table Étudiant et de la table Téléphone --
select * from etudiant;
select * from telephone;

-- 5.3 Obtenir la liste des nom, prénom, rue, numéro et ville dans une seule ordonné par ordre alphabétique sur le le prénom --
select etudiant.nomFamille, etudiant.prenom, adresse.rue, adresse.numeroAdresse, adresse.ville
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant
order by prenom asc;

-- 5.4 Obtenir la liste (nom, prénom, code permanent,ville) de où les étudiants habitent ‘Québec’, qui sont agés de 30 et plus et sont à temps partiel --
select etudiant.nomFamille, etudiant.prenom, etudiant.codePermanent, adresse.ville
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant
where ville like '%Quebec%' and age > 30 and statut = 'partiel';

-- 5.5 Obtenir la liste qui sont principals et qui ont un numéros débutant par ‘819’ --
select numTel from telephone
where indicatif = 819 and numPrincipal = TRUE;

-- 5.6 Obtenir les noms, prénom et numéro de cellulaire des étudiants qui ont réussis plus de 12 crédits --
select etudiant.nomFamille, etudiant.prenom, telephone.numTel
from etudiant
inner join telephone on etudiant.id = telephone.idEtudiant
where numCell = TRUE and nombreCredit > 12;

-- 5.7 Obtenir les nom, prénom et code permanent des étudiants qui habite la ville de ‘québec’ ou la ville de ‘montréal’ --
select  etudiant.nomFamille, etudiant.prenom, etudiant.codePermanent
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant
where ville like '%Quebec%' or ville like '%Montreal%';

-- 5.8 Obtenir les nom, prénom, code permanent des étudiants qui n’habite pas le Canada -- 
select etudiant.nomFamille, etudiant.prenom, etudiant.codePermanent, adresse.pays
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant
where pays != 'Canada';

-- 5.9 Obtenir les rue et les villes des adresses où le code postal se termine par ‘R3W’ -- 
select adresse.rue, adresse.ville, adresse.codePostal
from adresse
where codePostal like '%R3W';

-- 5.10 Obtenir tous les étudiants qui ont une adresse dans la table adresse -- 
select etudiant.nomFamille, etudiant.prenom, adresse.numeroAdresse, adresse.rue, adresse.ville
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant;

-- 5.11 Obtenir toutes les adresses ainsi que les adresses qui sont reliées à un étudiant -- 
select *
from adresse
left join etudiant
on adresse.idEtudiant = etudiant.id;

-- 5.12 Obtenir les nom, prénom, numéro, rue, ville des étudiants qui possèdent une adresse. Si un étudiant ne possède pas d’adresse il ne doit pas être affiché. --
select etudiant.nomFamille, etudiant.prenom, adresse.numeroAdresse, adresse.rue, adresse.ville
from etudiant
inner join adresse on etudiant.id = adresse.idEtudiant;

-- 5.13 Obtenir les nom, prénom et code permanent des étudiants qui ont plus de 30 ans. --
select etudiant.nomFamille, etudiant.prenom, etudiant.codePermanent
from etudiant
where age > 30;

-- 5.14 Obtenir les nom, prénom, code permanent et numéro de telephone des étudiants qui ont plus de 35 ans. --
select etudiant.nomFamille, etudiant.prenom, etudiant.codePermanent, telephone.numTel, etudiant.age
from etudiant
inner join telephone on etudiant.id = telephone.idEtudiant
where etudiant.age > 35;















