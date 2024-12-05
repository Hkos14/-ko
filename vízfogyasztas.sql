CREATE TABLE `Tools` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `SmartTool` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;


INSERT INTO `Tools` (`ID`, `Name`, `SmartTool`) VALUES
(1, 'Mosógép', 1),
(2, 'Hűtőszekrény', 1),
(3, 'Televízió', 0),
(4, 'Számítógép', 1),
(5, 'Mikrohullámú sütő', 0),
(6, 'Klíma', 1),
(7, 'Okoslámpa', 1),
(8, 'Porszívó', 0);


CREATE TABLE `Households` (
  `ID` int(11) NOT NULL,
  `StreetID` int(11) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `WaterConsumption` int(11) DEFAULT NULL,
  `HouseholdTypeID` int(11) DEFAULT NULL,
  `ResidentNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;




INSERT INTO `Households` (`ID`, `StreetID`, `Address`, `WaterConsumption`, `HouseholdTypeID`, `ResidentNumber`) VALUES
(1, 1, 'Andrássy út 1.', 120, 1, 4),
(2, 1, 'Andrássy út 2.', 90, 2, 2),
(3, 2, 'Kossuth Lajos utca 3.', 150, 3, 6),
(4, 3, 'Fő utca 4.', 60, 4, 1),
(5, 4, 'Petőfi Sándor utca 5.', 200, 5, 5),
(6, 5, 'Rákóczi út 6.', 180, 1, 3),
(7, 6, 'Ady Endre utca 7.', 100, 2, 2),
(8, 7, 'Bartók Béla utca 1.', 110, 1, 3),
(9, 8, 'Kossuth tér 2.', 95, 2, 2),
(10, 9, 'Rákóczi tér 3.', 140, 3, 5),
(11, 10, 'Ady Endre út 4.', 75, 4, 1),
(12, 11, 'Petőfi utca 5.', 180, 5, 4),
(13, 12, 'Széchenyi tér 6.', 130, 1, 3),
(14, 13, 'Arany János utca 7.', 150, 3, 6),
(15, 14, 'Dózsa György utca 8.', 90, 2, 2),
(16, 15, 'Deák Ferenc utca 9.', 100, 4, 1),
(17, 16, 'Hunyadi János utca 10.', 170, 1, 5),
(18, 17, 'Fő utca 1.', 120, 1, 3),
(19, 17, 'Fő utca 2.', 130, 1, 4),
(20, 18, 'Kossuth Lajos utca 1.', 110, 1, 2),
(21, 18, 'Kossuth Lajos utca 2.', 140, 2, 5),
(22, 19, 'Rákóczi utca 1.', 100, 3, 3),
(23, 19, 'Rákóczi utca 2.', 115, 1, 4),
(24, 20, 'Petőfi Sándor utca 1.', 125, 2, 2),
(25, 20, 'Petőfi Sándor utca 2.', 135, 1, 5),
(26, 21, 'Váci út 1.', 120, 1, 3),
(27, 21, 'Váci út 2.', 110, 2, 4),
(28, 22, 'Munkácsy Mihály utca 1.', 140, 3, 2),
(29, 22, 'Munkácsy Mihály utca 2.', 130, 1, 3),
(30, 23, 'Kossuth tér 1.', 115, 1, 4),
(31, 23, 'Kossuth tér 2.', 125, 2, 3),
(32, 24, 'Bajcsy-Zsilinszky utca 1.', 130, 2, 2),
(33, 24, 'Bajcsy-Zsilinszky utca 2.', 140, 3, 5),
(34, 25, 'Széchenyi István utca 1.', 100, 1, 3),
(35, 25, 'Széchenyi István utca 2.', 110, 2, 4),
(36, 26, 'Táncsics Mihály utca 1.', 120, 1, 2),
(37, 26, 'Táncsics Mihály utca 2.', 125, 1, 4),
(38, 27, 'Kossuth utca 1.', 135, 3, 5),
(39, 27, 'Kossuth utca 2.', 140, 2, 3),
(40, 28, 'Dózsa György utca 1.', 120, 1, 4),
(41, 28, 'Dózsa György utca 2.', 130, 2, 3),
(42, 29, 'Erzsébet utca 1.', 110, 1, 3),
(43, 29, 'Erzsébet utca 2.', 100, 1, 4),
(44, 30, 'Bocskai István utca 1.', 140, 2, 2),
(45, 30, 'Bocskai István utca 2.', 125, 3, 5),
(46, 31, 'Móricz Zsigmond utca 1.', 115, 2, 4),
(47, 31, 'Móricz Zsigmond utca 2.', 130, 1, 3),
(48, 32, 'Szent István körút 1.', 120, 3, 5),
(49, 32, 'Szent István körút 2.', 110, 2, 4),
(50, 33, 'Rózsa utca 1.', 130, 1, 2),
(51, 33, 'Rózsa utca 2.', 140, 2, 4),
(52, 34, 'Szabadság utca 1.', 110, 1, 3),
(53, 34, 'Szabadság utca 2.', 120, 1, 4),
(54, 35, 'Lámpás utca 1.', 125, 2, 2),
(55, 35, 'Lámpás utca 2.', 135, 3, 5),
(56, 36, 'Vörösmarty utca 1.', 100, 1, 3),
(57, 36, 'Vörösmarty utca 2.', 120, 2, 4),
(58, 37, 'Furulya utca 1.', 110, 3, 2),
(59, 37, 'Furulya utca 2.', 125, 1, 4),
(60, 38, 'Szent László utca 1.', 130, 1, 5),
(61, 38, 'Szent László utca 2.', 140, 2, 3),
(62, 39, 'Mária utca 1.', 120, 1, 3),
(63, 39, 'Mária utca 2.', 115, 3, 4),
(64, 40, 'Munkás utca 1.', 130, 2, 5),
(65, 40, 'Munkás utca 2.', 120, 1, 3),
(66, 41, 'Jókai Mór utca 1.', 135, 1, 4),
(67, 41, 'Jókai Mór utca 2.', 125, 2, 3),
(68, 42, 'Baross utca 1.', 120, 3, 5),
(69, 42, 'Baross utca 2.', 110, 2, 4),
(70, 43, 'Béke utca 1.', 100, 1, 2),
(71, 43, 'Béke utca 2.', 130, 3, 5),
(72, 44, 'Hunyadi János utca 1.', 125, 1, 3),
(73, 44, 'Hunyadi János utca 2.', 135, 2, 4),
(74, 45, 'Fő tér 1.', 110, 1, 2),
(75, 45, 'Fő tér 2.', 120, 1, 4),
(76, 46, 'Kálvin utca 1.', 140, 2, 5),
(77, 46, 'Kálvin utca 2.', 130, 3, 2),
(78, 47, 'Hóvirág utca 1.', 115, 1, 3),
(79, 47, 'Hóvirág utca 2.', 120, 1, 4),
(80, 48, 'Tavasz utca 1.', 130, 2, 2),
(81, 48, 'Tavasz utca 2.', 140, 3, 5),
(82, 49, 'Kertész utca 1.', 110, 1, 4),
(83, 49, 'Kertész utca 2.', 120, 2, 3),
(84, 50, 'Cseresznyés utca 1.', 125, 2, 5),
(85, 50, 'Cseresznyés utca 2.', 135, 1, 2),
(86, 51, 'Kúria utca 1.', 130, 3, 4),
(87, 51, 'Kúria utca 2.', 120, 2, 3),
(88, 52, 'Zöld utca 1.', 110, 1, 3),
(89, 52, 'Zöld utca 2.', 140, 1, 4),
(90, 53, 'Jázmin utca 1.', 120, 2, 2),
(91, 53, 'Jázmin utca 2.', 125, 3, 5),
(92, 54, 'Rózsa utca 1.', 130, 1, 3),
(93, 54, 'Rózsa utca 2.', 140, 2, 4),
(94, 55, 'Napfény utca 1.', 115, 1, 4),
(95, 55, 'Napfény utca 2.', 100, 3, 5),
(96, 56, 'Hársfa utca 1.', 125, 1, 2),
(97, 107, 'Fő tér 1.', 120, 1, 4),
(98, 107, 'Fő tér 2.', 90, 2, 2),
(99, 107, 'Fő tér 3.', 150, 3, 6),
(100, 107, 'Fő tér 4.', 60, 4, 1),
(101, 107, 'Fő tér 5.', 200, 5, 5),
(102, 108, 'Árpád út 1.', 100, 1, 3),
(103, 108, 'Árpád út 2.', 180, 2, 2),
(104, 108, 'Árpád út 3.', 130, 3, 4),
(105, 108, 'Árpád út 4.', 70, 4, 1),
(106, 108, 'Árpád út 5.', 220, 5, 6),
(107, 109, 'Vörösvári út 1.', 140, 1, 4),
(108, 109, 'Vörösvári út 2.', 95, 2, 3),
(109, 109, 'Vörösvári út 3.', 160, 3, 5),
(110, 109, 'Vörösvári út 4.', 85, 4, 2),
(111, 109, 'Vörösvári út 5.', 210, 5, 7),
(112, 110, 'Ady Endre út 1.', 125, 1, 4),
(113, 110, 'Ady Endre út 2.', 100, 2, 2),
(114, 110, 'Ady Endre út 3.', 145, 3, 5),
(115, 110, 'Ady Endre út 4.', 75, 4, 1),
(116, 110, 'Ady Endre út 5.', 230, 5, 6),
(117, 111, 'Kossuth tér 1.', 115, 1, 3),
(118, 111, 'Kossuth tér 2.', 85, 2, 2),
(119, 111, 'Kossuth tér 3.', 155, 3, 5),
(120, 111, 'Kossuth tér 4.', 95, 4, 2),
(121, 111, 'Kossuth tér 5.', 220, 5, 6),
(122, 112, 'Petőfi utca 1.', 140, 1, 4),
(123, 112, 'Petőfi utca 2.', 110, 2, 3),
(124, 112, 'Petőfi utca 3.', 165, 3, 6),
(125, 112, 'Petőfi utca 4.', 80, 4, 2),
(126, 112, 'Petőfi utca 5.', 240, 5, 7),
(127, 113, 'Pesti út 1.', 130, 1, 4),
(128, 113, 'Pesti út 2.', 90, 2, 2),
(129, 113, 'Pesti út 3.', 145, 3, 5),
(130, 113, 'Pesti út 4.', 65, 4, 1),
(131, 113, 'Pesti út 5.', 210, 5, 6),
(132, 114, 'Rákos út 1.', 125, 1, 3),
(133, 114, 'Rákos út 2.', 95, 2, 2),
(134, 114, 'Rákos út 3.', 150, 3, 5),
(135, 114, 'Rákos út 4.', 70, 4, 1),
(136, 114, 'Rákos út 5.', 230, 5, 7),
(137, 115, 'Bartók Béla utca 1.', 135, 1, 4),
(138, 115, 'Bartók Béla utca 2.', 100, 2, 3),
(139, 115, 'Bartók Béla utca 3.', 160, 3, 6),
(140, 115, 'Bartók Béla utca 4.', 75, 4, 2),
(141, 115, 'Bartók Béla utca 5.', 250, 5, 8);



CREATE TABLE `HouseholdTypes` (
  `ID` int(11) NOT NULL,
  `Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;




INSERT INTO `HouseholdTypes` (`ID`, `Type`) VALUES
(1, 'Családi ház'),
(2, 'Panel lakás'),
(3, 'Társasház'),
(4, 'Albérlet'),
(5, 'Luxus villa');




CREATE TABLE `HouseholdTool` (
  `ID` int(11) NOT NULL,
  `HouseholdID` int(11) DEFAULT NULL,
  `ToolID` int(11) DEFAULT NULL,
  `StartUsage` date DEFAULT NULL,
  `EndUsage` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;




INSERT INTO `HouseholdTool` (`ID`, `HouseholdID`, `ToolID`, `StartUsage`, `EndUsage`) VALUES
(1, 1, 1, '2020-01-01', NULL),
(2, 1, 2, '2019-05-01', NULL),
(3, 2, 3, '2021-03-15', NULL),
(4, 3, 4, '2018-08-10', '2023-01-01'),
(5, 4, 5, '2020-06-01', NULL),
(6, 5, 6, '2021-11-01', NULL),
(7, 6, 7, '2022-02-15', NULL),
(8, 7, 8, '2019-09-20', NULL);


CREATE TABLE `Counties` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `WaterConsumption` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;




INSERT INTO `Counties` (`ID`, `Name`, `WaterConsumption`) VALUES
(1, 'Bács-Kiskun', NULL),
(2, 'Baranya', NULL),
(3, 'Békés', NULL),
(4, 'Borsod-Abaúj-Zemplén', NULL),
(5, 'Csongrád-Csanád', NULL),
(6, 'Fejér', NULL),
(7, 'Győr-Moson-Sopron', NULL),
(8, 'Hajdú-Bihar', NULL),
(9, 'Heves', NULL),
(10, 'Jász-Nagykun-Szolnok', NULL),
(11, 'Komárom-Esztergom', NULL),
(12, 'Nógrád', NULL),
(13, 'Pest', NULL),
(14, 'Somogy', NULL),
(15, 'Szabolcs-Szatmár-Bereg', NULL),
(16, 'Tolna', NULL),
(17, 'Vas', NULL),
(18, 'Veszprém', NULL),
(19, 'Zala', NULL),
(20, 'Budapest', NULL);




CREATE TABLE `Settlements` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CountyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;



INSERT INTO `Settlements` (`ID`, `Name`, `CountyID`) VALUES
(1, 'Kecskemét', 1),
(2, 'Pécs', 2),
(3, 'Békéscsaba', 3),
(4, 'Miskolc', 4),
(5, 'Szeged', 5),
(6, 'Székesfehérvár', 6),
(7, 'Győr', 7),
(8, 'Debrecen', 8),
(9, 'Eger', 9),
(10, 'Szolnok', 10),
(11, 'Tatabánya', 11),
(12, 'Salgótarján', 12),
(13, 'Érd', 13),
(14, 'Kaposvár', 14),
(15, 'Nyíregyháza', 15),
(16, 'Szekszárd', 16),
(17, 'Szombathely', 17),
(18, 'Veszprém', 18),
(19, 'Zalaegerszeg', 19),
(20, 'Budapest', 20),
(21, 'Baja', 1),
(22, 'Kalocsa', 1),
(23, 'Kiskunhalas', 1),
(24, 'Kunszentmiklós', 1),
(25, 'Solt', 1),
(26, 'Szabadszállás', 1),
(27, 'Tiszakécske', 1),
(28, 'Izsák', 1),
(29, 'Lajosmizse', 1),
(30, 'Mélykút', 1),
(31, 'Pécsvárad', 2),
(32, 'Mohács', 2),
(33, 'Szigetvár', 2),
(34, 'Komló', 2),
(35, 'Harkány', 2),
(36, 'Villány', 2),
(37, 'Bóly', 2),
(38, 'Sellye', 2),
(39, 'Kozármisleny', 2),
(40, 'Beremend', 2),
(41, 'Gyomaendrőd', 3),
(42, 'Gyula', 3),
(43, 'Mezőberény', 3),
(44, 'Orosháza', 3),
(45, 'Sarkad', 3),
(46, 'Dévaványa', 3),
(47, 'Békés', 3),
(48, 'Vésztő', 3),
(49, 'Tótkomlós', 3),
(50, 'Mezőhegyes', 3),
(51, 'Kazincbarcika', 4),
(52, 'Ózd', 4),
(53, 'Sátoraljaújhely', 4),
(54, 'Tiszaújváros', 4),
(55, 'Szerencs', 4),
(56, 'Edelény', 4),
(57, 'Encs', 4),
(58, 'Mezőkövesd', 4),
(59, 'Putnok', 4),
(60, 'Tokaj', 4),
(61, 'Hódmezővásárhely', 5),
(62, 'Makó', 5),
(63, 'Csongrád', 5),
(64, 'Szentes', 5),
(65, 'Mórahalom', 5),
(66, 'Kistelek', 5),
(67, 'Balástya', 5),
(68, 'Ásotthalom', 5),
(69, 'Üllés', 5),
(70, 'Zákányszék', 5),
(71, 'Dunaújváros', 6),
(72, 'Gárdony', 6),
(73, 'Velence', 6),
(74, 'Ercsi', 6),
(75, 'Martonvásár', 6),
(76, 'Bicske', 6),
(77, 'Csákvár', 6),
(78, 'Pusztaszabolcs', 6),
(79, 'Polgárdi', 6),
(80, 'Sárbogárd', 6),
(81, 'Mosonmagyaróvár', 7),
(82, 'Sopron', 7),
(83, 'Kapuvár', 7),
(84, 'Csorna', 7),
(85, 'Pannonhalma', 7),
(86, 'Fertőd', 7),
(87, 'Tét', 7),
(88, 'Jánossomorja', 7),
(89, 'Rábapatona', 7),
(90, 'Győrújbarát', 7),
(91, 'Hajdúszoboszló', 8),
(92, 'Hajdúböszörmény', 8),
(93, 'Berettyóújfalu', 8),
(94, 'Hajdúnánás', 8),
(95, 'Derecske', 8),
(96, 'Balmazújváros', 8),
(97, 'Nyíradony', 8),
(98, 'Püspökladány', 8),
(99, 'Téglás', 8),
(100, 'Nádudvar', 8),
(101, 'Gyöngyös', 9),
(102, 'Hatvan', 9),
(103, 'Füzesabony', 9),
(104, 'Lőrinci', 9),
(105, 'Heves', 9),
(106, 'Recsk', 9),
(107, 'Mátrafüred', 9),
(108, 'Parád', 9),
(109, 'Tarnaméra', 9),
(110, 'Visonta', 9),
(111, 'Karcag', 10),
(112, 'Törökszentmiklós', 10),
(113, 'Jászberény', 10),
(114, 'Mezőtúr', 10),
(115, 'Kunhegyes', 10),
(116, 'Jászfényszaru', 10),
(117, 'Tiszaföldvár', 10),
(118, 'Tiszafüred', 10),
(119, 'Kunszentmárton', 10),
(120, 'Tiszajenő', 10),
(121, 'Tatabánya', 11),
(122, 'Komárom', 11),
(123, 'Esztergom', 11),
(124, 'Oroszlány', 11),
(125, 'Kisbér', 11),
(126, 'Hollókő', 12),
(127, 'Pásztó', 12),
(128, 'Bátonyterenye', 12),
(129, 'Szécsény', 12),
(130, 'Balassagyarmat', 12),
(131, 'Érd', 13),
(132, 'Budaörs', 13),
(133, 'Szentendre', 13),
(134, 'Gödöllő', 13),
(135, 'Vác', 13),
(136, 'Kaposvár', 14),
(137, 'Siófok', 14),
(138, 'Marcali', 14),
(139, 'Nagyatád', 14),
(140, 'Fonyód', 14),
(141, 'Nyíregyháza', 15),
(142, 'Mátészalka', 15),
(143, 'Vásárosnamény', 15),
(144, 'Fehérgyarmat', 15),
(145, 'Kisvárda', 15),
(146, 'Szekszárd', 16),
(147, 'Bonyhád', 16),
(148, 'Tamási', 16),
(149, 'Paks', 16),
(150, 'Dombóvár', 16),
(151, 'Szombathely', 17),
(152, 'Körmend', 17),
(153, 'Szentgotthárd', 17),
(154, 'Vép', 17),
(155, 'Kőszeg', 17),
(156, 'Veszprém', 18),
(157, 'Ajka', 18),
(158, 'Pápa', 18),
(159, 'Balatonfüred', 18),
(160, 'Tapolca', 18),
(161, 'Zalaegerszeg', 19),
(162, 'Nagykanizsa', 19),
(163, 'Keszthely', 19),
(164, 'Lenti', 19),
(165, 'Zalakaros', 19),
(166, 'Budapest I. kerület', 20),
(167, 'Budapest II. kerület', 20),
(168, 'Budapest III. kerület', 20),
(169, 'Budapest IV. kerület', 20),
(170, 'Budapest V. kerület', 20),
(171, 'Óbuda', 20),
(172, 'Kispest', 20),
(173, 'Rákosmente', 20);



CREATE TABLE `Streets` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `SettlementID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;




INSERT INTO `Streets` (`ID`, `Name`, `SettlementID`) VALUES
(1, 'Andrássy út', 1),
(2, 'Kossuth Lajos utca', 1),
(3, 'Fő utca', 2),
(4, 'Petőfi Sándor utca', 3),
(5, 'Rákóczi út', 4),
(6, 'Ady Endre utca', 5),
(7, 'Bartók Béla utca', 1),
(8, 'Kossuth tér', 2),
(9, 'Rákóczi tér', 3),
(10, 'Ady Endre út', 4),
(11, 'Petőfi utca', 5),
(12, 'Széchenyi tér', 6),
(13, 'Arany János utca', 7),
(14, 'Dózsa György utca', 8),
(15, 'Deák Ferenc utca', 9),
(16, 'Hunyadi János utca', 10),
(17, 'Arany János utca', 121),
(18, 'Petőfi Sándor utca', 121),
(19, 'Rákóczi Ferenc utca', 121),
(20, 'Kossuth Lajos utca', 122),
(21, 'Széchenyi István utca', 122),
(22, 'Hunyadi János utca', 122),
(23, 'Bajcsy-Zsilinszky utca', 123),
(24, 'Damjanich utca', 123),
(25, 'Táncsics Mihály utca', 123),
(26, 'Bartók Béla utca', 124),
(27, 'Ady Endre utca', 124),
(28, 'Radnóti Miklós utca', 124),
(29, 'Szent István tér', 125),
(30, 'Jókai Mór utca', 125),
(31, 'Deák Ferenc utca', 125),
(32, 'Kőrösi Csoma Sándor utca', 126),
(33, 'Kazinczy Ferenc utca', 126),
(34, 'Liszt Ferenc utca', 126),
(35, 'Mikszáth Kálmán utca', 127),
(36, 'Juhász Gyula utca', 127),
(37, 'Csokonai Vitéz Mihály utca', 127),
(38, 'Toldi Miklós utca', 128),
(39, 'Babits Mihály utca', 128),
(40, 'János Vitéz utca', 128),
(41, 'Szondi György utca', 129),
(42, 'Rózsa Ferenc utca', 129),
(43, 'Szabadság tér', 129),
(44, 'Károlyi Mihály utca', 130),
(45, 'Teleki Blanka utca', 130),
(46, 'Báthory István utca', 130),
(47, 'Zrínyi Miklós utca', 131),
(48, 'Károly körút', 131),
(49, 'Nagy Imre utca', 131),
(50, 'Szent György utca', 132),
(51, 'Vörösmarty utca', 132),
(52, 'Bocskai utca', 132),
(53, 'Bem József utca', 133),
(54, 'Dózsa György út', 133),
(55, 'Lánchíd utca', 133),
(56, 'Szigeti út', 134),
(57, 'Hősök tere', 134),
(58, 'Fő tér', 134),
(59, 'Rákóczi tér', 135),
(60, 'Mátyás király utca', 135),
(61, 'Ferenc körút', 135),
(62, 'Árpád utca', 136),
(63, 'Kölcsey Ferenc utca', 136),
(64, 'Vasvári Pál utca', 136),
(65, 'Wesselényi Miklós utca', 137),
(66, 'Thököly Imre utca', 137),
(67, 'Hajnal utca', 137),
(68, 'Béri Balogh Ádám utca', 138),
(69, 'Hegyalja utca', 138),
(70, 'Tavasz utca', 138),
(71, 'Nyárfa utca', 139),
(72, 'Cseresznye utca', 139),
(73, 'Fűzfa utca', 139),
(74, 'Orgona utca', 140),
(75, 'Levendula utca', 140),
(76, 'Pipacs utca', 140),
(77, 'Napraforgó utca', 141),
(78, 'Szőlőhegy utca', 141),
(79, 'Várhegy utca', 141),
(80, 'Bocskai utca', 142),
(81, 'Domb utca', 142),
(82, 'Kert utca', 142),
(83, 'Hold utca', 143),
(84, 'Fenyő utca', 143),
(85, 'Vihar utca', 143),
(86, 'Havasi utca', 144),
(87, 'Jegenye utca', 144),
(88, 'Nyírfa utca', 144),
(89, 'Nyár utca', 145),
(90, 'Tél utca', 145),
(91, 'Ősz utca', 145),
(92, 'Balaton utca', 146),
(93, 'Duna utca', 146),
(94, 'Tisza utca', 146),
(95, 'Mecsek utca', 147),
(96, 'Bakony utca', 147),
(97, 'Mátra utca', 147),
(98, 'Fáy András utca', 148),
(99, 'Áprily Lajos utca', 148),
(100, 'Somlyó utca', 148),
(101, 'Rákóczi Ferenc tér', 149),
(102, 'Széchenyi István tér', 149),
(103, 'Kossuth Lajos tér', 149),
(104, 'Bartók Béla tér', 150),
(105, 'Radnóti Miklós tér', 150),
(106, 'Ady Endre tér', 150),
(107, 'Fő tér', 171),
(108, 'Árpád út', 171),
(109, 'Vörösvári út', 171),
(110, 'Ady Endre út', 172),
(111, 'Kossuth tér', 172),
(112, 'Petőfi utca', 172),
(113, 'Pesti út', 173),
(114, 'Rákos út', 173),
(115, 'Bartók Béla utca', 173);

ALTER TABLE `Tools`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `Households`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `StreetID` (`StreetID`),
  ADD KEY `TypeID` (`TypeID`);


ALTER TABLE `HouseholdTypes`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `HouseholdTool`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HaztartasID` (`HaztartasID`),
  ADD KEY `EszkozID` (`EszkozID`);


ALTER TABLE `Counties`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `Settlements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CountyID` (`CountyID`);


ALTER TABLE `Streets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SettlementID` (`SettlementID`);


ALTER TABLE `Households`
  ADD CONSTRAINT `Households_ibfk_1` FOREIGN KEY (`StreetID`) REFERENCES `Streets` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `Households_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `HouseholdTypes` (`ID`) ON DELETE SET NULL;


ALTER TABLE `lakaseszkoz`
  ADD CONSTRAINT `lakaseszkoz_ibfk_1` FOREIGN KEY (`HouseholdID`) REFERENCES `Households` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `lakaseszkoz_ibfk_2` FOREIGN KEY (`ToolID`) REFERENCES `Tools` (`ID`) ON DELETE CASCADE;


ALTER TABLE `Settlements`
  ADD CONSTRAINT `Settlements_ibfk_1` FOREIGN KEY (`CountyID`) REFERENCES `Counties` (`ID`) ON DELETE CASCADE;


ALTER TABLE `Streets`
  ADD CONSTRAINT `Streets_ibfk_1` FOREIGN KEY (`SettlementID`) REFERENCES `Settlements` (`ID`) ON DELETE CASCADE;
COMMIT;
