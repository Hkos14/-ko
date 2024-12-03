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
(7, 6, 'Ady Endre utca 7.', 100, 2, 2);




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
(20, 'Budapest', 20);




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
(6, 'Ady Endre utca', 5);


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
