Startfiler för Soloäventyr på temat La Traviata

https://sv.wikipedia.org/wiki/La_traviata

https://drive.google.com/file/d/1NdX7AWau7AH53N65B7n4ZReAK8qdcgqb/view?usp=sharing

https://drive.google.com/file/d/1p7lx9OaEtrIFGqK1nz4BgfKNvhTq7qu1/view?usp=sharing - Planering för hur äventyret är upplagt

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_bin NOT NULL,
  `place` varchar(32) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
