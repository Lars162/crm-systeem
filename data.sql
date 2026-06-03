-- ============================================================
-- Gecombineerde Database: CRM + Urenregistratie
-- Basis: urenregistratie2 (Mattie) + CRM_DATABASE (jouw data)
-- Gegenereerd: 28 mei 2026
-- ============================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET NAMES utf8mb4 */;

-- Database: `urenregistratie2`

-- ============================================================
-- TABEL: klanten
-- Uitgebreid met CRM-velden: tussenvoegsel, achternaam,
-- functie, telefoon, adres
-- ============================================================

DROP TABLE IF EXISTS `klanten`;
CREATE TABLE IF NOT EXISTS `klanten` (
  `id`            int           NOT NULL AUTO_INCREMENT,
  `bedrijfsnaam`  varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tussenvoegsel` varchar(50)   COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achternaam`    varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactpersoon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Voornaam contactpersoon',
  `functie`       varchar(50)   COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email`         varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefoon`      varchar(50)   COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres`         varchar(200)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `klanten` (`id`, `bedrijfsnaam`, `tussenvoegsel`, `achternaam`, `contactpersoon`, `functie`, `email`, `telefoon`, `adres`) VALUES
(1,  'TechNova',           '',  'De Jong',      'Anouk',   'Manager',         'anouk.dejong@technova.nl',           '0612345001', 'Herengracht 13, 1017 CE Amsterdam'),
(2,  'GreenFields',        '',  'Jansen',        'Aron',    'Developer',       'aron.jansen@greenfields.nl',          '0612345002', 'Molenstraat 45, 3511 GG Utrecht'),
(3,  'BlueWave',           '',  'De Vries',      'Bram',    'Consultant',      'bram.devries@bluewave.nl',            '0612345003', 'Kerkstraat 22, 2312 AB Leiden'),
(4,  'CreativeHub',        '',  'Van Dijk',      'Cas',     'Designer',        'cas.vandijk@creativehub.nl',          '0612345004', 'Visserstraat 9, 5011 KH Tilburg'),
(5,  'LogiMax',            '',  'Visser',        'Daan',    'Planner',         'daan.visser@logimax.nl',              '0612345005', 'Zeestraat 77, 9712 AA Groningen'),
(6,  'NextGen Solutions',  '',  'Bakker',        'David',   'Engineer',        'david.bakker@nextgensolutions.nl',    '0612345006', 'Prinsestraat 34, 6211 AC Maastricht'),
(7,  'MediaWorks',         '',  'Smit',          'Elin',    'Editor',          'elin.smit@mediaworks.nl',             '0612345007', 'Bloemstraat 18, 2011 KL Haarlem'),
(8,  'Eventify',           '',  'Mulder',        'Elise',   'Coordinator',     'elise.mulder@eventify.nl',            '0612345008', 'Schoolstraat 56, 5231 EV Den Bosch'),
(9,  'Digimedia',          '',  'Meijer',        'Emma',    'Marketeer',       'emma.meijer@digimedia.nl',            '0612345009', 'Dorpstraat 101, 7411 KC Deventer'),
(10, 'HealthFirst',        '',  'Bos',           'Eva',     'Designer',        'eva.bos@healthfirst.nl',              '0612345010', 'Hoogstraat 8, 6216 BT Eindhoven'),
(11, 'UX Studio',          '',  'Vos',           'Evi',     'Designer',        'evi.vos@uxstudio.nl',                 '0612345011', 'Koningsstraat 51, 7418 EG Zwolle'),
(12, 'RetailPro',          '',  'Peters',        'Fenna',   'Shop Manager',    'fenna.peters@retailpro.nl',           '0612345012', 'Gasthuislaan 27, 5611 JK Breda'),
(13, 'DataSense',          '',  'Hendriks',      'Finn',    'Analyst',         'finn.hendriks@datasense.nl',          '0612345013', 'Prins Bernhardlaan 49, 6525 BR Nijmegen'),
(14, 'ArtLine',            '',  'Dekker',        'Fleur',   'Artist',          'fleur.dekker@artline.nl',             '0612345014', 'Nieuwestraat 4, 7311 DC Apeldoorn'),
(15, 'VanLeeuwen Tech',    '',  'Van Leeuwen',   'Gijs',    'Developer',       'gijs.vanleeuwen@vltech.nl',           '0612345015', 'Parkstraat 67, 6902 HB Zwolle'),
(16, 'BuildRight',         '',  'Brouwer',       'Hugo',    'Constructor',     'hugo.brouwer@buildright.nl',          '0612345016', 'Schoolstraat 89, 2611 EV Delft'),
(17, 'InteriorSense',      '',  'De Boer',       'Iris',    'Designer',        'iris.deboer@interiorsense.nl',        '0612345017', 'Gasthuislaan 23, 4811 CW Breda'),
(18, 'FitLife',            '',  'Kok',           'Isa',     'Trainer',         'isa.kok@fitlife.nl',                  '0612345018', 'Herenstraat 10, 2011 DM Haarlem'),
(19, 'FocusPhoto',         '',  'Van den Berg',  'Jade',    'Photographer',    'jade.vandenberg@focusphoto.nl',       '0612345019', 'Visserstraat 3, 5611 KG Den Haag'),
(20, 'SysSecure',          '',  'Visser',        'Jesse',   'IT Support',      'jesse.visser@syssecure.nl',           '0612345020', 'Hoofdstraat 5, 7312 ET Apeldoorn'),
(21, 'AnimateX',           '',  'Smit',          'Joris',   'Animator',        'joris.smit@animatex.nl',              '0612345021', 'Bergstraat 14, 7411 PG Deventer'),
(22, 'AdvisoryHub',        '',  'Jansen',        'Julian',  'Advisor',         'julian.jansen@advisoryhub.nl',        '0612345022', 'Zuidwal 19, 9712 HW Groningen'),
(23, 'PrimeFit',           '',  'De Vries',      'Lars',    'Coach',           'lars.devries@primefit.nl',            '0612345023', 'Kerkplein 33, 6511 KN Nijmegen'),
(24, 'DesignLab',          '',  'De Jong',       'Lena',    'Designer',        'lena.dejong@designlab.nl',            '0612345024', 'Molenweg 76, 3011 LW Rotterdam'),
(25, 'Studio25',           '',  'Bakker',        'Lieke',   'Producer',        'lieke.bakker@studio25.nl',            '0612345025', 'Parklaan 29, 7313 HH Apeldoorn'),
(26, 'TechAssist',         '',  'Peters',        'Lotte',   'Technician',      'lotte.peters@techassist.nl',          '0612345026', 'Kerkstraat 20, 5211 AV Den Bosch'),
(27, 'TransPortCo',        '',  'Hendriks',      'Lucas',   'Driver',          'lucas.hendriks@transportco.nl',       '0612345027', 'Dreef 15, 3012 GG Rotterdam'),
(28, 'MediaFlow',          '',  'Bos',           'Lynn',    'Producer',        'lynn.bos@mediaflow.nl',               '0612345028', 'Voorstraat 66, 6511 EM Nijmegen'),
(29, 'ConstructAll',       '',  'Vos',           'Mats',    'Builder',         'mats.vos@constructall.nl',            '0612345029', 'Singel 8, 5211 LP Den Bosch'),
(30, 'Insight Analytics',  '',  'Dekker',        'Max',     'Analyst',         'max.dekker@insightanalytics.nl',      '0612345030', 'Plantsoen 53, 3013 BR Rotterdam'),
(31, 'ArtSpace',           '',  'Meijer',        'Mila',    'Artist',          'mila.meijer@artspace.nl',             '0612345031', 'Langstraat 21, 9711 AB Groningen'),
(32, 'DesignWorks',        '',  'Van Dijk',      'Milan',   'Designer',        'milan.vandijk@designworks.nl',        '0612345032', 'Kerklaan 42, 7312 BJ Apeldoorn'),
(33, 'TechNation',         '',  'Bakker',        'Nina',    'Technician',      'nina.bakker@technation.nl',           '0612345033', 'Singel 32, 3512 KM Utrecht'),
(34, 'SupportPlus',        '',  'Jansen',        'Noah',    'Support',         'noah.jansen@supportplus.nl',          '0612345034', 'Gracht 11, 3511 JM Utrecht'),
(35, 'TheraCare',          '',  'De Jong',       'Noor',    'Therapist',       'noor.dejong@theracare.nl',            '0612345035', 'Oosteinde 18, 5611 KD Den Haag'),
(36, 'LeadTech',           '',  'Van Leeuwen',   'Noud',    'Tech Lead',       'noud.vanleeuwen@leadtech.nl',         '0612345036', 'Kade 42, 3011 EJ Rotterdam'),
(37, 'DesignForge',        '',  'Brouwer',       'Olivier', 'Designer',        'olivier.brouwer@designforge.nl',      '0612345037', 'Turfmarkt 57, 6211 KE Eindhoven'),
(38, 'SocialBuzz',         '',  'De Vries',      'Puck',    'Content Creator', 'puck.devries@socialbuzz.nl',          '0612345038', 'Plantsoen 4, 9711 DJ Groningen'),
(39, 'BuilderPro',         '',  'Bakker',        'Rik',     'Constructor',     'rik.bakker@builderpro.nl',            '0612345039', 'Dreef 90, 3511 HX Utrecht'),
(40, 'ArtCorner',          '',  'Visser',        'Roos',    'Artist',          'roos.visser@artcorner.nl',            '0612345040', 'Kerkstraat 31, 3012 GL Rotterdam'),
(41, 'TransGo',            '',  'Hendriks',      'Ruben',   'Driver',          'ruben.hendriks@transgo.nl',           '0612345041', 'Plantsoen 27, 6512 BG Nijmegen'),
(42, 'CreativePulse',      '',  'Mulder',        'Sara',    'Artist',          'sara.mulder@creativepulse.nl',        '0612345042', 'Langstraat 56, 9711 AC Groningen'),
(43, 'TechEdge',           '',  'Dekker',        'Sem',     'Engineer',        'sem.dekker@techedge.nl',              '0612345043', 'Hoofdstraat 7, 3512 KK Utrecht'),
(44, 'HealthCareNL',       '',  'Bos',           'Sophie',  'Nurse',           'sophie.bos@healthcarenl.nl',          '0612345044', 'Kerkweg 23, 3011 KJ Rotterdam'),
(45, 'LogiTech',           '',  'Van Dijk',      'Stijn',   'Operator',        'stijn.vandijk@logitech.nl',           '0612345045', 'Voorstraat 9, 5231 EA Den Bosch'),
(46, 'DataWorks',          '',  'Peters',        'Teun',    'Analyst',         'teun.peters@dataworks.nl',            '0612345046', 'Gracht 39, 6211 CR Eindhoven'),
(47, 'BuildMasters',       '',  'De Boer',       'Thijs',   'Builder',         'thijs.deboer@buildmasters.nl',        '0612345047', 'Koningsstraat 62, 7411 JC Deventer'),
(48, 'DevWorks',           '',  'Visser',        'Timo',    'Developer',       'timo.visser@devworks.nl',             '0612345048', 'Hoofdstraat 2, 3011 HC Rotterdam'),
(49, 'CreativeForge',      '',  'Mulder',        'Yara',    'Designer',        'yara.mulder@creativeforge.nl',        '0612345049', 'Vlasmarkt 47, 6811 DA Arnhem'),
(50, 'MediaCraft',         '',  'Vos',           'Zoe',     'Content Creator', 'zoe.vos@mediacraft.nl',               '0612345050', 'Bloemstraat 15, 6812 CZ Arnhem');

-- ============================================================
-- TABEL: medewerkers
-- Uitgebreid met CRM-velden: voornaam, tussenvoegsel,
-- achternaam, geboortedatum, kantoorruimte
-- Behoudt login-systeem van Mattie: wachtwoord, rol
-- Rollen: afdelingshoofd, verkoopmedewerker, medewerker
-- ============================================================

DROP TABLE IF EXISTS `medewerkers`;
CREATE TABLE IF NOT EXISTS `medewerkers` (
  `id`             int          NOT NULL AUTO_INCREMENT,
  `voornaam`       varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tussenvoegsel`  varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achternaam`     varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naam`           varchar(100) COLLATE utf8mb4_unicode_ci GENERATED ALWAYS AS (
                     TRIM(CONCAT_WS(' ',
                       `voornaam`,
                       NULLIF(`tussenvoegsel`, ''),
                       `achternaam`
                     ))
                   ) STORED COMMENT 'Volledige naam (automatisch)',
  `geboortedatum`  date         DEFAULT NULL,
  `email`          varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `werkmail`       varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wachtwoord`     varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MD5 hash',
  `rol`            enum('afdelingshoofd','verkoopmedewerker','medewerker')
                               COLLATE utf8mb4_unicode_ci DEFAULT 'medewerker',
  `kantoorruimte`  varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Wachtwoord voor alle medewerkers: '1234' (MD5: 81dc9bdb52d04dc20036dbd8313ed055)
-- Pas dit aan naar veilige hashes in productie!
INSERT INTO `medewerkers` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `geboortedatum`, `email`, `werkmail`, `wachtwoord`, `rol`, `kantoorruimte`) VALUES
(1,  'David',  '', 'Macholl',  '2008-10-12', 'David.macholl@student.gildeopleidingen.nl', 'david.macholl@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'afdelingshoofd',     'B0.06'),
(2,  'Liam',   '', 'Jansen',   '2006-03-14', 'liam.jansen@student.gildeopleidingen.nl',  'liam.jansen@bedrijf.nl',   '81dc9bdb52d04dc20036dbd8313ed055', 'verkoopmedewerker',  'B0.01'),
(3,  'Noah',   '', 'Vries',    '2005-07-22', 'noah.devries@techmail.nl',                 'noah.devries@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.02'),
(4,  'Lucas',  '', 'Bakker',   '2007-01-09', 'lucas.bakker@techmail.nl',                 'lucas.bakker@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.03'),
(5,  'Milan',  '', 'Visser',   '2006-11-30', 'milan.visser@techmail.nl',                 'milan.visser@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.04'),
(6,  'Daan',   '', 'Smit',     '2005-05-18', 'daan.smit@techmail.nl',                    'daan.smit@bedrijf.nl',     '81dc9bdb52d04dc20036dbd8313ed055', 'verkoopmedewerker',  'B0.05'),
(7,  'Levi',   '', 'Meijer',   '2007-02-25', 'levi.meijer@techmail.nl',                  'levi.meijer@bedrijf.nl',   '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.07'),
(8,  'Finn',   '', 'Mulder',   '2006-06-12', 'finn.mulder@techmail.nl',                  'finn.mulder@bedrijf.nl',   '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.08'),
(9,  'Sem',    '', 'Bos',      '2005-12-03', 'sem.bos@techmail.nl',                      'sem.bos@bedrijf.nl',       '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.09'),
(10, 'Jayden', '', 'Vos',      '2007-04-17', 'jayden.vos@techmail.nl',                   'jayden.vos@bedrijf.nl',    '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.10'),
(11, 'Ruben',  '', 'Peters',   '2006-08-21', 'ruben.peters@techmail.nl',                 'ruben.peters@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.11'),
(12, 'Thijs',  '', 'Willems',  '2005-09-05', 'thijs.willems@techmail.nl',                'thijs.willems@bedrijf.nl', '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.12'),
(13, 'Timo',   '', 'Kuipers',  '2007-02-14', 'timo.kuipers@techmail.nl',                 'timo.kuipers@bedrijf.nl',  '81dc9bdb52d04dc20036dbd8313ed055', 'medewerker',         'B0.13');

-- ============================================================
-- TABEL: opdrachten
-- Gecombineerd: CRM-velden (omschrijving, aanvraagdatum,
-- benodigde_kennis) + urenregistratie-velden (uurprijs, status)
-- ============================================================

DROP TABLE IF EXISTS `opdrachten`;
CREATE TABLE IF NOT EXISTS `opdrachten` (
  `id`               int           NOT NULL AUTO_INCREMENT,
  `klant_id`         int           DEFAULT NULL,
  `titel`            varchar(100)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `omschrijving`     varchar(200)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aanvraagdatum`    date          DEFAULT NULL,
  `benodigde_kennis` varchar(200)  COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status`           varchar(50)   COLLATE utf8mb4_unicode_ci DEFAULT 'Actief',
  `uurprijs`         decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `klant_id` (`klant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `opdrachten` (`id`, `klant_id`, `titel`, `omschrijving`, `aanvraagdatum`, `benodigde_kennis`, `status`, `uurprijs`) VALUES
(1,  10, 'Website Ontwikkelingen',  'Ontwikkeling van een persoonlijke website',         '2026-03-05', 'HTML, CSS, JS',                   'Actief', NULL),
(2,  2,  'App Ontwikkeling',        'Mobiele app voor taakbeheer',                       '2026-03-05', 'Flutter, Dart',                   'Actief', NULL),
(3,  3,  'Database Opzet',          'Opzetten van een SQL database voor schoolproject',  '2026-03-05', 'SQL, Data modeling',              'Actief', NULL),
(4,  4,  'Logo Design',             'Ontwerp van een logo voor een start-up',            '2026-03-05', 'Photoshop, Illustrator',          'Actief', NULL),
(5,  5,  'SEO Optimalisatie',       'Verbeteren van SEO voor website',                  '2026-03-05', 'SEO tools, Google Analytics',     'Actief', NULL),
(6,  6,  'Software Testing',        'Testen van software voor bugs en performance',      '2026-03-05', 'JUnit, Selenium',                 'Actief', NULL),
(7,  7,  'Marketing Plan',          'Opstellen van marketing strategie voor product',    '2026-03-05', 'Marketing, Social Media',         'Actief', NULL),
(8,  8,  'E-commerce Website',      'Opzetten van online webshop',                      '2026-03-05', 'Magento, Shopify',                'Actief', NULL),
(9,  9,  'Videoproductie',          'Maak promotievideo voor product',                  '2026-03-05', 'Premiere Pro, After Effects',     'Actief', NULL),
(10, 10, 'Social Media Campagne',   'Campagne opzetten voor Instagram',                 '2026-03-05', 'Social Media Marketing',          'Actief', NULL),
(11, 11, 'UX/UI Design',            'Ontwerp van app interface',                        '2026-03-05', 'Figma, Sketch',                   'Actief', NULL),
(12, 12, 'Data Analyse',            'Analyseer verkoopdata',                            '2026-03-05', 'Excel, Python',                   'Actief', NULL),
(13, 13, 'Cybersecurity Audit',     'Beveiligingsaudit voor netwerk',                   '2026-03-05', 'Penetration Testing, Kali Linux', 'Actief', NULL),
(14, 14, 'Illustratie Opdracht',    'Illustraties maken voor magazine',                 '2026-03-05', 'Photoshop, Illustrator',          'Actief', NULL),
(15, 15, 'API Integratie',          'Koppelen van externe API aan applicatie',           '2026-03-05', 'REST, JSON, PHP',                 'Actief', NULL),
(16, 16, '3D Modellering',          '3D model maken van gebouw',                        '2026-03-05', 'AutoCAD, SketchUp',               'Actief', NULL),
(17, 17, 'Interior Visualisatie',   'Visualisatie van interieurontwerp',                '2026-03-05', 'Blender, 3DS Max',                'Actief', NULL),
(18, 18, 'Voedingsplan App',        'App voor gepersonaliseerde voedingsplannen',        '2026-03-05', 'React Native, Firebase',          'Actief', NULL),
(19, 19, 'Foto Retoucheren',        'Professioneel retoucheren van productfoto\'s',     '2026-03-05', 'Photoshop, Lightroom',            'Actief', NULL),
(20, 20, 'Netwerk Beveiliging',     'Opzetten van firewallregels',                      '2026-03-05', 'Cisco, Fortinet',                 'Actief', NULL),
(21, 21, 'Animatie Project',        'Animatie maken voor reclamevideo',                 '2026-03-05', 'After Effects, Blender',          'Actief', NULL),
(22, 22, 'Business Strategie',      'Opstellen van 5-jarenplan',                        '2026-03-05', 'Business Analysis',               'Actief', NULL),
(23, 23, 'Fitness App',             'App voor persoonlijke trainingsschema\'s',         '2026-03-05', 'Swift, Kotlin',                   'Actief', NULL),
(24, 24, 'Brand Identity',          'Volledige huisstijl ontwikkelen',                  '2026-03-05', 'Illustrator, InDesign',           'Actief', NULL),
(25, 25, 'Podcast Productie',       'Opnemen en mixen van podcast',                     '2026-03-05', 'Audacity, Adobe Audition',        'Actief', NULL),
(26, 26, 'Hardware Installatie',    'Installatie van servers op locatie',               '2026-03-05', 'Windows Server, Linux',           'Actief', NULL),
(27, 27, 'Routeplanning Tool',      'Ontwikkeling van optimalisatietool',               '2026-03-05', 'Python, Google Maps API',         'Actief', NULL),
(28, 28, 'Documentaire Editing',    'Monteren van bedrijfsdocumentaire',                '2026-03-05', 'Premiere Pro, DaVinci',           'Actief', NULL),
(29, 29, 'Bouwplanning Software',   'Software voor projectplanning bouw',               '2026-03-05', 'MS Project, Excel',               'Actief', NULL),
(30, 30, 'Dashboard Ontwikkeling',  'Interactief analytics dashboard',                 '2026-03-05', 'Power BI, Tableau',               'Actief', NULL),
(31, 31, 'Kunstwerk Digitalisering','Digitaliseren van kunstwerken',                    '2026-03-05', 'Scanning, Photoshop',             'Actief', NULL),
(32, 32, 'UI Redesign',             'Redesign van bestaande webapplicatie',             '2026-03-05', 'Figma, HTML, CSS',                'Actief', NULL),
(33, 33, 'IoT Installatie',         'Opzetten van IoT-netwerk',                        '2026-03-05', 'Arduino, Raspberry Pi',           'Actief', NULL),
(34, 34, 'Helpdesk Systeem',        'Opzetten van ticketsysteem',                      '2026-03-05', 'Zendesk, JIRA',                   'Actief', NULL),
(35, 35, 'Online Therapieplatform', 'Platform voor online therapiesessies',            '2026-03-05', 'WebRTC, PHP, MySQL',              'Actief', NULL),
(36, 36, 'Cloud Migratie',          'Migratie van on-premise naar cloud',              '2026-03-05', 'AWS, Azure',                      'Actief', NULL),
(37, 37, 'Packaging Design',        'Verpakkingsontwerp voor nieuw product',           '2026-03-05', 'Illustrator, InDesign',           'Actief', NULL),
(38, 38, 'Social Media Beheer',     'Beheer van alle sociale mediakanalen',            '2026-03-05', 'Hootsuite, Canva',                'Actief', NULL),
(39, 39, 'Bouwsoftware Update',     'Update en bug fixes bestaande software',          '2026-03-05', 'C++, SQL',                        'Actief', NULL),
(40, 40, 'Branding',                'Ontwikkeling van merkidentiteit',                 '2026-03-05', 'Branding, Illustrator',           'Actief', NULL),
(41, 41, 'Database Beheer',         'Beheer en optimalisatie van database',            '2026-03-05', 'SQL, Backup Management',          'Actief', NULL),
(42, 42, 'Copywriting',             'Schrijven van teksten voor campagnes',            '2026-03-05', 'Copywriting, SEO',                'Actief', NULL),
(43, 43, 'App Ontwikkeling',        'Nieuwe functionaliteit toevoegen aan app',        '2026-03-05', 'Flutter, Dart',                   'Actief', NULL),
(44, 44, 'Fotobewerking',           'Bewerk fotos voor website',                       '2026-03-05', 'Photoshop, Lightroom',            'Actief', NULL),
(45, 45, 'Network Setup',           'Opzetten van bedrijfsnetwerk',                    '2026-03-05', 'Networking, Cisco',               'Actief', NULL),
(46, 46, 'Video Editing',           'Monteren van promotievideo',                      '2026-03-05', 'Premiere Pro',                    'Actief', NULL),
(47, 47, 'Software Installatie',    'Installatie van software op computers',           '2026-03-05', 'Windows, Scripts',                'Actief', NULL),
(48, 48, 'Game Development',        'Maak klein spel',                                 '2026-03-05', 'Unity, C#',                       'Actief', NULL),
(49, 49, 'Illustratie Boek',        'Illustraties maken voor kinderboek',              '2026-03-05', 'Photoshop, Illustrator',          'Actief', NULL),
(50, 50, 'UX Testing',              'Testen van website gebruiksvriendelijkheid',      '2026-03-05', 'Figma, User Testing',             'Actief', NULL),
(51, 1,  'OPDRACHT 2',              NULL,                                               NULL,         NULL,                              'Actief', NULL);

-- ============================================================
-- TABEL: urenregistratie
-- Van Mattie, uitgebreid met beschrijving-veld
-- Vervangt 'werkzaamheden' uit jouw CRM
-- ============================================================

DROP TABLE IF EXISTS `urenregistratie`;
CREATE TABLE IF NOT EXISTS `urenregistratie` (
  `id`             int           NOT NULL AUTO_INCREMENT,
  `medewerker_id`  int           DEFAULT NULL,
  `opdracht_id`    int           DEFAULT NULL,
  `datum`          date          DEFAULT NULL,
  `aantal_uren`    decimal(5,2)  DEFAULT NULL,
  `beschrijving`   text          COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `medewerker_id` (`medewerker_id`),
  KEY `opdracht_id` (`opdracht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `urenregistratie` (`id`, `medewerker_id`, `opdracht_id`, `datum`, `aantal_uren`, `beschrijving`) VALUES
(1,  1,  1,  NULL, 6.00, NULL),
(2,  2,  37, NULL, 4.00, NULL),
(3,  3,  2,  NULL, 5.00, NULL),
(4,  4,  3,  NULL, 7.00, NULL),
(5,  5,  4,  NULL, 6.00, NULL),
(6,  6,  5,  NULL, 5.00, NULL),
(7,  7,  6,  NULL, 4.00, NULL),
(8,  8,  7,  NULL, 6.00, NULL),
(9,  9,  8,  NULL, 3.00, NULL),
(10, 10, 9,  NULL, 5.00, NULL),
(11, 11, 10, NULL, 7.00, NULL),
(12, 12, 11, NULL, 4.00, NULL),
(13, 13, 12, NULL, 5.00, NULL),
(14, 6,  13, NULL, 4.00, NULL),
(15, 6,  14, NULL, 8.00, NULL),
(16, 1,  15, NULL, 3.00, NULL),
(17, 2,  17, NULL, 8.00, NULL),
(18, 3,  18, NULL, 5.00, NULL),
(19, 4,  19, NULL, 3.00, NULL),
(20, 5,  20, NULL, 4.00, NULL),
(21, 6,  21, NULL, 6.00, NULL),
(22, 7,  22, NULL, 3.00, NULL),
(23, 8,  23, NULL, 5.00, NULL),
(24, 9,  24, NULL, 7.00, NULL),
(25, 10, 25, NULL, 4.00, NULL),
(26, 1,  26, NULL, 6.00, NULL),
(27, 2,  27, NULL, 7.00, NULL),
(28, 3,  28, NULL, 2.00, NULL),
(29, 4,  29, NULL, 3.00, NULL),
(30, 5,  30, NULL, 9.00, NULL),
(31, 6,  31, NULL, 4.00, NULL),
(32, 7,  32, NULL, 8.00, NULL),
(33, 9,  33, NULL, 1.00, NULL),
(34, 8,  34, NULL, 4.00, NULL),
(35, 9,  35, NULL, 7.00, NULL),
(36, 10, 36, NULL, 1.00, NULL),
(37, 11, 37, NULL, 4.00, NULL),
(38, 12, 38, NULL, 5.00, NULL),
(39, 13, 39, NULL, 2.00, NULL),
(40, 1,  40, NULL, 2.00, NULL),
(41, 2,  41, NULL, 8.00, NULL),
(42, 3,  42, NULL, 1.00, NULL),
(43, 4,  43, NULL, 4.00, NULL),
(44, 5,  44, NULL, 3.00, NULL),
(45, 6,  45, NULL, 2.00, NULL),
(46, 7,  46, NULL, 4.00, NULL),
(47, 8,  47, NULL, 8.00, NULL),
(48, 9,  48, NULL, 3.00, NULL),
(49, 10, 49, NULL, 8.00, NULL),
(50, 11, 50, NULL, 3.00, NULL);

-- ============================================================
-- TABEL: facturen
-- Van Mattie, ongewijzigd behouden
-- ============================================================

DROP TABLE IF EXISTS `facturen`;
CREATE TABLE IF NOT EXISTS `facturen` (
  `id`          int           NOT NULL AUTO_INCREMENT,
  `klant_id`    int           DEFAULT NULL,
  `opdracht_id` int           NOT NULL,
  `bedrag`      decimal(10,2) DEFAULT NULL,
  `datum`       date          DEFAULT NULL,
  `status`      varchar(50)   COLLATE utf8mb4_unicode_ci DEFAULT 'Concept'
                              COMMENT 'Bijv: Concept, Verstuurd, Betaald, Verlopen',
  PRIMARY KEY (`id`),
  KEY `klant_id` (`klant_id`),
  KEY `opdracht_id` (`opdracht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `facturen` (`id`, `klant_id`, `opdracht_id`, `bedrag`, `datum`, `status`) VALUES
(1, 10, 1, 6.00,   '2026-05-05', 'Verstuurd'),
(2, 3,  1, 500.00, '2018-05-06', 'Verstuurd');

-- ============================================================
-- TABEL: rapportages
-- Nieuw: voor het genereren en opslaan van rapportages
-- Toegankelijk voor afdelingshoofd en verkoopmedewerker
-- ============================================================

DROP TABLE IF EXISTS `rapportages`;
CREATE TABLE IF NOT EXISTS `rapportages` (
  `id`              int          NOT NULL AUTO_INCREMENT,
  `titel`           varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type`            varchar(50)  COLLATE utf8mb4_unicode_ci DEFAULT NULL
                                 COMMENT 'Bijv: Uren, Omzet, Klanten, Opdrachten',
  `aangemaakt_door` int          DEFAULT NULL COMMENT 'medewerker_id',
  `aangemaakt_op`   datetime     DEFAULT CURRENT_TIMESTAMP,
  `periode_van`     date         DEFAULT NULL,
  `periode_tot`     date         DEFAULT NULL,
  `inhoud`          longtext     COLLATE utf8mb4_unicode_ci COMMENT 'JSON of tekst met rapportdata',
  PRIMARY KEY (`id`),
  KEY `aangemaakt_door` (`aangemaakt_door`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- FOREIGN KEYS
-- ============================================================

ALTER TABLE `opdrachten`
  ADD CONSTRAINT `fk_opdracht_klant`
    FOREIGN KEY (`klant_id`) REFERENCES `klanten` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `urenregistratie`
  ADD CONSTRAINT `fk_uren_medewerker`
    FOREIGN KEY (`medewerker_id`) REFERENCES `medewerkers` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uren_opdracht`
    FOREIGN KEY (`opdracht_id`) REFERENCES `opdrachten` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `facturen`
  ADD CONSTRAINT `fk_factuur_klant`
    FOREIGN KEY (`klant_id`) REFERENCES `klanten` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_factuur_opdracht`
    FOREIGN KEY (`opdracht_id`) REFERENCES `opdrachten` (`id`)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `rapportages`
  ADD CONSTRAINT `fk_rapportage_medewerker`
    FOREIGN KEY (`aangemaakt_door`) REFERENCES `medewerkers` (`id`)
    ON DELETE SET NULL ON UPDATE CASCADE;

-- ============================================================
-- HANDIGE VIEWS (optioneel maar handig voor je PHP app)
-- ============================================================

-- Overzicht uren per medewerker per opdracht
CREATE OR REPLACE VIEW `v_uren_overzicht` AS
SELECT
  u.id,
  CONCAT_WS(' ', m.voornaam, NULLIF(m.tussenvoegsel,''), m.achternaam) AS medewerker,
  m.rol,
  o.titel AS opdracht,
  k.bedrijfsnaam AS klant,
  u.datum,
  u.aantal_uren,
  o.uurprijs,
  ROUND(u.aantal_uren * o.uurprijs, 2) AS bedrag,
  u.beschrijving
FROM `urenregistratie` u
JOIN `medewerkers` m  ON u.medewerker_id = m.id
JOIN `opdrachten`  o  ON u.opdracht_id   = o.id
JOIN `klanten`     k  ON o.klant_id      = k.id;

-- Omzet per klant
CREATE OR REPLACE VIEW `v_omzet_per_klant` AS
SELECT
  k.id AS klant_id,
  k.bedrijfsnaam,
  COUNT(DISTINCT o.id)          AS aantal_opdrachten,
  SUM(u.aantal_uren)            AS totaal_uren,
  SUM(u.aantal_uren * o.uurprijs) AS totaal_omzet
FROM `klanten` k
LEFT JOIN `opdrachten`    o ON k.id = o.klant_id
LEFT JOIN `urenregistratie` u ON o.id = u.opdracht_id
GROUP BY k.id, k.bedrijfsnaam;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
