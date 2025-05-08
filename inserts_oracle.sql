begin;

LOCK TABLE marcas IN EXCLUSIVE mode;

INSERT INTO
    marcas
VALUES
    (1, 'Abarth'),
(2, 'Alfa Romeo'),
(3, 'Aro'),
(4, 'Asia'),
(5, 'Asia Motors'),
(6, 'Aston Martin'),
(7, 'Audi'),
(8, 'Austin'),
(9, 'Auverland'),
(10, 'Bentley'),
(11, 'Bertone'),
(12, 'Bmw'),
(13, 'Cadillac'),
(14, 'Chevrolet'),
(15, 'Chrysler'),
(16, 'Citroen'),
(17, 'Corvette'),
(18, 'Dacia'),
(19, 'Daewoo'),
(20, 'Daf'),
(21, 'Daihatsu'),
(22, 'Daimler'),
(23, 'Dodge'),
(24, 'Ferrari'),
(25, 'Fiat'),
(26, 'Ford'),
(27, 'Galloper'),
(28, 'Gmc'),
(29, 'Honda'),
(30, 'Hummer'),
(31, 'Hyundai'),
(32, 'Infiniti'),
(33, 'Innocenti'),
(34, 'Isuzu'),
(35, 'Iveco'),
(36, 'Iveco-pegaso'),
(37, 'Jaguar'),
(38, 'Jeep'),
(39, 'Kia'),
(40, 'Lada'),
(41, 'Lamborghini'),
(42, 'Lancia'),
(43, 'Land-rover'),
(44, 'Ldv'),
(45, 'Lexus'),
(46, 'Lotus'),
(47, 'Mahindra'),
(48, 'Maserati'),
(49, 'Maybach'),
(50, 'Mazda'),
(51, 'Mercedes-benz'),
(52, 'Mg'),
(53, 'Mini'),
(54, 'Mitsubishi'),
(55, 'Morgan'),
(56, 'Nissan'),
(57, 'Opel'),
(58, 'Peugeot'),
(59, 'Pontiac'),
(60, 'Porsche'),
(61, 'Renault'),
(62, 'Rolls-royce'),
(63, 'Rover'),
(64, 'Saab'),
(65, 'Santana'),
(66, 'Seat'),
(67, 'Skoda'),
(68, 'Smart'),
(69, 'Ssangyong'),
(70, 'Subaru'),
(71, 'Suzuki'),
(72, 'Talbot'),
(73, 'Tata'),
(74, 'Toyota'),
(75, 'Umm'),
(76, 'Vaz'),
(77, 'Volkswagen'),
(78, 'Volvo'),
(79, 'Wartburg');

commit;

begin;

LOCK table modelos IN EXCLUSIVE mode;

INSERT INTO
    modelos
VALUES
    (1, '500', 1),
(2, 'Grande Punto', 1),
(3, 'Punto Evo', 1),
(4, '500c', 1),
(5, '695', 1),
(6, 'Punto', 1),
(7, '155', 2),
(8, '156', 2),
(9, '159', 2),
(10, '164', 2),
(11, '145', 2),
(12, '147', 2),
(13, '146', 2),
(14, 'Gtv', 2),
(15, 'Spider', 2),
(16, '166', 2),
(17, 'Gt', 2),
(18, 'Crosswagon', 2),
(19, 'Brera', 2),
(20, '90', 2),
(21, '75', 2),
(22, '33', 2),
(23, 'Giulietta', 2),
(24, 'Sprint', 2),
(25, 'Mito', 2),
(26, 'Expander', 3),
(27, '10', 3),
(28, '24', 3),
(29, 'Dacia', 3),
(30, 'Rocsta', 4),
(31, 'Rocsta', 5),
(32, 'Db7', 6),
(33, 'V8', 6),
(34, 'Db9', 6),
(35, 'Vanquish', 6),
(36, 'V8 Vantage', 6),
(37, 'Vantage', 6),
(38, 'Dbs', 6),
(39, 'Volante', 6),
(40, 'Virage', 6),
(41, 'Vantage V8', 6),
(42, 'Vantage V12', 6),
(43, 'Rapide', 6),
(44, 'Cygnet', 6),
(45, '80', 7),
(46, 'A4', 7),
(47, 'A6', 7),
(48, 'S6', 7),
(49, 'Coupe', 7),
(50, 'S2', 7),
(51, 'Rs2', 7),
(52, 'A8', 7),
(53, 'Cabriolet', 7),
(54, 'S8', 7),
(55, 'A3', 7),
(56, 'S4', 7),
(57, 'Tt', 7),
(58, 'S3', 7),
(59, 'Allroad Quattro', 7),
(60, 'Rs4', 7),
(61, 'A2', 7),
(62, 'Rs6', 7),
(63, 'Q7', 7),
(64, 'R8', 7),
(65, 'A5', 7),
(66, 'S5', 7),
(67, 'V8', 7),
(68, '200', 7),
(69, '100', 7),
(70, '90', 7),
(71, 'Tts', 7),
(72, 'Q5', 7),
(73, 'A4 Allroad Quattro', 7),
(74, 'Tt Rs', 7),
(75, 'Rs5', 7),
(76, 'A1', 7),
(77, 'A7', 7),
(78, 'Rs3', 7),
(79, 'Q3', 7),
(80, 'A6 Allroad Quattro', 7),
(81, 'S7', 7),
(82, 'Sq5', 7),
(83, 'Mini', 8),
(84, 'Montego', 8),
(85, 'Maestro', 8),
(86, 'Metro', 8),
(87, 'Mini Moke', 8),
(88, 'Diesel', 9),
(89, 'Brooklands', 10),
(90, 'Turbo', 10),
(91, 'Continental', 10),
(92, 'Azure', 10),
(93, 'Arnage', 10),
(94, 'Continental Gt', 10),
(95, 'Continental Flying Spur', 10),
(96, 'Turbo R', 10),
(97, 'Mulsanne', 10),
(98, 'Eight', 10),
(99, 'Continental Gtc', 10),
(100, 'Continental Supersports', 10),
(101, 'Freeclimber Diesel', 11),
(102, 'Serie 3', 12),
(103, 'Serie 5', 12),
(104, 'Compact', 12),
(105, 'Serie 7', 12),
(106, 'Serie 8', 12),
(107, 'Z3', 12),
(108, 'Z4', 12),
(109, 'Z8', 12),
(110, 'X5', 12),
(111, 'Serie 6', 12),
(112, 'X3', 12),
(113, 'Serie 1', 12),
(114, 'Z1', 12),
(115, 'X6', 12),
(116, 'X1', 12),
(117, 'Seville', 13),
(118, 'Sts', 13),
(119, 'El Dorado', 13),
(120, 'Cts', 13),
(121, 'Xlr', 13),
(122, 'Srx', 13),
(123, 'Escalade', 13),
(124, 'Bls', 13),
(125, 'Corvette', 14),
(126, 'Blazer', 14),
(127, 'Astro', 14),
(128, 'Nubira', 14),
(129, 'Evanda', 14),
(130, 'Trans Sport', 14),
(131, 'Camaro', 14),
(132, 'Matiz', 14),
(133, 'Alero', 14),
(134, 'Tahoe', 14),
(135, 'Tacuma', 14),
(136, 'Trailblazer', 14),
(137, 'Kalos', 14),
(138, 'Aveo', 14),
(139, 'Lacetti', 14),
(140, 'Epica', 14),
(141, 'Captiva', 14),
(142, 'Hhr', 14),
(143, 'Cruze', 14),
(144, 'Spark', 14),
(145, 'Orlando', 14),
(146, 'Volt', 14),
(147, 'Malibu', 14),
(148, 'Vision', 15),
(149, '300m', 15),
(150, 'Grand Voyager', 15),
(151, 'Viper', 15),
(152, 'Neon', 15),
(153, 'Voyager', 15),
(154, 'Stratus', 15),
(155, 'Sebring', 15),
(156, 'Sebring 200c', 15),
(157, 'New Yorker', 15),
(158, 'Pt Cruiser', 15),
(159, 'Crossfire', 15),
(160, '300c', 15),
(161, 'Le Baron', 15),
(162, 'Saratoga', 15),
(163, 'Xantia', 16),
(164, 'Xm', 16),
(165, 'Ax', 16),
(166, 'Zx', 16),
(167, 'Evasion', 16),
(168, 'C8', 16),
(169, 'Saxo', 16),
(170, 'C2', 16),
(171, 'Xsara', 16),
(172, 'C4', 16),
(173, 'Xsara Picasso', 16),
(174, 'C5', 16),
(175, 'C3', 16),
(176, 'C3 Pluriel', 16),
(177, 'C1', 16),
(178, 'C6', 16),
(179, 'Grand C4 Picasso', 16),
(180, 'C4 Picasso', 16),
(181, 'Ccrosser', 16),
(182, 'C15', 16),
(183, 'Jumper', 16),
(184, 'Jumpy', 16),
(185, 'Berlingo', 16),
(186, 'Bx', 16),
(187, 'C25', 16),
(188, 'Cx', 16),
(189, 'Gsa', 16),
(190, 'Visa', 16),
(191, 'Lna', 16),
(192, '2cv', 16),
(193, 'Nemo', 16),
(194, 'C4 Sedan', 16),
(195, 'Berlingo First', 16),
(196, 'C3 Picasso', 16),
(197, 'Ds3', 16),
(198, 'Czero', 16),
(199, 'Ds4', 16),
(200, 'Ds5', 16),
(201, 'C4 Aircross', 16),
(202, 'Celysee', 16),
(203, 'Corvette', 17),
(204, 'Contac', 18),
(205, 'Logan', 18),
(206, 'Sandero', 18),
(207, 'Duster', 18),
(208, 'Lodgy', 18),
(209, 'Nexia', 19),
(210, 'Aranos', 19),
(211, 'Lanos', 19),
(212, 'Nubira', 19),
(213, 'Compact', 19),
(214, 'Nubira Compact', 19),
(215, 'Leganza', 19),
(216, 'Evanda', 19),
(217, 'Matiz', 19),
(218, 'Tacuma', 19),
(219, 'Kalos', 19),
(220, 'Lacetti', 19),
(221, 'Applause', 21),
(222, 'Charade', 21),
(223, 'Rocky', 21),
(224, 'Feroza', 21),
(225, 'Terios', 21),
(226, 'Sirion', 21),
(227, 'Serie Xj', 22),
(228, 'Xj', 22),
(229, 'Double Six', 22),
(230, 'Six', 22),
(231, 'Series Iii', 22),
(232, 'Viper', 23),
(233, 'Caliber', 23),
(234, 'Nitro', 23),
(235, 'Avenger', 23),
(236, 'Journey', 23),
(237, 'F355', 24),
(238, '360', 24),
(239, 'F430', 24),
(240, 'F512 M', 24),
(241, '550 Maranello', 24),
(242, '575m Maranello', 24),
(243, '599', 24),
(244, '456', 24),
(245, '456m', 24),
(246, '612', 24),
(247, 'F50', 24),
(248, 'Enzo', 24),
(249, 'Superamerica', 24),
(250, '430', 24),
(251, '348', 24),
(252, 'Testarossa', 24),
(253, '512', 24),
(254, '355', 24),
(255, 'F40', 24),
(256, '412', 24),
(257, 'Mondial', 24),
(258, '328', 24),
(259, 'California', 24),
(260, '458', 24),
(261, 'Ff', 24),
(262, 'Croma', 25),
(263, 'Cinquecento', 25),
(264, 'Seicento', 25),
(265, 'Punto', 25),
(266, 'Grande Punto', 25),
(267, 'Panda', 25),
(268, 'Tipo', 25),
(269, 'Coupe', 25),
(270, 'Uno', 25),
(271, 'Ulysse', 25),
(272, 'Tempra', 25),
(273, 'Marea', 25),
(274, 'Barchetta', 25),
(275, 'Bravo', 25),
(276, 'Stilo', 25),
(277, 'Brava', 25),
(278, 'Palio Weekend', 25),
(279, '600', 25),
(280, 'Multipla', 25),
(281, 'Idea', 25),
(282, 'Sedici', 25),
(283, 'Linea', 25),
(284, '500', 25),
(285, 'Fiorino', 25),
(286, 'Ducato', 25),
(287, 'Doblo Cargo', 25),
(288, 'Doblo', 25),
(289, 'Strada', 25),
(290, 'Regata', 25),
(291, 'Talento', 25),
(292, 'Argenta', 25),
(293, 'Ritmo', 25),
(294, 'Punto Classic', 25),
(295, 'Qubo', 25),
(296, 'Punto Evo', 25),
(297, '500c', 25),
(298, 'Freemont', 25),
(299, 'Panda Classic', 25),
(300, '500l', 25),
(301, 'Maverick', 26),
(302, 'Escort', 26),
(303, 'Focus', 26),
(304, 'Mondeo', 26),
(305, 'Scorpio', 26),
(306, 'Fiesta', 26),
(307, 'Probe', 26),
(308, 'Explorer', 26),
(309, 'Galaxy', 26),
(310, 'Ka', 26),
(311, 'Puma', 26),
(312, 'Cougar', 26),
(313, 'Focus Cmax', 26),
(314, 'Fusion', 26),
(315, 'Streetka', 26),
(316, 'Cmax', 26),
(317, 'Smax', 26),
(318, 'Transit', 26),
(319, 'Courier', 26),
(320, 'Ranger', 26),
(321, 'Sierra', 26),
(322, 'Orion', 26),
(323, 'Pick Up', 26),
(324, 'Capri', 26),
(325, 'Granada', 26),
(326, 'Kuga', 26),
(327, 'Grand Cmax', 26),
(328, 'Bmax', 26),
(329, 'Tourneo Custom', 26),
(330, 'Exceed', 27),
(331, 'Santamo', 27),
(332, 'Super Exceed', 27),
(333, 'Accord', 29),
(334, 'Civic', 29),
(335, 'Crx', 29),
(336, 'Prelude', 29),
(337, 'Nsx', 29),
(338, 'Legend', 29),
(339, 'Crv', 29),
(340, 'Hrv', 29),
(341, 'Logo', 29),
(342, 'S2000', 29),
(343, 'Stream', 29),
(344, 'Jazz', 29),
(345, 'Frv', 29),
(346, 'Concerto', 29),
(347, 'Insight', 29),
(348, 'Crz', 29),
(349, 'H2', 30),
(350, 'H3', 30),
(351, 'H3t', 30),
(352, 'Lantra', 31),
(353, 'Sonata', 31),
(354, 'Elantra', 31),
(355, 'Accent', 31),
(356, 'Scoupe', 31),
(357, 'Coupe', 31),
(358, 'Atos', 31),
(359, 'H1', 31),
(360, 'Atos Prime', 31),
(361, 'Xg', 31),
(362, 'Trajet', 31),
(363, 'Santa Fe', 31),
(364, 'Terracan', 31),
(365, 'Matrix', 31),
(366, 'Getz', 31),
(367, 'Tucson', 31),
(368, 'I30', 31),
(369, 'Pony', 31),
(370, 'Grandeur', 31),
(371, 'I10', 31),
(372, 'I800', 31),
(373, 'Sonata Fl', 31),
(374, 'Ix55', 31),
(375, 'I20', 31),
(376, 'Ix35', 31),
(377, 'Ix20', 31),
(378, 'Genesis', 31),
(379, 'I40', 31),
(380, 'Veloster', 31),
(381, 'G', 32),
(382, 'Ex', 32),
(383, 'Fx', 32),
(384, 'M', 32),
(385, 'Elba', 33),
(386, 'Minitre', 33),
(387, 'Trooper', 34),
(388, 'Pick Up', 34),
(389, 'D Max', 34),
(390, 'Rodeo', 34),
(391, 'Dmax', 34),
(392, 'Trroper', 34),
(393, 'Daily', 35),
(394, 'Massif', 35),
(395, 'Daily', 36),
(396, 'Duty', 36),
(397, 'Serie Xj', 37),
(398, 'Serie Xk', 37),
(399, 'Xj', 37),
(400, 'Stype', 37),
(401, 'Xf', 37),
(402, 'Xtype', 37),
(403, 'Wrangler', 38),
(404, 'Cherokee', 38),
(405, 'Grand Cherokee', 38),
(406, 'Commander', 38),
(407, 'Compass', 38),
(408, 'Wrangler Unlimited', 38),
(409, 'Patriot', 38),
(410, 'Sportage', 39),
(411, 'Sephia', 39),
(412, 'Sephia Ii', 39),
(413, 'Pride', 39),
(414, 'Clarus', 39),
(415, 'Shuma', 39),
(416, 'Carnival', 39),
(417, 'Joice', 39),
(418, 'Magentis', 39),
(419, 'Carens', 39),
(420, 'Rio', 39),
(421, 'Cerato', 39),
(422, 'Sorento', 39),
(423, 'Opirus', 39),
(424, 'Picanto', 39),
(425, 'Ceed', 39),
(426, 'Ceed Sporty Wagon', 39),
(427, 'Proceed', 39),
(428, 'K2500 Frontier', 39),
(429, 'K2500', 39),
(430, 'Soul', 39),
(431, 'Venga', 39),
(432, 'Optima', 39),
(433, 'Ceed Sportswagon', 39),
(434, 'Samara', 40),
(435, 'Niva', 40),
(436, 'Sagona', 40),
(437, 'Stawra 2110', 40),
(438, '214', 40),
(439, 'Kalina', 40),
(440, 'Serie 2100', 40),
(441, 'Priora', 40),
(442, 'Gallardo', 41),
(443, 'Murcielago', 41),
(444, 'Aventador', 41),
(445, 'Delta', 42),
(446, 'K', 42),
(447, 'Y10', 42),
(448, 'Dedra', 42),
(449, 'Lybra', 42),
(450, 'Z', 42),
(451, 'Y', 42),
(452, 'Ypsilon', 42),
(453, 'Thesis', 42),
(454, 'Phedra', 42),
(455, 'Musa', 42),
(456, 'Thema', 42),
(457, 'Zeta', 42),
(458, 'Kappa', 42),
(459, 'Trevi', 42),
(460, 'Prisma', 42),
(461, 'A112', 42),
(462, 'Ypsilon Elefantino', 42),
(463, 'Voyager', 42),
(464, 'Range Rover', 43),
(465, 'Defender', 43),
(466, 'Discovery', 43),
(467, 'Freelander', 43),
(468, 'Range Rover Sport', 43),
(469, 'Discovery 4', 43),
(470, 'Range Rover Evoque', 43),
(471, 'Maxus', 44),
(472, 'Ls400', 45),
(473, 'Ls430', 45),
(474, 'Gs300', 45),
(475, 'Is200', 45),
(476, 'Rx300', 45),
(477, 'Gs430', 45),
(478, 'Gs460', 45),
(479, 'Sc430', 45),
(480, 'Is300', 45),
(481, 'Is250', 45),
(482, 'Rx400h', 45),
(483, 'Is220d', 45),
(484, 'Rx350', 45),
(485, 'Gs450h', 45),
(486, 'Ls460', 45),
(487, 'Ls600h', 45),
(488, 'Ls', 45),
(489, 'Gs', 45),
(490, 'Is', 45),
(491, 'Sc', 45),
(492, 'Rx', 45),
(493, 'Ct', 45),
(494, 'Elise', 46),
(495, 'Exige', 46),
(496, 'Bolero Pickup', 47),
(497, 'Goa Pickup', 47),
(498, 'Goa', 47),
(499, 'Cj', 47),
(500, 'Pikup', 47),
(501, 'Thar', 47),
(502, 'Ghibli', 48),
(503, 'Shamal', 48),
(504, 'Quattroporte', 48),
(505, '3200 Gt', 48),
(506, 'Coupe', 48),
(507, 'Spyder', 48),
(508, 'Gransport', 48),
(509, 'Granturismo', 48),
(510, '430', 48),
(511, 'Biturbo', 48),
(512, '228', 48),
(513, '224', 48),
(514, 'Grancabrio', 48),
(515, 'Maybach', 49),
(516, 'Xedos 6', 50),
(517, '626', 50),
(518, '121', 50),
(519, 'Xedos 9', 50),
(520, '323', 50),
(521, 'Mx3', 50),
(522, 'Rx7', 50),
(523, 'Mx5', 50),
(524, 'Mazda3', 50),
(525, 'Mpv', 50),
(526, 'Demio', 50),
(527, 'Premacy', 50),
(528, 'Tribute', 50),
(529, 'Mazda6', 50),
(530, 'Mazda2', 50),
(531, 'Rx8', 50),
(532, 'Mazda5', 50),
(533, 'Cx7', 50),
(534, 'Serie B', 50),
(535, 'B2500', 50),
(536, 'Bt50', 50),
(537, 'Mx6', 50),
(538, '929', 50),
(539, 'Cx5', 50),
(540, 'Clase C', 51),
(541, 'Clase E', 51),
(542, 'Clase Sl', 51),
(543, 'Clase S', 51),
(544, 'Clase Cl', 51),
(545, 'Clase G', 51),
(546, 'Clase Slk', 51),
(547, 'Clase V', 51),
(548, 'Viano', 51),
(549, 'Clase Clk', 51),
(550, 'Clase A', 51),
(551, 'Clase M', 51),
(552, 'Vaneo', 51),
(553, 'Slklasse', 51),
(554, 'Slr Mclaren', 51),
(555, 'Clase Cls', 51),
(556, 'Clase R', 51),
(557, 'Clase Gl', 51),
(558, 'Clase B', 51),
(559, '100d', 51),
(560, '140d', 51),
(561, '180d', 51),
(562, 'Sprinter', 51),
(563, 'Vito', 51),
(564, 'Transporter', 51),
(565, '280', 51),
(566, '220', 51),
(567, '200', 51),
(568, '190', 51),
(569, '600', 51),
(570, '400', 51),
(571, 'Clase Sl R129', 51),
(572, '300', 51),
(573, '500', 51),
(574, '420', 51),
(575, '260', 51),
(576, '230', 51),
(577, 'Clase Clc', 51),
(578, 'Clase Glk', 51),
(579, 'Sls Amg', 51),
(580, 'Mgf', 52),
(581, 'Tf', 52),
(582, 'Zr', 52),
(583, 'Zs', 52),
(584, 'Zt', 52),
(585, 'Ztt', 52),
(586, 'Mini', 52),
(587, 'Countryman', 52),
(588, 'Paceman', 52),
(589, 'Montero', 54),
(590, 'Galant', 54),
(591, 'Colt', 54),
(592, 'Space Wagon', 54),
(593, 'Space Runner', 54),
(594, 'Space Gear', 54),
(595, '3000 Gt', 54),
(596, 'Carisma', 54),
(597, 'Eclipse', 54),
(598, 'Space Star', 54),
(599, 'Montero Sport', 54),
(600, 'Montero Io', 54),
(601, 'Outlander', 54),
(602, 'Lancer', 54),
(603, 'Grandis', 54),
(604, 'L200', 54),
(605, 'Canter', 54),
(606, '300 Gt', 54),
(607, 'Asx', 54),
(608, 'Imiev', 54),
(609, '44', 55),
(610, 'Plus 8', 55),
(611, 'Aero 8', 55),
(612, 'V6', 55),
(613, 'Roadster', 55),
(614, '4', 55),
(615, 'Plus 4', 55),
(616, 'Terrano Ii', 56),
(617, 'Terrano', 56),
(618, 'Micra', 56),
(619, 'Sunny', 56),
(620, 'Primera', 56),
(621, 'Serena', 56),
(622, 'Patrol', 56),
(623, 'Maxima Qx', 56),
(624, '200 Sx', 56),
(625, '300 Zx', 56),
(626, 'Patrol Gr', 56),
(627, '100 Nx', 56),
(628, 'Almera', 56),
(629, 'Pathfinder', 56),
(630, 'Almera Tino', 56),
(631, 'Xtrail', 56),
(632, '350z', 56),
(633, 'Murano', 56),
(634, 'Note', 56),
(635, 'Qashqai', 56),
(636, 'Tiida', 56),
(637, 'Vanette', 56),
(638, 'Trade', 56),
(639, 'Vanette Cargo', 56),
(640, 'Pickup', 56),
(641, 'Navara', 56),
(642, 'Cabstar E', 56),
(643, 'Cabstar', 56),
(644, 'Maxima', 56),
(645, 'Camion', 56),
(646, 'Prairie', 56),
(647, 'Bluebird', 56),
(648, 'Np300 Pick Up', 56),
(649, 'Qashqai2', 56),
(650, 'Pixo', 56),
(651, 'Gtr', 56),
(652, '370z', 56),
(653, 'Cube', 56),
(654, 'Juke', 56),
(655, 'Leaf', 56),
(656, 'Evalia', 56),
(657, 'Astra', 57),
(658, 'Vectra', 57),
(659, 'Calibra', 57),
(660, 'Corsa', 57),
(661, 'Omega', 57),
(662, 'Frontera', 57),
(663, 'Tigra', 57),
(664, 'Monterey', 57),
(665, 'Sintra', 57),
(666, 'Zafira', 57),
(667, 'Agila', 57),
(668, 'Speedster', 57),
(669, 'Signum', 57),
(670, 'Meriva', 57),
(671, 'Antara', 57),
(672, 'Gt', 57),
(673, 'Combo', 57),
(674, 'Movano', 57),
(675, 'Vivaro', 57),
(676, 'Kadett', 57),
(677, 'Monza', 57),
(678, 'Senator', 57),
(679, 'Rekord', 57),
(680, 'Manta', 57),
(681, 'Ascona', 57),
(682, 'Insignia', 57),
(683, 'Zafira Tourer', 57),
(684, 'Ampera', 57),
(685, 'Mokka', 57),
(686, 'Adam', 57),
(687, '306', 58),
(688, '605', 58),
(689, '106', 58),
(690, '205', 58),
(691, '405', 58),
(692, '406', 58),
(693, '806', 58),
(694, '807', 58),
(695, '407', 58),
(696, '307', 58),
(697, '206', 58),
(698, '607', 58),
(699, '308', 58),
(700, '307 Sw', 58),
(701, '206 Sw', 58),
(702, '407 Sw', 58),
(703, '1007', 58),
(704, '107', 58),
(705, '207', 58),
(706, '4007', 58),
(707, 'Boxer', 58),
(708, 'Partner', 58),
(709, 'J5', 58),
(710, '604', 58),
(711, '505', 58),
(712, '309', 58),
(713, 'Bipper', 58),
(714, 'Partner Origin', 58),
(715, '3008', 58),
(716, '5008', 58),
(717, 'Rcz', 58),
(718, '508', 58),
(719, 'Ion', 58),
(720, '208', 58),
(721, '4008', 58),
(722, 'Trans Sport', 59),
(723, 'Firebird', 59),
(724, 'Trans Am', 59),
(725, '911', 60),
(726, 'Boxster', 60),
(727, 'Cayenne', 60),
(728, 'Carrera Gt', 60),
(729, 'Cayman', 60),
(730, '928', 60),
(731, '968', 60),
(732, '944', 60),
(733, '924', 60),
(734, 'Panamera', 60),
(735, '918', 60),
(736, 'Megane', 61),
(737, 'Safrane', 61),
(738, 'Laguna', 61),
(739, 'Clio', 61),
(740, 'Twingo', 61),
(741, 'Nevada', 61),
(742, 'Espace', 61),
(743, 'Spider', 61),
(744, 'Scenic', 61),
(745, 'Grand Espace', 61),
(746, 'Avantime', 61),
(747, 'Vel Satis', 61),
(748, 'Grand Scenic', 61),
(749, 'Clio Campus', 61),
(750, 'Modus', 61),
(751, 'Express', 61),
(752, 'Trafic', 61),
(753, 'Master', 61),
(754, 'Kangoo', 61),
(755, 'Mascott', 61),
(756, 'Master Propulsion', 61),
(757, 'Maxity', 61),
(758, 'R19', 61),
(759, 'R25', 61),
(760, 'R5', 61),
(761, 'R21', 61),
(762, 'R4', 61),
(763, 'Alpine', 61),
(764, 'Fuego', 61),
(765, 'R18', 61),
(766, 'R11', 61),
(767, 'R9', 61),
(768, 'R6', 61),
(769, 'Grand Modus', 61),
(770, 'Kangoo Combi', 61),
(771, 'Koleos', 61),
(772, 'Fluence', 61),
(773, 'Wind', 61),
(774, 'Latitude', 61),
(775, 'Grand Kangoo Combi', 61),
(776, 'Siver Dawn', 62),
(777, 'Silver Spur', 62),
(778, 'Park Ward', 62),
(779, 'Silver Seraph', 62),
(780, 'Corniche', 62),
(781, 'Phantom', 62),
(782, 'Touring', 62),
(783, 'Silvier', 62),
(784, '800', 63),
(785, '600', 63),
(786, '100', 63),
(787, '200', 63),
(788, 'Coupe', 63),
(789, '400', 63),
(790, '45', 63),
(791, 'Cabriolet', 63),
(792, '25', 63),
(793, 'Mini', 63),
(794, '75', 63),
(795, 'Streetwise', 63),
(796, 'Sd', 63),
(797, '900', 64),
(798, '93', 64),
(799, '9000', 64),
(800, '95', 64),
(801, '93x', 64),
(802, '94x', 64),
(803, '300', 65),
(804, '350', 65),
(805, 'Anibal', 65),
(806, 'Anibal Pick Up', 65),
(807, 'Ibiza', 66),
(808, 'Cordoba', 66),
(809, 'Toledo', 66),
(810, 'Marbella', 66),
(811, 'Alhambra', 66),
(812, 'Arosa', 66),
(813, 'Leon', 66),
(814, 'Altea', 66),
(815, 'Altea Xl', 66),
(816, 'Altea Freetrack', 66),
(817, 'Terra', 66),
(818, 'Inca', 66),
(819, 'Malaga', 66),
(820, 'Ronda', 66),
(821, 'Exeo', 66),
(822, 'Mii', 66),
(823, 'Felicia', 67),
(824, 'Forman', 67),
(825, 'Octavia', 67),
(826, 'Octavia Tour', 67),
(827, 'Fabia', 67),
(828, 'Superb', 67),
(829, 'Roomster', 67),
(830, 'Scout', 67),
(831, 'Pickup', 67),
(832, 'Favorit', 67),
(833, '130', 67),
(834, 'S', 67),
(835, 'Yeti', 67),
(836, 'Citigo', 67),
(837, 'Rapid', 67),
(838, 'Smart', 68),
(839, 'Citycoupe', 68),
(840, 'Fortwo', 68),
(841, 'Cabrio', 68),
(842, 'Crossblade', 68),
(843, 'Roadster', 68),
(844, 'Forfour', 68),
(845, 'Korando', 69),
(846, 'Family', 69),
(847, 'K4d', 69),
(848, 'Musso', 69),
(849, 'Korando Kj', 69),
(850, 'Rexton', 69),
(851, 'Rexton Ii', 69),
(852, 'Rodius', 69),
(853, 'Kyron', 69),
(854, 'Actyon', 69),
(855, 'Sports Pick Up', 69),
(856, 'Actyon Sports Pick Up', 69),
(857, 'Kodando', 69),
(858, 'Legacy', 70),
(859, 'Impreza', 70),
(860, 'Svx', 70),
(861, 'Justy', 70),
(862, 'Outback', 70),
(863, 'Forester', 70),
(864, 'G3x Justy', 70),
(865, 'B9 Tribeca', 70),
(866, 'Xt', 70),
(867, '1800', 70),
(868, 'Tribeca', 70),
(869, 'Wrx Sti', 70),
(870, 'Trezia', 70),
(871, 'Xv', 70),
(872, 'Brz', 70),
(873, 'Maruti', 71),
(874, 'Swift', 71),
(875, 'Vitara', 71),
(876, 'Baleno', 71),
(877, 'Samurai', 71),
(878, 'Alto', 71),
(879, 'Wagon R', 71),
(880, 'Jimny', 71),
(881, 'Grand Vitara', 71),
(882, 'Ignis', 71),
(883, 'Liana', 71),
(884, 'Grand Vitara Xl7', 71),
(885, 'Sx4', 71),
(886, 'Splash', 71),
(887, 'Kizashi', 71),
(888, 'Samba', 72),
(889, 'Tagora', 72),
(890, 'Solara', 72),
(891, 'Horizon', 72),
(892, 'Telcosport', 73),
(893, 'Telco', 73),
(894, 'Sumo', 73),
(895, 'Safari', 73),
(896, 'Indica', 73),
(897, 'Indigo', 73),
(898, 'Grand Safari', 73),
(899, 'Tl Pick Up', 73),
(900, 'Xenon Pick Up', 73),
(901, 'Vista', 73),
(902, 'Xenon', 73),
(903, 'Aria', 73),
(904, 'Carina E', 74),
(905, '4runner', 74),
(906, 'Camry', 74),
(907, 'Rav4', 74),
(908, 'Celica', 74),
(909, 'Supra', 74),
(910, 'Paseo', 74),
(911, 'Land Cruiser 80', 74),
(912, 'Land Cruiser 100', 74),
(913, 'Land Cruiser', 74),
(914, 'Land Cruiser 90', 74),
(915, 'Corolla', 74),
(916, 'Auris', 74),
(917, 'Avensis', 74),
(918, 'Picnic', 74),
(919, 'Yaris', 74),
(920, 'Yaris Verso', 74),
(921, 'Mr2', 74),
(922, 'Previa', 74),
(923, 'Prius', 74),
(924, 'Avensis Verso', 74),
(925, 'Corolla Verso', 74),
(926, 'Corolla Sedan', 74),
(927, 'Aygo', 74),
(928, 'Hilux', 74),
(929, 'Dyna', 74),
(930, 'Land Cruiser 200', 74),
(931, 'Verso', 74),
(932, 'Iq', 74),
(933, 'Urban Cruiser', 74),
(934, 'Gt86', 74),
(935, '100', 75),
(936, '121', 75),
(937, '214', 76),
(938, '110 Stawra', 76),
(939, '111 Stawra', 76),
(940, '215', 76),
(941, '112 Stawra', 76),
(942, 'Passat', 77),
(943, 'Golf', 77),
(944, 'Vento', 77),
(945, 'Polo', 77),
(946, 'Corrado', 77),
(947, 'Sharan', 77),
(948, 'Lupo', 77),
(949, 'Bora', 77),
(950, 'Jetta', 77),
(951, 'New Beetle', 77),
(952, 'Phaeton', 77),
(953, 'Touareg', 77),
(954, 'Touran', 77),
(955, 'Multivan', 77),
(956, 'Caddy', 77),
(957, 'Golf Plus', 77),
(958, 'Fox', 77),
(959, 'Eos', 77),
(960, 'Caravelle', 77),
(961, 'Tiguan', 77),
(962, 'Transporter', 77),
(963, 'Lt', 77),
(964, 'Taro', 77),
(965, 'Crafter', 77),
(966, 'California', 77),
(967, 'Santana', 77),
(968, 'Scirocco', 77),
(969, 'Passat Cc', 77),
(970, 'Amarok', 77),
(971, 'Beetle', 77),
(972, 'Up', 77),
(973, 'Cc', 77),
(974, '440', 78),
(975, '850', 78),
(976, 'S70', 78),
(977, 'V70', 78),
(978, 'V70 Classic', 78),
(979, '940', 78),
(980, '480', 78),
(981, '460', 78),
(982, '960', 78),
(983, 'S90', 78),
(984, 'V90', 78),
(985, 'Classic', 78),
(986, 'S40', 78),
(987, 'V40', 78),
(988, 'V50', 78),
(989, 'V70 Xc', 78),
(990, 'Xc70', 78),
(991, 'C70', 78),
(992, 'S80', 78),
(993, 'S60', 78),
(994, 'Xc90', 78),
(995, 'C30', 78),
(996, '780', 78),
(997, '760', 78),
(998, '740', 78),
(999, '240', 78),
(1000, '360', 78),
(1001, '340', 78),
(1002, 'Xc60', 78),
(1003, 'V60', 78),
(1004, 'V40 Cross Country', 78),
(1005, '353', 79),
(1006, 'Mini', 53),
(1007, 'Countryman', 53),
(1008, 'Paceman', 53);

commit;

begin;

LOCK TABLE plazas_garaje IN EXCLUSIVE mode;

insert into
    plazas_garaje (descripcion)
values
('Plaza 1 - 1'),
    ('Plaza 1 - 2'),
    ('Plaza 1 - 3'),
    ('Plaza 1 - 4'),
    ('Plaza 1 - 5'),
    ('Plaza 1 - 6'),
    ('Plaza 1 - 7'),
    ('Plaza 1 - 8'),
    ('Plaza 1 - 9'),
    ('Plaza 1 - 10'),
    ('Plaza 1 - 11'),
    ('Plaza 1 - 12'),
    ('Plaza 1 - 13'),
    ('Plaza 1 - 14'),
    ('Plaza 1 - 15'),
    ('Plaza 1 - 16'),
    ('Plaza 1 - 17'),
    ('Plaza 1 - 18'),
    ('Plaza 1 - 19'),
    ('Plaza 2 - 35'),
    ('Plaza 2 - 36'),
    ('Plaza 2 - 37'),
    ('Plaza 2 - 38'),
    ('Plaza 2 - 39'),
    ('Plaza 2 - 40'),
    ('Plaza 2 - 41'),
    ('Plaza 2 - 42'),
    ('Plaza 2 - 43'),
    ('Plaza 2 - 44'),
    ('Plaza 2 - 45'),
    ('Plaza 2 - 46'),
    ('Plaza 3 - 5'),
    ('Plaza 3 - 6'),
    ('Plaza 3 - 7'),
    ('Plaza 3 - 8'),
    ('Plaza 3 - 9'),
    ('Plaza 3 - 10'),
    ('Plaza 3 - 11'),
    ('Plaza 3 - 12'),
    ('Plaza 3 - 13'),
    ('Plaza 3 - 14'),
    ('Plaza 3 - 15'),
    ('Plaza 3 - 16'),
    ('Plaza 3 - 17'),
    ('Plaza 3 - 18');

commit;

begin;

LOCK TABLE coches IN EXCLUSIVE mode;

insert into
    coches
values
(NULL, '4647GJF', 75, 'BLANCO PERLA', 46, 6);

insert into
    coches
values
(NULL, '8263LHJ', 75, 'GRIS PARDO', 46, 16);

insert into
    coches
values
(NULL, '7203HCC', 75, 'AZUL', 46, 17);

insert into
    coches
values
(NULL, '6845CDG', 75, 'VERDE', 46, 27);

insert into
    coches
values
(NULL, '4745LKB', 58, 'AZUL', 55, 1);

insert into
    coches
values
(NULL, '9451GBJ', 58, 'BURDEOS', 55, 3);

insert into
    coches
values
(NULL, '9436MFK', 58, 'BRONCE', 55, 21);

insert into
    coches
values
(NULL, '7418FLH', 58, 'GRIS CENIZA', 55, 30);

insert into
    coches
values
(NULL, '7071BGB', 89, 'BRONCE', 110, 7);

insert into
    coches
values
(NULL, '7545JKL', 89, 'VERDE', 110, 18);

insert into
    coches
values
(NULL, '5728GHC', 89, 'GRIS CENIZA', 110, 23);

insert into
    coches
values
(NULL, '0815JBJ', 75, 'VERDE', 112, 12);

insert into
    coches
values
(NULL, '9113DDJ', 75, 'ROJO', 112, 20);

insert into
    coches
values
(NULL, '9452CMC', 75, 'GRIS CENIZA', 112, 26);

insert into
    coches
values
(NULL, '0995LNM', 58, 'BURDEOS', 334, 4);

insert into
    coches
values
(NULL, '7669CKN', 58, 'BLANCO MATE', 334, 22);

insert into
    coches
values
(NULL, '0207JMD', 58, 'VERDE', 334, 24);

insert into
    coches
values
(NULL, '9616FJL', 58, 'BLANCO MATE', 367, 11);

insert into
    coches
values
(NULL, '7419LMB', 58, 'BLANCO PERLA', 367, 14);

insert into
    coches
values
(NULL, '8211MFJ', 42.5, 'NEGRO', 368, 8);

insert into
    coches
values
(NULL, '7473KDB', 42.5, 'BLANCO PERLA', 368, 9);

insert into
    coches
values
(NULL, '0062BBG', 42.5, 'GRIS CENIZA', 368, 15);

insert into
    coches
values
(NULL, '8727BJB', 42.5, 'AZUL', 368, 28);

insert into
    coches
values
(NULL, '3469JCL', 42.5, 'AZUL', 368, 29);

insert into
    coches
values
(NULL, '2253FHM', 110, 'BLANCO MATE', 540, 5);

insert into
    coches
values
(NULL, '1257BGJ', 110, 'AZUL', 540, 10);

insert into
    coches
values
(NULL, '2033DMG', 110, 'BLANCO PERLA', 540, 13);

insert into
    coches
values
(NULL, '0001MMK', 42.5, 'BLANCO MATE', 699, 2);

insert into
    coches
values
(NULL, '8785CFF', 42.5, 'VERDE', 699, 19);

insert into
    coches
values
(NULL, '9373DGM', 42.5, 'ROJO', 699, 25);

commit;

begin;

LOCK TABLE clientes IN EXCLUSIVE mode;

insert into
    clientes
values
(
        NULL,
        'Amparo García Álvarez',
        '55630078R',
        'Villarreal',
        '682555150'
    );

insert into
    clientes
values
(
        NULL,
        'José Sancho Gutiérrez',
        '10883513M',
        'Vitoria',
        '692037387'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Jaime Oliver',
        '96729463L',
        'Murcia',
        '673890953'
    );

insert into
    clientes
values
(
        NULL,
        'María Dolores Martínez Fernández',
        '93107230X',
        'Fuenlabrada',
        '603309787'
    );

insert into
    clientes
values
(
        NULL,
        'Roberto Pérez Corbacho',
        '99959236V',
        'Benalmádena',
        '625518774'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Francisco Espinosa Matilla',
        '30186195Y',
        'Madrid',
        '615756273'
    );

insert into
    clientes
values
(
        NULL,
        'Alejandro Zapata Huerta',
        '25007239Y',
        'Manises',
        '607711674'
    );

insert into
    clientes
values
(
        NULL,
        'Ana Belén López García',
        '81268932L',
        'Madrid',
        '684841112'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Gracia Muñoz',
        '98142504D',
        'Rincón de la Victoria',
        '664636509'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Perdomo Sánchez',
        '27216801G',
        'Pozuelo de Alarcón',
        '614907648'
    );

insert into
    clientes
values
(
        NULL,
        'José Sanchís Aguilera',
        '17578110S',
        'Marrachí',
        '682503197'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco González Del Rey',
        '99262647Y',
        'Puente Genil',
        '650321450'
    );

insert into
    clientes
values
(
        NULL,
        'Ginés Ortega Gutiérrez',
        '53249915Q',
        'Badalona',
        '641692476'
    );

insert into
    clientes
values
(
        NULL,
        'Miguel Fernández Fernández',
        '83094267M',
        'Barcelona',
        '616415924'
    );

insert into
    clientes
values
(
        NULL,
        'Sergio Rojas Gutiérrez',
        '57173076K',
        'La Rinconada',
        '611916621'
    );

insert into
    clientes
values
(
        NULL,
        'Joaquín Herreros Felipe',
        '23193051N',
        'Alicante',
        '692942110'
    );

insert into
    clientes
values
(
        NULL,
        'Luis Martínez Fernández',
        '58717680Z',
        'Barcelona',
        '631118954'
    );

insert into
    clientes
values
(
        NULL,
        'Irene López Palomo',
        '13525176A',
        'Cornellá de Llobregat',
        '648118719'
    );

insert into
    clientes
values
(
        NULL,
        'Ramón López Roselló',
        '62468425B',
        'Barcelona',
        '695593218'
    );

insert into
    clientes
values
(
        NULL,
        'Joaquín Iglesias Navarro',
        '21527341P',
        'Collado Villalba',
        '671315181'
    );

insert into
    clientes
values
(
        NULL,
        'Alberto Cobo López',
        '46116898N',
        'Burjasot',
        '692739753'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Vives Velasco',
        '82278210B',
        'Lugo',
        '696471353'
    );

insert into
    clientes
values
(
        NULL,
        'Joaquín Rodríguez Lillo',
        '72642325E',
        'Lorca',
        '661965371'
    );

insert into
    clientes
values
(
        NULL,
        'Laura Granados Rodríguez',
        '41741583X',
        'Ceuta',
        '635540128'
    );

insert into
    clientes
values
(
        NULL,
        'Montserrat Morato Fuentes',
        '10481533L',
        'San Fernando',
        '601293310'
    );

insert into
    clientes
values
(
        NULL,
        'Julio Gómez Quintas',
        '28024659X',
        'Oviedo',
        '614377919'
    );

insert into
    clientes
values
(
        NULL,
        'María Luisa Aragón Lozano',
        '76348899P',
        'Torrente',
        '687974429'
    );

insert into
    clientes
values
(
        NULL,
        'Xabier Canosa Sánchez',
        '97015975C',
        'Vigo',
        '624107303'
    );

insert into
    clientes
values
(
        NULL,
        'Fernando Fariña Morales',
        '15750865M',
        'San Sebastián de los Reyes',
        '656581949'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Lozano Illescas',
        '61813675W',
        'Arrecife',
        '625161198'
    );

insert into
    clientes
values
(
        NULL,
        'Raúl Mesa Fernández',
        '99218686K',
        'Bilbao',
        '626112151'
    );

insert into
    clientes
values
(
        NULL,
        'José Luis Bosch Lázaro',
        '28383084A',
        'Rentería',
        '642279874'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Amat Martínez',
        '64466684F',
        'Palma de Mallorca',
        '682743482'
    );

insert into
    clientes
values
(
        NULL,
        'María Jesús Rivas Gutiérrez',
        '70566061Z',
        'Onteniente',
        '609529956'
    );

insert into
    clientes
values
(
        NULL,
        'José Iglesias Gamero',
        '97840785G',
        'Zamora',
        '662544762'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Nogueira Fernández',
        '94587281B',
        'Gerona',
        '676350745'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Antonio Álvarez Esteban',
        '81902776Y',
        'Barcelona',
        '651747165'
    );

insert into
    clientes
values
(
        NULL,
        'Víctor Ruiz Quintana',
        '31165333B',
        'San Sebastián',
        '635744191'
    );

insert into
    clientes
values
(
        NULL,
        'María Cutillas Pérez',
        '09297312E',
        'Madrid',
        '629726426'
    );

insert into
    clientes
values
(
        NULL,
        'Rafael García Fernández',
        '02191436L',
        'Alcalá la Real',
        '607772217'
    );

insert into
    clientes
values
(
        NULL,
        'Antonia Pino González',
        '00946203Y',
        'Mataró',
        '690263811'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Antonio Maldonado Moreno',
        '22194163Z',
        'Santa Coloma de Gramanet',
        '618974136'
    );

insert into
    clientes
values
(
        NULL,
        'Andrés Lahoz Moure',
        '80240419C',
        'Madrid',
        '604047522'
    );

insert into
    clientes
values
(
        NULL,
        'Josep Sanchís Díaz',
        '11842445K',
        'Barcelona',
        '698779838'
    );

insert into
    clientes
values
(
        NULL,
        'Luis Sánchez García',
        '69893542S',
        'San Cristóbal de la Laguna',
        '676678185'
    );

insert into
    clientes
values
(
        NULL,
        'Lucia Estepa Chinchilla',
        '48739723D',
        'Madrid',
        '627116504'
    );

insert into
    clientes
values
(
        NULL,
        'Laura Simón Lorenzo',
        '32722044J',
        'Leganés',
        '649741241'
    );

insert into
    clientes
values
(
        NULL,
        'María Escribano Chica',
        '54732007B',
        'Salou',
        '661950329'
    );

insert into
    clientes
values
(
        NULL,
        'Encarnación Escobar Sánchez',
        '56295592X',
        'Andújar',
        '681184348'
    );

insert into
    clientes
values
(
        NULL,
        'Teresa Gómez Ibáñez',
        '81636736F',
        'Fuengirola',
        '638666106'
    );

insert into
    clientes
values
(
        NULL,
        'Ana Belén Soares Mateos',
        '71318131F',
        'Moncada y Reixach',
        '674463563'
    );

insert into
    clientes
values
(
        NULL,
        'Ángel Escolano Pajuelo',
        '57962038Z',
        'Lugo',
        '691700510'
    );

insert into
    clientes
values
(
        NULL,
        'María Pilar Navarro Prieto',
        '37397234Q',
        'Andújar',
        '601139617'
    );

insert into
    clientes
values
(
        NULL,
        'Dolores Martínez Tomas',
        '81293190N',
        'Huesca',
        '605641208'
    );

insert into
    clientes
values
(
        NULL,
        'María Pilar Rodríguez Morales',
        '94104905Z',
        'Torrejón de Ardoz',
        '628771549'
    );

insert into
    clientes
values
(
        NULL,
        'Diego Almeida Domingo',
        '59011583T',
        'Parla',
        '658483699'
    );

insert into
    clientes
values
(
        NULL,
        'Pilar Vilariño Millán',
        '02264147G',
        'Santa Cruz de Tenerife',
        '627323330'
    );

insert into
    clientes
values
(
        NULL,
        'Carlos Sánchez Sánchez',
        '37451133A',
        'Cáceres',
        '694930132'
    );

insert into
    clientes
values
(
        NULL,
        'Tomas Benavent Andreu',
        '68541221W',
        'Durango',
        '618909264'
    );

insert into
    clientes
values
(
        NULL,
        'Jorge Devesa Ariza',
        '66348820F',
        'Salou',
        '697389450'
    );

insert into
    clientes
values
(
        NULL,
        'Cristina Nuño Luque',
        '51153815K',
        'Vinaroz',
        '627245180'
    );

insert into
    clientes
values
(
        NULL,
        'Vicente Mercado Perea',
        '34258024F',
        'Valencia',
        '611094158'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Cano Muñoz',
        '43344486C',
        'Baracaldo',
        '602880587'
    );

insert into
    clientes
values
(
        NULL,
        'Amaia Carmona Maestre',
        '15899877T',
        'Murcia',
        '662494126'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Ortiz Sancho',
        '15292045N',
        'Madrid',
        '699022736'
    );

insert into
    clientes
values
(
        NULL,
        'María Dolores Barreiro Lage',
        '33955713P',
        'Granada',
        '614007186'
    );

insert into
    clientes
values
(
        NULL,
        'María Fernández Pla',
        '34532424V',
        'Zaragoza',
        '601647887'
    );

insert into
    clientes
values
(
        NULL,
        'Lucia Brito Arnedo',
        '85220650S',
        'Paterna',
        '679132468'
    );

insert into
    clientes
values
(
        NULL,
        'Juan José Romero Pérez',
        '52788504P',
        'Madrid',
        '638057214'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Dueñas Sanchís',
        '30184884Y',
        'Logroño',
        '645817948'
    );

insert into
    clientes
values
(
        NULL,
        'Pedro Martínez Pérez',
        '04928220X',
        'Gáldar',
        '684116068'
    );

insert into
    clientes
values
(
        NULL,
        'Josefa Alonso Andrade',
        '85437710R',
        'Zaragoza',
        '667503868'
    );

insert into
    clientes
values
(
        NULL,
        'Bartolomé Luque Rodríguez',
        '75019159J',
        'Alicante',
        '694077543'
    );

insert into
    clientes
values
(
        NULL,
        'Jaime Fernández Escobar',
        '70106640H',
        'Oviedo',
        '602616503'
    );

insert into
    clientes
values
(
        NULL,
        'María Ángeles Domínguez Sanz',
        '98753556C',
        'La Coruña',
        '615802377'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Lorenzo Sáenz',
        '98925320C',
        'Blanes',
        '651371640'
    );

insert into
    clientes
values
(
        NULL,
        'Ana María Segui Pellicer',
        '45005380S',
        'Reus',
        '649752688'
    );

insert into
    clientes
values
(
        NULL,
        'Ana María Martínez Pastor',
        '31022936F',
        'Logroño',
        '613078756'
    );

insert into
    clientes
values
(
        NULL,
        'María Pilar Pérez Granados',
        '99559044W',
        'Mataró',
        '644787889'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Suarez Hernández',
        '95225756Y',
        'Móstoles',
        '620278838'
    );

insert into
    clientes
values
(
        NULL,
        'Enrique Jiménez Pérez',
        '62381182F',
        'Madrid',
        '616188770'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Moreno Pop',
        '33188354K',
        'Ceuta',
        '699920359'
    );

insert into
    clientes
values
(
        NULL,
        'Manuel Novo García',
        '18873899F',
        'Madrid',
        '675182886'
    );

insert into
    clientes
values
(
        NULL,
        'María Ángeles Martínez Villena',
        '58282663L',
        'Valdemoro',
        '645345696'
    );

insert into
    clientes
values
(
        NULL,
        'Carlos Arroyo Gallego',
        '25269263Z',
        'Cornellá de Llobregat',
        '615652816'
    );

insert into
    clientes
values
(
        NULL,
        'Elena González Plaza',
        '76312673F',
        'Benalmádena',
        '686114124'
    );

insert into
    clientes
values
(
        NULL,
        'Josep Nieto Cabrera',
        '29061669L',
        'Toledo',
        '652612506'
    );

insert into
    clientes
values
(
        NULL,
        'Joaquín Rojo Martin',
        '27876071W',
        'San Vicente dels Horts',
        '697674363'
    );

insert into
    clientes
values
(
        NULL,
        'Álvaro Gutiérrez Peña',
        '47512413W',
        'Madrid',
        '623690469'
    );

insert into
    clientes
values
(
        NULL,
        'Luis Cubillo Martínez',
        '31324438W',
        'Barcelona',
        '673317678'
    );

insert into
    clientes
values
(
        NULL,
        'Antonia Torres Fernández',
        '47838040H',
        'Leganés',
        '698597287'
    );

insert into
    clientes
values
(
        NULL,
        'Cristina Gavilán Rego',
        '88725346V',
        'Las Palmas de G. C.',
        '691538784'
    );

insert into
    clientes
values
(
        NULL,
        'Javier Ramírez Pérez',
        '49857564G',
        'Vall de Uxó',
        '695802166'
    );

insert into
    clientes
values
(
        NULL,
        'Mónica Del Pino Marín',
        '13965844Z',
        'Madrid',
        '661476425'
    );

insert into
    clientes
values
(
        NULL,
        'José Manuel Pulido Otero',
        '40481963P',
        'El Vendrell',
        '615113717'
    );

insert into
    clientes
values
(
        NULL,
        'María Sánchez Gamarra',
        '45943727P',
        'Fuenlabrada',
        '637561491'
    );

insert into
    clientes
values
(
        NULL,
        'Isabel Pulido Benito',
        '99577105P',
        'Hospitalet de Llobregat',
        '666446269'
    );

insert into
    clientes
values
(
        NULL,
        'María Fernández Latorre',
        '76237926X',
        'Fuenlabrada',
        '623246782'
    );

insert into
    clientes
values
(
        NULL,
        'María Rosa Presa Sánchez',
        '10306786A',
        'Vigo',
        '675877126'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Asensio Ortega',
        '10032797J',
        'Barcelona',
        '646981625'
    );

insert into
    clientes
values
(
        NULL,
        'José Vives Bolívar',
        '93251734M',
        'Madrid',
        '633990845'
    );

insert into
    clientes
values
(
        NULL,
        'Jordi Fernández Conesa',
        '66617530P',
        'Palencia',
        '649754201'
    );

insert into
    clientes
values
(
        NULL,
        'Daniel Prada Gómez',
        '82895601J',
        'Candelaria',
        '600433089'
    );

insert into
    clientes
values
(
        NULL,
        'Marta Rodríguez Trigo',
        '24103476M',
        'Alcoy',
        '616012473'
    );

insert into
    clientes
values
(
        NULL,
        'María Santos Ramírez',
        '75194515V',
        'Madrid',
        '619213491'
    );

insert into
    clientes
values
(
        NULL,
        'Rocío Plaza González',
        '10011819B',
        'Sevilla',
        '660312359'
    );

insert into
    clientes
values
(
        NULL,
        'María Ángeles Barros Martínez',
        '06162654B',
        'Sabadell',
        '686288086'
    );

insert into
    clientes
values
(
        NULL,
        'Iván Alonso Liñán',
        '63480065L',
        'Alcalá de Henares',
        '672376977'
    );

insert into
    clientes
values
(
        NULL,
        'Rafael Berrocal Martí',
        '63347391D',
        'San Pedro de Ribas',
        '679804499'
    );

insert into
    clientes
values
(
        NULL,
        'Irene Marín García',
        '57679562R',
        'Nerja',
        '637051209'
    );

insert into
    clientes
values
(
        NULL,
        'Francisca Tello Díaz',
        '06439341P',
        'Arganda del Rey',
        '626413103'
    );

insert into
    clientes
values
(
        NULL,
        'Julia Sierra Molina',
        '23450769S',
        'Salamanca',
        '615219546'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Aguilar Pintado',
        '54831031C',
        'Segovia',
        '642822541'
    );

insert into
    clientes
values
(
        NULL,
        'Esperanza Montserrat Ibáñez',
        '96335774K',
        'Zamora',
        '647489752'
    );

insert into
    clientes
values
(
        NULL,
        'Jesús Serrano Melero',
        '00480164Q',
        'Málaga',
        '642100856'
    );

insert into
    clientes
values
(
        NULL,
        'Javier Cano Núñez',
        '31924082J',
        'Oleiros',
        '639626153'
    );

insert into
    clientes
values
(
        NULL,
        'José Mateu Bueno',
        '46665419Y',
        'Badajoz',
        '660334480'
    );

insert into
    clientes
values
(
        NULL,
        'Mariano López González',
        '72049006B',
        'Manacor',
        '646602378'
    );

insert into
    clientes
values
(
        NULL,
        'José María Iglesias Galindo',
        '67933897Q',
        'Madrid',
        '674863489'
    );

insert into
    clientes
values
(
        NULL,
        'Lucia Díaz Camacho',
        '39279851Z',
        'Plasencia',
        '634919900'
    );

insert into
    clientes
values
(
        NULL,
        'Carmen Fuentes Romero',
        '43096450Q',
        'Madrid',
        '619746239'
    );

insert into
    clientes
values
(
        NULL,
        'María Ángeles Luna Aranda',
        '96537933X',
        'Valencia',
        '639698796'
    );

insert into
    clientes
values
(
        NULL,
        'Josefa Vilariño Iglesias',
        '43837419V',
        'Madrid',
        '609892586'
    );

insert into
    clientes
values
(
        NULL,
        'Andrés López López',
        '99509658C',
        'Mazarrón',
        '602569895'
    );

insert into
    clientes
values
(
        NULL,
        'Sara Ruiz Cantos',
        '97281651T',
        'Málaga',
        '686608032'
    );

insert into
    clientes
values
(
        NULL,
        'José Fraga Ramos',
        '54703691P',
        'Vigo',
        '685957324'
    );

insert into
    clientes
values
(
        NULL,
        'Rosario Fernández Martin',
        '08285935R',
        'Alfafar',
        '653858339'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Martin Román',
        '33794454W',
        'Játiva',
        '609349176'
    );

insert into
    clientes
values
(
        NULL,
        'Teresa Rubio Pedraza',
        '06573267M',
        'Cáceres',
        '694768952'
    );

insert into
    clientes
values
(
        NULL,
        'José María Almeida Hernández',
        '57313838T',
        'Zaragoza',
        '677756023'
    );

insert into
    clientes
values
(
        NULL,
        'Silvia Pérez Contreras',
        '75848946Y',
        'Málaga',
        '645193494'
    );

insert into
    clientes
values
(
        NULL,
        'Ana Del Castillo Cabrera',
        '94014488X',
        'Arganda del Rey',
        '695563263'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Carlos Martin Ramos',
        '21465501S',
        'Altea',
        '611427160'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Miralles Peñalver',
        '35247731R',
        'Murcia',
        '678382231'
    );

insert into
    clientes
values
(
        NULL,
        'María Rosario Torre López',
        '76545503P',
        'Barcelona',
        '600914686'
    );

insert into
    clientes
values
(
        NULL,
        'Ignacio Hernández Fernández',
        '31513554N',
        'Torrevieja',
        '679662170'
    );

insert into
    clientes
values
(
        NULL,
        'Patricia Aceituno Valdés',
        '16409617Z',
        'Langreo',
        '652560377'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Medina Lozano',
        '21461268Z',
        'Murcia',
        '658670516'
    );

insert into
    clientes
values
(
        NULL,
        'Marcos Gil Ramírez',
        '44712297K',
        'Madrid',
        '656914236'
    );

insert into
    clientes
values
(
        NULL,
        'Álvaro Martin Trejo',
        '91909355K',
        'Palma de Mallorca',
        '690534345'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco José González Magán',
        '68285772Z',
        'Valladolid',
        '611971765'
    );

insert into
    clientes
values
(
        NULL,
        'Ángel Gómez González',
        '18956982Z',
        'León',
        '643487240'
    );

insert into
    clientes
values
(
        NULL,
        'José Seco Muñoz',
        '78854195Y',
        'Castro-Urdiales',
        '692852816'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Vázquez López',
        '47318414P',
        'Leganés',
        '674946935'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Angulo Portillo',
        '97429864R',
        'Madrid',
        '684504851'
    );

insert into
    clientes
values
(
        NULL,
        'Yolanda Sáez Pérez',
        '41436322M',
        'Alcalá de Henares',
        '646531415'
    );

insert into
    clientes
values
(
        NULL,
        'María Carmen Garrido Fernández',
        '22614561H',
        'Vélez-Málaga',
        '610619469'
    );

insert into
    clientes
values
(
        NULL,
        'Antonio Moya Fernández',
        '08888819D',
        'Madrid',
        '679154958'
    );

insert into
    clientes
values
(
        NULL,
        'Ana Silvestre Peñalver',
        '37466055K',
        'San Sebastián',
        '649793068'
    );

insert into
    clientes
values
(
        NULL,
        'José Luis Díaz Agulló',
        '18672284X',
        'Valencia',
        '679221346'
    );

insert into
    clientes
values
(
        NULL,
        'Rocío Moreno Salado',
        '54380728B',
        'Ávila',
        '610122644'
    );

insert into
    clientes
values
(
        NULL,
        'Álvaro Aguilera Moreno',
        '84741332V',
        'San Andrés de la Barca',
        '652803762'
    );

insert into
    clientes
values
(
        NULL,
        'Iván Castro Medina',
        '20873957P',
        'Ibiza',
        '689106265'
    );

insert into
    clientes
values
(
        NULL,
        'Elena Pimentel Nieto',
        '72475870H',
        'Castellón de la Plana',
        '659608753'
    );

insert into
    clientes
values
(
        NULL,
        'María José Bolaños González',
        '27975527Y',
        'Ronda',
        '645457877'
    );

insert into
    clientes
values
(
        NULL,
        'José Manuel Murillo Hernández',
        '22948981H',
        'San Cristóbal de la Laguna',
        '696430858'
    );

insert into
    clientes
values
(
        NULL,
        'Pablo Gómez Toledano',
        '43813757E',
        'Albacete',
        '680670349'
    );

insert into
    clientes
values
(
        NULL,
        'Joaquín Reyes Pérez',
        '35539932X',
        'Murcia',
        '665357381'
    );

insert into
    clientes
values
(
        NULL,
        'María Rosario Diego Navarro',
        '44984718F',
        'Zaragoza',
        '699964834'
    );

insert into
    clientes
values
(
        NULL,
        'Manuela García Martínez',
        '63899645X',
        'Madrid',
        '661602513'
    );

insert into
    clientes
values
(
        NULL,
        'Jesús Martínez González',
        '93228338T',
        'Málaga',
        '683936894'
    );

insert into
    clientes
values
(
        NULL,
        'Carmen Vega León',
        '32974350D',
        'Siero',
        '648700126'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Robledo Fernández',
        '70076042X',
        'Oviedo',
        '676030327'
    );

insert into
    clientes
values
(
        NULL,
        'Mario Carrasco Rivera',
        '51011044B',
        'Sabadell',
        '652945070'
    );

insert into
    clientes
values
(
        NULL,
        'María Luisa Pérez Rosa',
        '31881530B',
        'Madrid',
        '667679069'
    );

insert into
    clientes
values
(
        NULL,
        'Juan Carlos Ferrando García',
        '40376580B',
        'Barcelona',
        '691472905'
    );

insert into
    clientes
values
(
        NULL,
        'Francisco Javier Hernando García',
        '03712441B',
        'Las Palmas de G. C.',
        '645727185'
    );

insert into
    clientes
values
(
        NULL,
        'Iván Martínez Avilés',
        '63455093W',
        'La Coruña',
        '633768759'
    );

insert into
    clientes
values
(
        NULL,
        'Ramón García Gallego',
        '71206166Y',
        'Éibar',
        '613611115'
    );

insert into
    clientes
values
(
        NULL,
        'Raquel Pla Gallego',
        '16628099L',
        'Santander',
        '678023837'
    );

insert into
    clientes
values
(
        NULL,
        'Manuela Ramírez Martínez',
        '53717578C',
        'Córdoba',
        '608523361'
    );

insert into
    clientes
values
(
        NULL,
        'Daniel Arias Peris',
        '25641737A',
        'Mataró',
        '621269944'
    );

insert into
    clientes
values
(
        NULL,
        'José García Infante',
        '95389014X',
        'Barberá del Vallés',
        '615240013'
    );

insert into
    clientes
values
(
        NULL,
        'Manuel Megias Navas',
        '86473941J',
        'Madrid',
        '677160408'
    );

insert into
    clientes
values
(
        NULL,
        'María Ángeles Murcia Pena',
        '09931878H',
        'Salamanca',
        '681949367'
    );

insert into
    clientes
values
(
        NULL,
        'Raquel Toro Andrés',
        '45957751W',
        'Elche',
        '699733180'
    );

insert into
    clientes
values
(
        NULL,
        'Manuel Uceda Ramos',
        '86571692Z',
        'Madrid',
        '621163434'
    );

insert into
    clientes
values
(
        NULL,
        'Jesús Teixeira Torregrosa',
        '61703009N',
        'Sevilla',
        '693100926'
    );

insert into
    clientes
values
(
        NULL,
        'Sergio Moreno Tello',
        '81478304E',
        'Santa Pola',
        '655481431'
    );

insert into
    clientes
values
(
        NULL,
        'Jesús María Radu Urrutia',
        '53760110W',
        'Pamplona',
        '605758543'
    );

insert into
    clientes
values
(
        NULL,
        'Iván Navarro Mora',
        '14673372Q',
        'Almería',
        '623047237'
    );

insert into
    clientes
values
(
        NULL,
        'Juana Bas Vicente',
        '36781710H',
        'Pamplona',
        '697324732'
    );

insert into
    clientes
values
(
        NULL,
        'Inmaculada Valero Serrano',
        '35418727S',
        'Zaragoza',
        '629624143'
    );

commit;

begin;

LOCK TABLE reservas IN EXCLUSIVE mode;

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-15', 'yyyy-mm-dd'),
        to_date('2021-11-21', 'yyyy-mm-dd'),
        NULL,
        161
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-1', 'yyyy-mm-dd'),
        to_date('2021-11-12', 'yyyy-mm-dd'),
        NULL,
        114
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-6-11', 'yyyy-mm-dd'),
        to_date('2022-6-26', 'yyyy-mm-dd'),
        NULL,
        168
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-4-7', 'yyyy-mm-dd'),
        to_date('2021-4-12', 'yyyy-mm-dd'),
        NULL,
        10
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-15', 'yyyy-mm-dd'),
        to_date('2020-9-28', 'yyyy-mm-dd'),
        NULL,
        90
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-2-3', 'yyyy-mm-dd'),
        to_date('2023-2-12', 'yyyy-mm-dd'),
        NULL,
        109
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-2-24', 'yyyy-mm-dd'),
        to_date('2022-3-3', 'yyyy-mm-dd'),
        NULL,
        48
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-6-13', 'yyyy-mm-dd'),
        to_date('2020-6-14', 'yyyy-mm-dd'),
        NULL,
        111
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-2-19', 'yyyy-mm-dd'),
        to_date('2022-3-1', 'yyyy-mm-dd'),
        NULL,
        37
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-4-7', 'yyyy-mm-dd'),
        to_date('2021-4-10', 'yyyy-mm-dd'),
        NULL,
        88
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-7-26', 'yyyy-mm-dd'),
        to_date('2020-8-4', 'yyyy-mm-dd'),
        NULL,
        140
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-24', 'yyyy-mm-dd'),
        to_date('2024-1-6', 'yyyy-mm-dd'),
        NULL,
        103
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-3-14', 'yyyy-mm-dd'),
        to_date('2021-3-23', 'yyyy-mm-dd'),
        NULL,
        161
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-24', 'yyyy-mm-dd'),
        to_date('2020-6-6', 'yyyy-mm-dd'),
        NULL,
        99
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-27', 'yyyy-mm-dd'),
        to_date('2021-10-5', 'yyyy-mm-dd'),
        NULL,
        159
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-31', 'yyyy-mm-dd'),
        to_date('2022-9-3', 'yyyy-mm-dd'),
        NULL,
        80
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-30', 'yyyy-mm-dd'),
        to_date('2021-11-9', 'yyyy-mm-dd'),
        NULL,
        12
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-24', 'yyyy-mm-dd'),
        to_date('2022-6-7', 'yyyy-mm-dd'),
        NULL,
        55
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-4', 'yyyy-mm-dd'),
        to_date('2021-9-6', 'yyyy-mm-dd'),
        NULL,
        176
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-1-24', 'yyyy-mm-dd'),
        to_date('2022-2-1', 'yyyy-mm-dd'),
        NULL,
        60
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-18', 'yyyy-mm-dd'),
        to_date('2021-10-19', 'yyyy-mm-dd'),
        NULL,
        111
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-1', 'yyyy-mm-dd'),
        to_date('2021-11-13', 'yyyy-mm-dd'),
        NULL,
        137
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-5-31', 'yyyy-mm-dd'),
        to_date('2021-6-12', 'yyyy-mm-dd'),
        NULL,
        85
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-8-23', 'yyyy-mm-dd'),
        to_date('2020-8-26', 'yyyy-mm-dd'),
        NULL,
        175
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-5', 'yyyy-mm-dd'),
        to_date('2020-2-12', 'yyyy-mm-dd'),
        NULL,
        46
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-11-1', 'yyyy-mm-dd'),
        to_date('2023-11-11', 'yyyy-mm-dd'),
        NULL,
        163
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-20', 'yyyy-mm-dd'),
        to_date('2023-7-26', 'yyyy-mm-dd'),
        NULL,
        65
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-12-5', 'yyyy-mm-dd'),
        to_date('2021-12-17', 'yyyy-mm-dd'),
        NULL,
        169
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-6-25', 'yyyy-mm-dd'),
        to_date('2022-6-30', 'yyyy-mm-dd'),
        NULL,
        117
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-11-6', 'yyyy-mm-dd'),
        to_date('2020-11-12', 'yyyy-mm-dd'),
        NULL,
        128
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-10', 'yyyy-mm-dd'),
        to_date('2022-7-21', 'yyyy-mm-dd'),
        NULL,
        75
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-25', 'yyyy-mm-dd'),
        to_date('2021-10-9', 'yyyy-mm-dd'),
        NULL,
        129
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-28', 'yyyy-mm-dd'),
        to_date('2021-11-6', 'yyyy-mm-dd'),
        NULL,
        140
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-14', 'yyyy-mm-dd'),
        to_date('2023-12-20', 'yyyy-mm-dd'),
        NULL,
        62
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-15', 'yyyy-mm-dd'),
        to_date('2021-11-30', 'yyyy-mm-dd'),
        NULL,
        156
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-7', 'yyyy-mm-dd'),
        to_date('2023-3-11', 'yyyy-mm-dd'),
        NULL,
        127
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-22', 'yyyy-mm-dd'),
        to_date('2021-11-4', 'yyyy-mm-dd'),
        NULL,
        30
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-2', 'yyyy-mm-dd'),
        to_date('2020-9-4', 'yyyy-mm-dd'),
        NULL,
        13
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-8-29', 'yyyy-mm-dd'),
        to_date('2023-8-30', 'yyyy-mm-dd'),
        NULL,
        32
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-13', 'yyyy-mm-dd'),
        to_date('2022-8-16', 'yyyy-mm-dd'),
        NULL,
        2
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-12-14', 'yyyy-mm-dd'),
        to_date('2020-12-17', 'yyyy-mm-dd'),
        NULL,
        165
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-3-23', 'yyyy-mm-dd'),
        to_date('2021-3-27', 'yyyy-mm-dd'),
        NULL,
        62
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-7', 'yyyy-mm-dd'),
        to_date('2021-11-17', 'yyyy-mm-dd'),
        NULL,
        20
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-27', 'yyyy-mm-dd'),
        to_date('2021-12-9', 'yyyy-mm-dd'),
        NULL,
        46
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-6', 'yyyy-mm-dd'),
        to_date('2021-8-18', 'yyyy-mm-dd'),
        NULL,
        40
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-3', 'yyyy-mm-dd'),
        to_date('2020-2-17', 'yyyy-mm-dd'),
        NULL,
        72
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-12-3', 'yyyy-mm-dd'),
        to_date('2020-12-18', 'yyyy-mm-dd'),
        NULL,
        17
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-7-8', 'yyyy-mm-dd'),
        to_date('2021-7-21', 'yyyy-mm-dd'),
        NULL,
        17
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-6', 'yyyy-mm-dd'),
        to_date('2023-9-11', 'yyyy-mm-dd'),
        NULL,
        95
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-23', 'yyyy-mm-dd'),
        to_date('2023-3-26', 'yyyy-mm-dd'),
        NULL,
        51
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-16', 'yyyy-mm-dd'),
        to_date('2023-4-17', 'yyyy-mm-dd'),
        NULL,
        49
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-3', 'yyyy-mm-dd'),
        to_date('2020-2-16', 'yyyy-mm-dd'),
        NULL,
        132
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-22', 'yyyy-mm-dd'),
        to_date('2022-9-2', 'yyyy-mm-dd'),
        NULL,
        93
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-11-26', 'yyyy-mm-dd'),
        to_date('2022-11-28', 'yyyy-mm-dd'),
        NULL,
        167
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-8-2', 'yyyy-mm-dd'),
        to_date('2023-8-5', 'yyyy-mm-dd'),
        NULL,
        133
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-2-26', 'yyyy-mm-dd'),
        to_date('2023-3-13', 'yyyy-mm-dd'),
        NULL,
        102
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-21', 'yyyy-mm-dd'),
        to_date('2021-9-29', 'yyyy-mm-dd'),
        NULL,
        134
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-1-10', 'yyyy-mm-dd'),
        to_date('2020-1-23', 'yyyy-mm-dd'),
        NULL,
        62
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-18', 'yyyy-mm-dd'),
        to_date('2022-12-25', 'yyyy-mm-dd'),
        NULL,
        39
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-4-30', 'yyyy-mm-dd'),
        to_date('2020-5-7', 'yyyy-mm-dd'),
        NULL,
        148
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-21', 'yyyy-mm-dd'),
        to_date('2022-12-24', 'yyyy-mm-dd'),
        NULL,
        23
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-2-28', 'yyyy-mm-dd'),
        to_date('2021-3-11', 'yyyy-mm-dd'),
        NULL,
        130
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-10', 'yyyy-mm-dd'),
        to_date('2022-8-11', 'yyyy-mm-dd'),
        NULL,
        67
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-21', 'yyyy-mm-dd'),
        to_date('2021-8-23', 'yyyy-mm-dd'),
        NULL,
        43
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-6-19', 'yyyy-mm-dd'),
        to_date('2021-6-30', 'yyyy-mm-dd'),
        NULL,
        142
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-12-29', 'yyyy-mm-dd'),
        to_date('2022-1-4', 'yyyy-mm-dd'),
        NULL,
        48
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-31', 'yyyy-mm-dd'),
        to_date('2023-8-10', 'yyyy-mm-dd'),
        NULL,
        148
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-5-29', 'yyyy-mm-dd'),
        to_date('2021-6-7', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-15', 'yyyy-mm-dd'),
        to_date('2023-3-29', 'yyyy-mm-dd'),
        NULL,
        162
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-21', 'yyyy-mm-dd'),
        to_date('2021-10-5', 'yyyy-mm-dd'),
        NULL,
        154
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-3-11', 'yyyy-mm-dd'),
        to_date('2020-3-18', 'yyyy-mm-dd'),
        NULL,
        87
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-5', 'yyyy-mm-dd'),
        to_date('2022-7-20', 'yyyy-mm-dd'),
        NULL,
        105
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-6-4', 'yyyy-mm-dd'),
        to_date('2021-6-5', 'yyyy-mm-dd'),
        NULL,
        160
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-9', 'yyyy-mm-dd'),
        to_date('2021-11-13', 'yyyy-mm-dd'),
        NULL,
        101
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-13', 'yyyy-mm-dd'),
        to_date('2020-9-28', 'yyyy-mm-dd'),
        NULL,
        73
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-19', 'yyyy-mm-dd'),
        to_date('2020-5-25', 'yyyy-mm-dd'),
        NULL,
        176
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-3-9', 'yyyy-mm-dd'),
        to_date('2022-3-13', 'yyyy-mm-dd'),
        NULL,
        38
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-8-21', 'yyyy-mm-dd'),
        to_date('2020-8-30', 'yyyy-mm-dd'),
        NULL,
        104
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-4-10', 'yyyy-mm-dd'),
        to_date('2020-4-12', 'yyyy-mm-dd'),
        NULL,
        178
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-8', 'yyyy-mm-dd'),
        to_date('2023-4-9', 'yyyy-mm-dd'),
        NULL,
        160
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-1-29', 'yyyy-mm-dd'),
        to_date('2020-2-8', 'yyyy-mm-dd'),
        NULL,
        69
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-1', 'yyyy-mm-dd'),
        to_date('2020-9-8', 'yyyy-mm-dd'),
        NULL,
        79
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-5-5', 'yyyy-mm-dd'),
        to_date('2021-5-20', 'yyyy-mm-dd'),
        NULL,
        18
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-19', 'yyyy-mm-dd'),
        to_date('2020-2-20', 'yyyy-mm-dd'),
        NULL,
        30
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-17', 'yyyy-mm-dd'),
        to_date('2021-10-28', 'yyyy-mm-dd'),
        NULL,
        55
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-29', 'yyyy-mm-dd'),
        to_date('2022-8-6', 'yyyy-mm-dd'),
        NULL,
        53
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-11-21', 'yyyy-mm-dd'),
        to_date('2022-12-2', 'yyyy-mm-dd'),
        NULL,
        7
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-21', 'yyyy-mm-dd'),
        to_date('2020-6-2', 'yyyy-mm-dd'),
        NULL,
        148
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-10-30', 'yyyy-mm-dd'),
        to_date('2020-11-8', 'yyyy-mm-dd'),
        NULL,
        145
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-18', 'yyyy-mm-dd'),
        to_date('2021-10-1', 'yyyy-mm-dd'),
        NULL,
        8
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-10-31', 'yyyy-mm-dd'),
        to_date('2020-11-3', 'yyyy-mm-dd'),
        NULL,
        141
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-31', 'yyyy-mm-dd'),
        to_date('2023-4-10', 'yyyy-mm-dd'),
        NULL,
        117
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-6', 'yyyy-mm-dd'),
        to_date('2020-9-19', 'yyyy-mm-dd'),
        NULL,
        106
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-10', 'yyyy-mm-dd'),
        to_date('2020-9-14', 'yyyy-mm-dd'),
        NULL,
        140
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-7-19', 'yyyy-mm-dd'),
        to_date('2021-7-31', 'yyyy-mm-dd'),
        NULL,
        115
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-13', 'yyyy-mm-dd'),
        to_date('2022-12-28', 'yyyy-mm-dd'),
        NULL,
        179
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-12-13', 'yyyy-mm-dd'),
        to_date('2020-12-28', 'yyyy-mm-dd'),
        NULL,
        146
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-4-29', 'yyyy-mm-dd'),
        to_date('2022-5-5', 'yyyy-mm-dd'),
        NULL,
        108
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-2', 'yyyy-mm-dd'),
        to_date('2021-8-8', 'yyyy-mm-dd'),
        NULL,
        51
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-15', 'yyyy-mm-dd'),
        to_date('2021-10-19', 'yyyy-mm-dd'),
        NULL,
        117
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-11', 'yyyy-mm-dd'),
        to_date('2023-12-18', 'yyyy-mm-dd'),
        NULL,
        72
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-21', 'yyyy-mm-dd'),
        to_date('2023-12-29', 'yyyy-mm-dd'),
        NULL,
        179
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-17', 'yyyy-mm-dd'),
        to_date('2022-5-22', 'yyyy-mm-dd'),
        NULL,
        171
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-2-3', 'yyyy-mm-dd'),
        to_date('2022-2-7', 'yyyy-mm-dd'),
        NULL,
        39
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-1-10', 'yyyy-mm-dd'),
        to_date('2020-1-17', 'yyyy-mm-dd'),
        NULL,
        59
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-24', 'yyyy-mm-dd'),
        to_date('2022-12-31', 'yyyy-mm-dd'),
        NULL,
        91
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-7-14', 'yyyy-mm-dd'),
        to_date('2020-7-28', 'yyyy-mm-dd'),
        NULL,
        62
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-14', 'yyyy-mm-dd'),
        to_date('2020-9-28', 'yyyy-mm-dd'),
        NULL,
        164
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-10-31', 'yyyy-mm-dd'),
        to_date('2023-11-2', 'yyyy-mm-dd'),
        NULL,
        71
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-25', 'yyyy-mm-dd'),
        to_date('2020-5-26', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-29', 'yyyy-mm-dd'),
        to_date('2023-10-4', 'yyyy-mm-dd'),
        NULL,
        149
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-28', 'yyyy-mm-dd'),
        to_date('2022-6-7', 'yyyy-mm-dd'),
        NULL,
        145
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-3-23', 'yyyy-mm-dd'),
        to_date('2022-4-4', 'yyyy-mm-dd'),
        NULL,
        109
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-10-1', 'yyyy-mm-dd'),
        to_date('2020-10-3', 'yyyy-mm-dd'),
        NULL,
        56
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-6-11', 'yyyy-mm-dd'),
        to_date('2020-6-18', 'yyyy-mm-dd'),
        NULL,
        57
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-30', 'yyyy-mm-dd'),
        to_date('2023-10-4', 'yyyy-mm-dd'),
        NULL,
        139
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-5-21', 'yyyy-mm-dd'),
        to_date('2021-5-28', 'yyyy-mm-dd'),
        NULL,
        127
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-6-26', 'yyyy-mm-dd'),
        to_date('2022-7-7', 'yyyy-mm-dd'),
        NULL,
        135
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-16', 'yyyy-mm-dd'),
        to_date('2021-10-26', 'yyyy-mm-dd'),
        NULL,
        77
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-3-1', 'yyyy-mm-dd'),
        to_date('2022-3-5', 'yyyy-mm-dd'),
        NULL,
        153
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-6-12', 'yyyy-mm-dd'),
        to_date('2023-6-23', 'yyyy-mm-dd'),
        NULL,
        45
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-23', 'yyyy-mm-dd'),
        to_date('2022-9-4', 'yyyy-mm-dd'),
        NULL,
        156
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-10-24', 'yyyy-mm-dd'),
        to_date('2022-11-7', 'yyyy-mm-dd'),
        NULL,
        135
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-26', 'yyyy-mm-dd'),
        to_date('2023-12-29', 'yyyy-mm-dd'),
        NULL,
        85
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-1-28', 'yyyy-mm-dd'),
        to_date('2021-2-9', 'yyyy-mm-dd'),
        NULL,
        6
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-9', 'yyyy-mm-dd'),
        to_date('2022-8-21', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-6-11', 'yyyy-mm-dd'),
        to_date('2021-6-17', 'yyyy-mm-dd'),
        NULL,
        10
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-13', 'yyyy-mm-dd'),
        to_date('2023-12-20', 'yyyy-mm-dd'),
        NULL,
        71
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-10', 'yyyy-mm-dd'),
        to_date('2021-10-24', 'yyyy-mm-dd'),
        NULL,
        64
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-5', 'yyyy-mm-dd'),
        to_date('2023-7-7', 'yyyy-mm-dd'),
        NULL,
        94
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-30', 'yyyy-mm-dd'),
        to_date('2023-10-11', 'yyyy-mm-dd'),
        NULL,
        119
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-8', 'yyyy-mm-dd'),
        to_date('2023-12-13', 'yyyy-mm-dd'),
        NULL,
        25
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-11', 'yyyy-mm-dd'),
        to_date('2021-10-25', 'yyyy-mm-dd'),
        NULL,
        168
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-12-5', 'yyyy-mm-dd'),
        to_date('2020-12-10', 'yyyy-mm-dd'),
        NULL,
        50
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-1-24', 'yyyy-mm-dd'),
        to_date('2022-1-30', 'yyyy-mm-dd'),
        NULL,
        6
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-2-4', 'yyyy-mm-dd'),
        to_date('2021-2-17', 'yyyy-mm-dd'),
        NULL,
        116
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-11-11', 'yyyy-mm-dd'),
        to_date('2022-11-19', 'yyyy-mm-dd'),
        NULL,
        160
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-5-2', 'yyyy-mm-dd'),
        to_date('2023-5-9', 'yyyy-mm-dd'),
        NULL,
        5
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-9-24', 'yyyy-mm-dd'),
        to_date('2022-10-4', 'yyyy-mm-dd'),
        NULL,
        139
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-1-12', 'yyyy-mm-dd'),
        to_date('2020-1-14', 'yyyy-mm-dd'),
        NULL,
        65
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-6-23', 'yyyy-mm-dd'),
        to_date('2023-7-4', 'yyyy-mm-dd'),
        NULL,
        163
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-6-13', 'yyyy-mm-dd'),
        to_date('2020-6-16', 'yyyy-mm-dd'),
        NULL,
        97
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-3-12', 'yyyy-mm-dd'),
        to_date('2020-3-23', 'yyyy-mm-dd'),
        NULL,
        41
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-4-29', 'yyyy-mm-dd'),
        to_date('2021-5-1', 'yyyy-mm-dd'),
        NULL,
        105
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-29', 'yyyy-mm-dd'),
        to_date('2020-3-4', 'yyyy-mm-dd'),
        NULL,
        65
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-6-11', 'yyyy-mm-dd'),
        to_date('2021-6-18', 'yyyy-mm-dd'),
        NULL,
        80
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-5', 'yyyy-mm-dd'),
        to_date('2023-9-19', 'yyyy-mm-dd'),
        NULL,
        180
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-16', 'yyyy-mm-dd'),
        to_date('2023-4-23', 'yyyy-mm-dd'),
        NULL,
        69
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-3-13', 'yyyy-mm-dd'),
        to_date('2022-3-15', 'yyyy-mm-dd'),
        NULL,
        144
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-3-17', 'yyyy-mm-dd'),
        to_date('2020-3-18', 'yyyy-mm-dd'),
        NULL,
        33
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-10', 'yyyy-mm-dd'),
        to_date('2023-4-25', 'yyyy-mm-dd'),
        NULL,
        83
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-1', 'yyyy-mm-dd'),
        to_date('2023-3-3', 'yyyy-mm-dd'),
        NULL,
        84
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-3', 'yyyy-mm-dd'),
        to_date('2023-3-13', 'yyyy-mm-dd'),
        NULL,
        52
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-10-11', 'yyyy-mm-dd'),
        to_date('2023-10-18', 'yyyy-mm-dd'),
        NULL,
        45
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-2', 'yyyy-mm-dd'),
        to_date('2023-7-8', 'yyyy-mm-dd'),
        NULL,
        55
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-1-25', 'yyyy-mm-dd'),
        to_date('2021-2-8', 'yyyy-mm-dd'),
        NULL,
        98
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-3-21', 'yyyy-mm-dd'),
        to_date('2020-3-31', 'yyyy-mm-dd'),
        NULL,
        135
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-2-4', 'yyyy-mm-dd'),
        to_date('2023-2-12', 'yyyy-mm-dd'),
        NULL,
        91
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-11-22', 'yyyy-mm-dd'),
        to_date('2020-11-28', 'yyyy-mm-dd'),
        NULL,
        53
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-1-29', 'yyyy-mm-dd'),
        to_date('2021-2-11', 'yyyy-mm-dd'),
        NULL,
        118
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-11-26', 'yyyy-mm-dd'),
        to_date('2021-12-9', 'yyyy-mm-dd'),
        NULL,
        123
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-27', 'yyyy-mm-dd'),
        to_date('2023-1-1', 'yyyy-mm-dd'),
        NULL,
        120
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-7-9', 'yyyy-mm-dd'),
        to_date('2021-7-20', 'yyyy-mm-dd'),
        NULL,
        158
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-8', 'yyyy-mm-dd'),
        to_date('2020-9-19', 'yyyy-mm-dd'),
        NULL,
        63
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-2', 'yyyy-mm-dd'),
        to_date('2023-4-12', 'yyyy-mm-dd'),
        NULL,
        71
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-10-1', 'yyyy-mm-dd'),
        to_date('2023-10-5', 'yyyy-mm-dd'),
        NULL,
        144
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-1-26', 'yyyy-mm-dd'),
        to_date('2023-2-9', 'yyyy-mm-dd'),
        NULL,
        130
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-19', 'yyyy-mm-dd'),
        to_date('2022-7-27', 'yyyy-mm-dd'),
        NULL,
        51
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-9-19', 'yyyy-mm-dd'),
        to_date('2023-9-30', 'yyyy-mm-dd'),
        NULL,
        83
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-10-30', 'yyyy-mm-dd'),
        to_date('2021-11-3', 'yyyy-mm-dd'),
        NULL,
        131
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-9-25', 'yyyy-mm-dd'),
        to_date('2021-10-6', 'yyyy-mm-dd'),
        NULL,
        5
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-31', 'yyyy-mm-dd'),
        to_date('2020-6-7', 'yyyy-mm-dd'),
        NULL,
        18
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-12-12', 'yyyy-mm-dd'),
        to_date('2023-12-22', 'yyyy-mm-dd'),
        NULL,
        121
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-11-29', 'yyyy-mm-dd'),
        to_date('2023-11-30', 'yyyy-mm-dd'),
        NULL,
        111
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-2', 'yyyy-mm-dd'),
        to_date('2022-5-12', 'yyyy-mm-dd'),
        NULL,
        79
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-15', 'yyyy-mm-dd'),
        to_date('2021-8-16', 'yyyy-mm-dd'),
        NULL,
        35
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-6-8', 'yyyy-mm-dd'),
        to_date('2022-6-15', 'yyyy-mm-dd'),
        NULL,
        81
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-9-1', 'yyyy-mm-dd'),
        to_date('2022-9-9', 'yyyy-mm-dd'),
        NULL,
        16
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-9-6', 'yyyy-mm-dd'),
        to_date('2022-9-13', 'yyyy-mm-dd'),
        NULL,
        152
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-11-21', 'yyyy-mm-dd'),
        to_date('2020-11-25', 'yyyy-mm-dd'),
        NULL,
        108
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-6-24', 'yyyy-mm-dd'),
        to_date('2020-6-28', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-10-20', 'yyyy-mm-dd'),
        to_date('2022-10-28', 'yyyy-mm-dd'),
        NULL,
        167
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-2-27', 'yyyy-mm-dd'),
        to_date('2023-3-3', 'yyyy-mm-dd'),
        NULL,
        174
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-6-3', 'yyyy-mm-dd'),
        to_date('2023-6-12', 'yyyy-mm-dd'),
        NULL,
        164
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-9-12', 'yyyy-mm-dd'),
        to_date('2022-9-25', 'yyyy-mm-dd'),
        NULL,
        90
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-2-24', 'yyyy-mm-dd'),
        to_date('2022-2-27', 'yyyy-mm-dd'),
        NULL,
        52
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-4-23', 'yyyy-mm-dd'),
        to_date('2023-5-6', 'yyyy-mm-dd'),
        NULL,
        106
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-8', 'yyyy-mm-dd'),
        to_date('2020-2-11', 'yyyy-mm-dd'),
        NULL,
        115
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-3-26', 'yyyy-mm-dd'),
        to_date('2023-4-1', 'yyyy-mm-dd'),
        NULL,
        5
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-7-31', 'yyyy-mm-dd'),
        to_date('2021-8-4', 'yyyy-mm-dd'),
        NULL,
        74
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-8-1', 'yyyy-mm-dd'),
        to_date('2022-8-8', 'yyyy-mm-dd'),
        NULL,
        55
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-16', 'yyyy-mm-dd'),
        to_date('2020-9-21', 'yyyy-mm-dd'),
        NULL,
        56
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-10-17', 'yyyy-mm-dd'),
        to_date('2020-10-25', 'yyyy-mm-dd'),
        NULL,
        141
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-9-25', 'yyyy-mm-dd'),
        to_date('2022-9-30', 'yyyy-mm-dd'),
        NULL,
        77
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-29', 'yyyy-mm-dd'),
        to_date('2022-8-6', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-23', 'yyyy-mm-dd'),
        to_date('2022-5-29', 'yyyy-mm-dd'),
        NULL,
        18
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-1-25', 'yyyy-mm-dd'),
        to_date('2023-2-9', 'yyyy-mm-dd'),
        NULL,
        148
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-12-6', 'yyyy-mm-dd'),
        to_date('2020-12-10', 'yyyy-mm-dd'),
        NULL,
        63
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-13', 'yyyy-mm-dd'),
        to_date('2023-7-17', 'yyyy-mm-dd'),
        NULL,
        171
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-4-15', 'yyyy-mm-dd'),
        to_date('2022-4-20', 'yyyy-mm-dd'),
        NULL,
        169
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-4-11', 'yyyy-mm-dd'),
        to_date('2021-4-17', 'yyyy-mm-dd'),
        NULL,
        120
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-9-1', 'yyyy-mm-dd'),
        to_date('2020-9-7', 'yyyy-mm-dd'),
        NULL,
        60
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-1-10', 'yyyy-mm-dd'),
        to_date('2022-1-18', 'yyyy-mm-dd'),
        NULL,
        18
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-3-1', 'yyyy-mm-dd'),
        to_date('2022-3-11', 'yyyy-mm-dd'),
        NULL,
        78
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-16', 'yyyy-mm-dd'),
        to_date('2021-8-27', 'yyyy-mm-dd'),
        NULL,
        45
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-5-26', 'yyyy-mm-dd'),
        to_date('2021-6-9', 'yyyy-mm-dd'),
        NULL,
        171
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-5-1', 'yyyy-mm-dd'),
        to_date('2020-5-14', 'yyyy-mm-dd'),
        NULL,
        23
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-26', 'yyyy-mm-dd'),
        to_date('2023-1-7', 'yyyy-mm-dd'),
        NULL,
        8
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-2-21', 'yyyy-mm-dd'),
        to_date('2020-2-24', 'yyyy-mm-dd'),
        NULL,
        13
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-7-30', 'yyyy-mm-dd'),
        to_date('2022-8-10', 'yyyy-mm-dd'),
        NULL,
        49
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-5-15', 'yyyy-mm-dd'),
        to_date('2022-5-26', 'yyyy-mm-dd'),
        NULL,
        21
    );

insert into
    reservas
values
(
        NULL,
        to_date('2022-12-16', 'yyyy-mm-dd'),
        to_date('2022-12-27', 'yyyy-mm-dd'),
        NULL,
        84
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-8-11', 'yyyy-mm-dd'),
        to_date('2021-8-22', 'yyyy-mm-dd'),
        NULL,
        95
    );

insert into
    reservas
values
(
        NULL,
        to_date('2021-7-4', 'yyyy-mm-dd'),
        to_date('2021-7-12', 'yyyy-mm-dd'),
        NULL,
        135
    );

insert into
    reservas
values
(
        NULL,
        to_date('2020-4-14', 'yyyy-mm-dd'),
        to_date('2020-4-28', 'yyyy-mm-dd'),
        NULL,
        24
    );

insert into
    reservas
values
(
        NULL,
        to_date('2023-7-16', 'yyyy-mm-dd'),
        to_date('2023-7-21', 'yyyy-mm-dd'),
        NULL,
        148
    );

commit;

begin;

LOCK TABLE coches_por_reserva IN EXCLUSIVE mode;

insert into
    coches_por_reserva
values
(10, 1, 0, 358, NULL, 27);

insert into
    coches_por_reserva
values
(17, 2, 0, 360, NULL, 43);

insert into
    coches_por_reserva
values
(1, 3, 0, 614, NULL, 24);

insert into
    coches_por_reserva
values
(5, 4, 0, 598, NULL, 18);

insert into
    coches_por_reserva
values
(13, 5, 0, 504, NULL, 32);

insert into
    coches_por_reserva
values
(4, 6, 0, 1379, NULL, 27);

insert into
    coches_por_reserva
values
(7, 7, 0, 1063, NULL, 53);

insert into
    coches_por_reserva
values
(7, 8, 1063, 2035, NULL, 30);

insert into
    coches_por_reserva
values
(7, 9, 2035, 3273, NULL, 58);

insert into
    coches_por_reserva
values
(16, 10, 0, 1045, NULL, 16);

insert into
    coches_por_reserva
values
(15, 11, 0, 471, NULL, 14);

insert into
    coches_por_reserva
values
(18, 12, 0, 1333, NULL, 18);

insert into
    coches_por_reserva
values
(6, 13, 0, 520, NULL, 13);

insert into
    coches_por_reserva
values
(16, 14, 1045, 1664, NULL, 10);

insert into
    coches_por_reserva
values
(3, 15, 0, 939, NULL, 16);

insert into
    coches_por_reserva
values
(15, 16, 471, 710, NULL, 40);

insert into
    coches_por_reserva
values
(18, 17, 1333, 1486, NULL, 59);

insert into
    coches_por_reserva
values
(7, 18, 3273, 4119, NULL, 54);

insert into
    coches_por_reserva
values
(5, 19, 598, 1433, NULL, 16);

insert into
    coches_por_reserva
values
(20, 20, 0, 1323, NULL, 60);

insert into
    coches_por_reserva
values
(20, 21, 1323, 1902, NULL, 12);

insert into
    coches_por_reserva
values
(8, 22, 0, 701, NULL, 52);

insert into
    coches_por_reserva
values
(7, 23, 4119, 4338, NULL, 41);

insert into
    coches_por_reserva
values
(20, 24, 1902, 2924, NULL, 13);

insert into
    coches_por_reserva
values
(13, 25, 504, 626, NULL, 30);

insert into
    coches_por_reserva
values
(13, 26, 626, 1107, NULL, 47);

insert into
    coches_por_reserva
values
(9, 27, 0, 541, NULL, 12);

insert into
    coches_por_reserva
values
(3, 28, 939, 1481, NULL, 58);

insert into
    coches_por_reserva
values
(19, 29, 0, 342, NULL, 50);

insert into
    coches_por_reserva
values
(18, 30, 1486, 1890, NULL, 25);

insert into
    coches_por_reserva
values
(18, 31, 1890, 3332, NULL, 60);

insert into
    coches_por_reserva
values
(19, 32, 342, 659, NULL, 24);

insert into
    coches_por_reserva
values
(1, 33, 614, 1419, NULL, 54);

insert into
    coches_por_reserva
values
(14, 34, 0, 1366, NULL, 50);

insert into
    coches_por_reserva
values
(7, 35, 4338, 5284, NULL, 31);

insert into
    coches_por_reserva
values
(1, 36, 1419, 1563, NULL, 34);

insert into
    coches_por_reserva
values
(19, 37, 659, 1616, NULL, 28);

insert into
    coches_por_reserva
values
(1, 38, 1563, 2264, NULL, 42);

insert into
    coches_por_reserva
values
(1, 39, 2264, 3116, NULL, 49);

insert into
    coches_por_reserva
values
(11, 40, 0, 323, NULL, 20);

insert into
    coches_por_reserva
values
(15, 41, 710, 815, NULL, 13);

insert into
    coches_por_reserva
values
(4, 42, 1379, 2534, NULL, 25);

insert into
    coches_por_reserva
values
(3, 43, 1481, 2888, NULL, 56);

insert into
    coches_por_reserva
values
(11, 44, 323, 535, NULL, 15);

insert into
    coches_por_reserva
values
(7, 45, 5284, 6317, NULL, 32);

insert into
    coches_por_reserva
values
(16, 46, 1664, 2768, NULL, 19);

insert into
    coches_por_reserva
values
(12, 47, 0, 1449, NULL, 32);

insert into
    coches_por_reserva
values
(9, 48, 541, 1458, NULL, 48);

insert into
    coches_por_reserva
values
(9, 49, 1458, 1758, NULL, 33);

insert into
    coches_por_reserva
values
(11, 50, 535, 1849, NULL, 45);

insert into
    coches_por_reserva
values
(17, 51, 360, 1686, NULL, 30);

insert into
    coches_por_reserva
values
(14, 52, 1366, 2345, NULL, 42);

insert into
    coches_por_reserva
values
(2, 53, 0, 748, NULL, 24);

insert into
    coches_por_reserva
values
(19, 54, 1616, 2358, NULL, 42);

insert into
    coches_por_reserva
values
(19, 55, 2358, 2636, NULL, 31);

insert into
    coches_por_reserva
values
(4, 56, 2534, 2763, NULL, 57);

insert into
    coches_por_reserva
values
(5, 57, 1433, 2038, NULL, 49);

insert into
    coches_por_reserva
values
(17, 58, 1686, 2639, NULL, 17);

insert into
    coches_por_reserva
values
(1, 59, 3116, 4403, NULL, 60);

insert into
    coches_por_reserva
values
(2, 60, 748, 1475, NULL, 23);

insert into
    coches_por_reserva
values
(19, 61, 2636, 3210, NULL, 47);

insert into
    coches_por_reserva
values
(15, 62, 815, 2092, NULL, 49);

insert into
    coches_por_reserva
values
(9, 63, 1758, 3229, NULL, 27);

insert into
    coches_por_reserva
values
(17, 64, 2639, 3183, NULL, 52);

insert into
    coches_por_reserva
values
(4, 65, 2763, 4141, NULL, 46);

insert into
    coches_por_reserva
values
(19, 66, 3210, 4571, NULL, 42);

insert into
    coches_por_reserva
values
(1, 67, 4403, 5251, NULL, 14);

insert into
    coches_por_reserva
values
(20, 68, 2924, 3480, NULL, 28);

insert into
    coches_por_reserva
values
(1, 69, 5251, 5968, NULL, 35);

insert into
    coches_por_reserva
values
(6, 70, 520, 732, NULL, 39);

insert into
    coches_por_reserva
values
(9, 71, 3229, 3659, NULL, 56);

insert into
    coches_por_reserva
values
(16, 72, 2768, 3554, NULL, 28);

insert into
    coches_por_reserva
values
(11, 73, 1849, 2234, NULL, 41);

insert into
    coches_por_reserva
values
(15, 74, 2092, 3386, NULL, 45);

insert into
    coches_por_reserva
values
(19, 75, 4571, 5364, NULL, 18);

insert into
    coches_por_reserva
values
(4, 76, 4141, 4972, NULL, 36);

insert into
    coches_por_reserva
values
(8, 77, 701, 1025, NULL, 46);

insert into
    coches_por_reserva
values
(14, 78, 2345, 3296, NULL, 32);

insert into
    coches_por_reserva
values
(8, 79, 1025, 2456, NULL, 58);

insert into
    coches_por_reserva
values
(17, 80, 3183, 4354, NULL, 43);

insert into
    coches_por_reserva
values
(19, 81, 5364, 5866, NULL, 16);

insert into
    coches_por_reserva
values
(7, 82, 6317, 6663, NULL, 59);

insert into
    coches_por_reserva
values
(18, 83, 3332, 4022, NULL, 52);

insert into
    coches_por_reserva
values
(6, 84, 732, 1720, NULL, 22);

insert into
    coches_por_reserva
values
(6, 85, 1720, 2188, NULL, 56);

insert into
    coches_por_reserva
values
(14, 86, 3296, 3767, NULL, 30);

insert into
    coches_por_reserva
values
(14, 87, 3767, 4828, NULL, 58);

insert into
    coches_por_reserva
values
(2, 88, 1475, 2019, NULL, 47);

insert into
    coches_por_reserva
values
(17, 89, 4354, 5640, NULL, 32);

insert into
    coches_por_reserva
values
(6, 90, 2188, 3163, NULL, 45);

insert into
    coches_por_reserva
values
(6, 91, 3163, 4046, NULL, 24);

insert into
    coches_por_reserva
values
(1, 92, 5968, 6537, NULL, 20);

insert into
    coches_por_reserva
values
(9, 93, 3659, 4085, NULL, 45);

insert into
    coches_por_reserva
values
(8, 94, 2456, 3124, NULL, 50);

insert into
    coches_por_reserva
values
(17, 95, 5640, 6767, NULL, 53);

insert into
    coches_por_reserva
values
(4, 96, 4972, 5354, NULL, 15);

insert into
    coches_por_reserva
values
(11, 97, 2234, 3165, NULL, 42);

insert into
    coches_por_reserva
values
(10, 98, 358, 1840, NULL, 34);

insert into
    coches_por_reserva
values
(4, 99, 5354, 6462, NULL, 28);

insert into
    coches_por_reserva
values
(14, 100, 4828, 6144, NULL, 54);

insert into
    coches_por_reserva
values
(16, 101, 3554, 4907, NULL, 34);

insert into
    coches_por_reserva
values
(1, 102, 6537, 6716, NULL, 39);

insert into
    coches_por_reserva
values
(3, 103, 2888, 3869, NULL, 18);

insert into
    coches_por_reserva
values
(8, 104, 3124, 3235, NULL, 47);

insert into
    coches_por_reserva
values
(14, 105, 6144, 7218, NULL, 55);

insert into
    coches_por_reserva
values
(6, 106, 4046, 4302, NULL, 25);

insert into
    coches_por_reserva
values
(8, 107, 3235, 3987, NULL, 40);

insert into
    coches_por_reserva
values
(9, 108, 4085, 5167, NULL, 15);

insert into
    coches_por_reserva
values
(8, 109, 3987, 5393, NULL, 56);

insert into
    coches_por_reserva
values
(13, 110, 1107, 2561, NULL, 38);

insert into
    coches_por_reserva
values
(16, 111, 4907, 5026, NULL, 27);

insert into
    coches_por_reserva
values
(2, 112, 2019, 3371, NULL, 52);

insert into
    coches_por_reserva
values
(19, 113, 5866, 6379, NULL, 53);

insert into
    coches_por_reserva
values
(7, 114, 6663, 6896, NULL, 35);

insert into
    coches_por_reserva
values
(11, 115, 3165, 3652, NULL, 50);

insert into
    coches_por_reserva
values
(8, 116, 5393, 5806, NULL, 55);

insert into
    coches_por_reserva
values
(1, 117, 6716, 7035, NULL, 19);

insert into
    coches_por_reserva
values
(10, 118, 1840, 2504, NULL, 20);

insert into
    coches_por_reserva
values
(13, 119, 2561, 3513, NULL, 43);

insert into
    coches_por_reserva
values
(3, 120, 3869, 4900, NULL, 25);

insert into
    coches_por_reserva
values
(17, 121, 6767, 7212, NULL, 22);

insert into
    coches_por_reserva
values
(14, 122, 7218, 8244, NULL, 42);

insert into
    coches_por_reserva
values
(6, 123, 4302, 4485, NULL, 21);

insert into
    coches_por_reserva
values
(18, 124, 4022, 4834, NULL, 14);

insert into
    coches_por_reserva
values
(18, 125, 4834, 5703, NULL, 27);

insert into
    coches_por_reserva
values
(17, 126, 7212, 7479, NULL, 31);

insert into
    coches_por_reserva
values
(9, 127, 5167, 5887, NULL, 17);

insert into
    coches_por_reserva
values
(3, 128, 4900, 5621, NULL, 27);

insert into
    coches_por_reserva
values
(9, 129, 5887, 7302, NULL, 19);

insert into
    coches_por_reserva
values
(18, 130, 5703, 5897, NULL, 54);

insert into
    coches_por_reserva
values
(10, 131, 2504, 3102, NULL, 18);

insert into
    coches_por_reserva
values
(11, 132, 3652, 3832, NULL, 16);

insert into
    coches_por_reserva
values
(16, 133, 5026, 5128, NULL, 44);

insert into
    coches_por_reserva
values
(20, 134, 3480, 4495, NULL, 36);

insert into
    coches_por_reserva
values
(1, 135, 7035, 7371, NULL, 53);

insert into
    coches_por_reserva
values
(9, 136, 7302, 8634, NULL, 13);

insert into
    coches_por_reserva
values
(18, 137, 5897, 7214, NULL, 37);

insert into
    coches_por_reserva
values
(4, 138, 6462, 7518, NULL, 47);

insert into
    coches_por_reserva
values
(17, 139, 7479, 7730, NULL, 12);

insert into
    coches_por_reserva
values
(8, 140, 5806, 5974, NULL, 58);

insert into
    coches_por_reserva
values
(15, 141, 3386, 4600, NULL, 52);

insert into
    coches_por_reserva
values
(18, 142, 7214, 7780, NULL, 33);

insert into
    coches_por_reserva
values
(14, 143, 8244, 9137, NULL, 31);

insert into
    coches_por_reserva
values
(20, 144, 4495, 4887, NULL, 31);

insert into
    coches_por_reserva
values
(2, 145, 3371, 4735, NULL, 36);

insert into
    coches_por_reserva
values
(2, 146, 4735, 5061, NULL, 26);

insert into
    coches_por_reserva
values
(15, 147, 4600, 6061, NULL, 44);

insert into
    coches_por_reserva
values
(18, 148, 7780, 9272, NULL, 57);

insert into
    coches_por_reserva
values
(18, 149, 9272, 10043, NULL, 41);

insert into
    coches_por_reserva
values
(18, 150, 10043, 11392, NULL, 55);

insert into
    coches_por_reserva
values
(15, 151, 6061, 6673, NULL, 55);

insert into
    coches_por_reserva
values
(2, 152, 5061, 5642, NULL, 18);

insert into
    coches_por_reserva
values
(11, 153, 3832, 4885, NULL, 44);

insert into
    coches_por_reserva
values
(17, 154, 7730, 7909, NULL, 26);

insert into
    coches_por_reserva
values
(10, 155, 3102, 3628, NULL, 54);

insert into
    coches_por_reserva
values
(2, 156, 5642, 6237, NULL, 59);

insert into
    coches_por_reserva
values
(19, 157, 6379, 6685, NULL, 43);

insert into
    coches_por_reserva
values
(3, 158, 5621, 6191, NULL, 21);

insert into
    coches_por_reserva
values
(14, 159, 9137, 9975, NULL, 55);

insert into
    coches_por_reserva
values
(10, 160, 3628, 4773, NULL, 27);

insert into
    coches_por_reserva
values
(10, 161, 4773, 5642, NULL, 20);

insert into
    coches_por_reserva
values
(10, 162, 5642, 6277, NULL, 18);

insert into
    coches_por_reserva
values
(6, 163, 4485, 5680, NULL, 34);

insert into
    coches_por_reserva
values
(17, 164, 7909, 9176, NULL, 24);

insert into
    coches_por_reserva
values
(14, 165, 9975, 10382, NULL, 35);

insert into
    coches_por_reserva
values
(6, 166, 5680, 6573, NULL, 38);

insert into
    coches_por_reserva
values
(2, 167, 6237, 7054, NULL, 11);

insert into
    coches_por_reserva
values
(5, 168, 2038, 3204, NULL, 39);

insert into
    coches_por_reserva
values
(4, 169, 7518, 8005, NULL, 31);

insert into
    coches_por_reserva
values
(6, 170, 6573, 6957, NULL, 51);

insert into
    coches_por_reserva
values
(4, 171, 8005, 9477, NULL, 45);

insert into
    coches_por_reserva
values
(20, 172, 4887, 5483, NULL, 37);

insert into
    coches_por_reserva
values
(7, 173, 6896, 7209, NULL, 23);

insert into
    coches_por_reserva
values
(18, 174, 11392, 11990, NULL, 19);

insert into
    coches_por_reserva
values
(2, 175, 7054, 8060, NULL, 36);

insert into
    coches_por_reserva
values
(4, 176, 9477, 9882, NULL, 34);

insert into
    coches_por_reserva
values
(9, 177, 8634, 9366, NULL, 41);

insert into
    coches_por_reserva
values
(12, 178, 1449, 2599, NULL, 53);

insert into
    coches_por_reserva
values
(18, 179, 11990, 12609, NULL, 55);

insert into
    coches_por_reserva
values
(13, 180, 3513, 4301, NULL, 55);

insert into
    coches_por_reserva
values
(4, 181, 9882, 10847, NULL, 39);

insert into
    coches_por_reserva
values
(17, 182, 9176, 10152, NULL, 29);

insert into
    coches_por_reserva
values
(12, 183, 2599, 3112, NULL, 29);

insert into
    coches_por_reserva
values
(16, 184, 5128, 5944, NULL, 54);

insert into
    coches_por_reserva
values
(14, 185, 10382, 10606, NULL, 55);

insert into
    coches_por_reserva
values
(10, 186, 6277, 6976, NULL, 39);

insert into
    coches_por_reserva
values
(3, 187, 6191, 6795, NULL, 11);

insert into
    coches_por_reserva
values
(2, 188, 8060, 8553, NULL, 48);

insert into
    coches_por_reserva
values
(19, 189, 6685, 7510, NULL, 36);

insert into
    coches_por_reserva
values
(6, 190, 6957, 8216, NULL, 29);

insert into
    coches_por_reserva
values
(12, 191, 3112, 3876, NULL, 40);

insert into
    coches_por_reserva
values
(4, 192, 10847, 11383, NULL, 49);

insert into
    coches_por_reserva
values
(1, 193, 7371, 7630, NULL, 48);

insert into
    coches_por_reserva
values
(19, 194, 7510, 8533, NULL, 32);

insert into
    coches_por_reserva
values
(8, 195, 5974, 6163, NULL, 58);

insert into
    coches_por_reserva
values
(7, 196, 7209, 8596, NULL, 18);

insert into
    coches_por_reserva
values
(14, 197, 10606, 11887, NULL, 27);

insert into
    coches_por_reserva
values
(12, 198, 3876, 4367, NULL, 31);

insert into
    coches_por_reserva
values
(12, 199, 4367, 5817, NULL, 34);

insert into
    coches_por_reserva
values
(19, 200, 8533, 8959, NULL, 16);

insert into
    coches_por_reserva
values
(8, 201, 6163, 6400, NULL, 56);

insert into
    coches_por_reserva
values
(17, 202, 10152, 10432, NULL, 48);

insert into
    coches_por_reserva
values
(15, 203, 6673, 7226, NULL, 16);

insert into
    coches_por_reserva
values
(16, 204, 5944, 6899, NULL, 56);

insert into
    coches_por_reserva
values
(1, 205, 7630, 8977, NULL, 52);

insert into
    coches_por_reserva
values
(20, 206, 5483, 5679, NULL, 32);

insert into
    coches_por_reserva
values
(18, 207, 12609, 13658, NULL, 32);

insert into
    coches_por_reserva
values
(9, 208, 9366, 10083, NULL, 22);

insert into
    coches_por_reserva
values
(2, 209, 8553, 9597, NULL, 35);

insert into
    coches_por_reserva
values
(9, 210, 10083, 10293, NULL, 60);

insert into
    coches_por_reserva
values
(11, 211, 4885, 5737, NULL, 13);

insert into
    coches_por_reserva
values
(7, 212, 8596, 10029, NULL, 15);

insert into
    coches_por_reserva
values
(13, 213, 4301, 5203, NULL, 29);

insert into
    coches_por_reserva
values
(3, 214, 6795, 8234, NULL, 12);

insert into
    coches_por_reserva
values
(11, 215, 5737, 6515, NULL, 13);

insert into
    coches_por_reserva
values
(6, 216, 8216, 9347, NULL, 19);

commit;

BEGIN;

LOCK TABLE coches_por_reserva,
reservas,
coches IN EXCLUSIVE mode;

update
    (
        SELECT
            precio,
            (fecha_fin - fecha_inicio) * precio_alquiler AS precio_nuevo
        FROM
            coches_por_reserva
            join reservas on fk_reserva = id_reserva
            join coches on fk_coche = id_coche
    ) t
set
    t.precio = t.precio_nuevo;

COMMIT;