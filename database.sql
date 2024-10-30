
-- MySQL dump 10.13  Distrib 9.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: home_movies
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_movies`
--

-- Drop the `movies` table if it exists
DROP TABLE IF EXISTS `movies`;
-- Drop the `ranking_movies` table if it exists
DROP TABLE IF EXISTS `ranking_movies`;

DROP TABLE IF EXISTS `all_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_movies`
--

LOCK TABLES `all_movies` WRITE;
/*!40000 ALTER TABLE `all_movies` DISABLE KEYS */;
INSERT INTO `all_movies` VALUES 
  (1,'John Wick','De Volta ao Jogo','John Wick é um lendário assassino de aluguel aposentado, lidando com o luto após perder o grande amor de sua vida. Quando um gângster invade sua casa, mata seu cachorro e rouba seu carro, ele é forçado a voltar à ativa e inicia sua vingança.','acao','imagens/johnwick.jpg','Unknown'),
  (2,'Mad Max','Estrada da Fúria','No mundo pós-apocalíptico, Max Rockatansky acredita que a melhor forma de sobreviver é não depender de ninguém. Porém, após ser capturado pelo tirano Immortan Joe e seus rebeldes, Max se vê no meio de uma guerra mortal iniciada pela Imperatriz Furiosa,','acao','imagens/madmax.jpg','Unknown'),
  (3,'Operação Invasão',NULL,'O chefe da máfia mais perigosa de toda a Indonésia e seu grupo de assassinos se escondem em um edifício. Vinte policiais treinados entram no prédio para capturá-los e eliminar tudo e todos que cruzem seu caminho.','acao','imagens/raid.jpg','Unknown'),
  (4,'Missão impossível',NULL,'O agente do governo Ethan Hunt e seu mentor Jim, embarcam em uma missão secreta que toma um rumo desastroso: Jim é morto e Ethan torna-se o principal suspeito do assassinato. Em fuga, Hunt recruta o brilhante Luther Stickell e o piloto Franz Krieg','acao','imagens/MissionImpossible.jpg','Unknown'),
  (5,'Velozes e Furiosos',NULL,'Brian Conner é um policial que se infiltra no submundo dos rachas de rua para investigar uma série de furtos. Enquanto tenta ganhar o respeito e a confiança do líder Dom Toretto, ele corre o risco de ser desmascarado.','acao','imagens/fastfury.jpg','Unknown'),
  (6,'Se Beber, Não Case!',NULL,'Dois dias antes de seu casamento, Doug e três amigos vão de carro até Las Vegas para uma louca e memorável despedida de solteiro. Quando os três padrinhos acordam na manhã seguinte, eles não se lembram de nada e notam que Doug desapareceu. Com p','comedia','imagens/hangover.jpg','Unknown'),
  (7,'Missão Madrinha','de Casamento','Lillian vai se casar e convida a amiga Annie para ser sua madrinha. Ela, que enfrenta problemas profissionais e amorosos, se dedica à função de corpo e alma. Em seu primero evento, Annie conhece Helen, uma bela e rica mulher. ','comedia','imagens/bridemaid.jpg','Unknown'),
  (8,'Superbad','- É Hoje','Os adolescentes Seth e Evan têm grandes esperanças para uma festa de formatura. Eles pretendem beber e conquistar as garotas para que eles possam se tornar parte da turma mais popular de toda a escola.','comedia','imagens/superbad.jpg','Unknown'),
  (9,'Vovó...Zona',NULL,'Agente durão do FBI chega ao extremo para ficar na pista de um ladrão violento que fugiu da prisão. Enquanto se disfarça de avó obesa com uma língua afiada, ele é forçado a usar todas as suas habilidades, desde cozinhar a cuidar de crianças.','comedia','imagens/comedia4.jpg','Unknown'),
  (10,'Gente Grande',NULL,'A morte do treinador de basquete de infância de velhos amigos reúne a turma no mesmo lugar que celebraram um campeonato anos atrás. Os amigos, acompanhados de suas esposas e filhos, descobrem que idade não significa o mesmo que maturidade.','comedia','imagens/comedia5.jpg','Unknown'),
  (11,'Fique Rico ','ou Morra Tentando','Após a morte de sua mãe quando ele era um menino, Marcus tem pouco apoio em sua vida. Ele começa a trabalhar para o traficante Levar e seu assistente. Apesar de Marcus fazer bom dinheiro vendendo drogas, seu sonho é se tornar um rapper. ','Drama','imagens/drama1.jpg','Unknown'),
  (12,'Sempre ao seu Lado',NULL,'Professor universitário encontra na estação de trem um filhote de cachorro da raça akita, conhecida por sua lealdade. O cão passa a acompanhá-lo até a estação de trem e esperar sua volta. Até que um acontecimento inesperado altera sua vida.','Drama','imagens/drama2.jpg','Unknown'),
  (13,'O Túmulo','dos Vagalumes','Os irmão Setsuko e Seita vivem no Japão em meio a Segunda Guerra Mundial. Após a morte da mãe em um bombardeio e a convocação do pai para a Guerra, eles vão morar com alguns parentes. Insatisfeitos, saem da cidade e acabam em um abrigo na floresta. ','Drama','imagens/drama3.jpg','Unknown'),
  (14,'a Culpa é','das Estrelas','Hazel Grace Lancaster e Augustus Waters são dois adolescentes que se conhecem em um grupo de apoio para pacientes com câncer. Por causa da doença, Hazel sempre descartou a ideia de se envolver amorosamente, mas acaba cedendo ao se apaixonar por Augustus. ','Drama','imagens/drama4.jpg','Unknown'),
  (15,'Intocáveis',NULL,'Um milionário tetraplégico contrata um homem da periferia para ser o seu acompanhante, apesar de sua aparente falta de preparo. No entanto, a relação que antes era profissional cresce e vira uma amizade que mudará a vida dos dois.','Drama','imagens/drama5.jpg','Unknown'),
  (16,'Alice no','Pais das Maravilhas','Ainda garotinha, Alice Kingsleigh visitou um lugar mágico pela primeira vez e não tinha mais lembranças sobre o local a não ser em seus sonhos. Em uma festa da nobreza, a jovem vê um coelho branco. Alice o segue e cai em um buraco, indo para outro mundo.','Fantasia','imagens/fantasia1.jpg','Unknown'),
  (17,'Harry Potter','e a camara secreta','Após as sofríveis férias na casa dos tios, Harry Potter se prepara para voltar a Hogwarts e começar seu segundo ano na escola de bruxos. Na véspera do início das aulas, Um Elfo chamado Dobby aparece em seu quarto e o alerta dos novos perigos em Hogwarts.','Fantasia','imagens/fantasia2.jpg','Unknown'),
  (18,'O Estranho','Mundo de Jack ','Jack Skellington, o Rei das Abóboras, se cansa de fazer o Dia das Bruxas todos os anos e deixa os limites da cidade. Acaba atravessando o portal do Natal, onde vê a alegria do natal. Ao retornar para sua terra, tem o plano de fazer seu próprio natal.','Fantasia','imagens/fantasia3.jpg','Unknown'),
  (19,'As Crônicas de Narnia',NULL,'Durante os bombardeios da Segunda Guerra Mundial de Londres, quatro irmãos ingleses são enviados para uma casa de campo onde eles estarão seguros. Um dia, Lucy encontra um guarda-roupa que a transporta para um mundo mágico chamado Nárnia.','Fantasia','imagens/fantasia4.jpg','Unknown'),
  (20,'A Fantastica','Fabrica de Chocolate','Baseado no conto de Roald Dahl, este cômico e fantástico filme segue o jovem Charlie Bucket e seu avô Joe. Eles se juntam a um grupo de ganhadores de uma competição, os quais vão para um passeio na mágica e misteriosa fábrica do excêntrico Willy Wonka','Fantasia','imagens/fantasia5.jpg','Unknown'),
  (21,'Tranformers (2007)',NULL,'Durante anos os Autobots e os Decepticons, duas raças alienígenas robóticas, duelaram em Cybertron, seu planeta natal. Esta guerra fez com que o planeta fosse destruído, resultando que os robôs se espalhassem pelo universo. ','Ficção','imagens/ficcao1.jpg','Unknown'),
  (22,'Alien:','O Oitavo Passageiro','Uma nave espacial, ao retornar para Terra, recebe estranhos sinais vindos de um asteroide. Enquanto a equipe investiga o local, um dos tripulantes é atacado por um misterioso ser. O que parecia ser um ataque isolado se transforma em um terror constante.','Ficção','imagens/ficcao2.jpg','Unknown'),
  (23,'Guardiões','da Galaxia - Vol. 2','Agora já conhecidos como os Guardiões da Galáxia, os guerreiros viajam ao longo do cosmos e lutam para manter sua nova família unida. Enquanto isso tentam desvendar os mistérios da verdadeira paternidade de Peter Quill (Chris Pratt).','Ficção','imagens/ficcao3.jpg','Unknown'),
  (24,'Doutor Estranho','no Multiverso da Loucura','Nessa jornada do Doutor Estranho rumo ao desconhecido. Além de receber ajuda de novos aliados místicos, o personagem atravessa as realidades alternativas incompreensíveis e perigosas do Multiverso para enfrentar um novo e misterioso adversário.','Ficção','imagens/ficcao4.jpg','Unknown'),
  (25,'Caroline:','15° Aniversário','Celebre o 15º aniversário do aclamado épico em stop-motion que tem encantado fãs em todo o mundo desde seu lançamento em 2009. A pequena Coraline descobre uma porta secreta que contém um mundo parecido com o dela, porém melhor em muitas maneiras.','Ficção','imagens/ficcao5.jpg','Unknown'),
  (26,'Sorria',NULL,'Em Sorria, tudo na vida da Dra. Rose Cotter muda, após uma paciente morrer de forma brutal em sua frente, e ela testemunhar o incidente bizarro e traumático no consultório. A partir daí, ela começa a experimentar ocorrências assustadoras.','Terror','imagens/terror1.jpg','Unknown'),
  (27,'Aterrorizante 2',NULL,'Aterrorizante 2 se passa um ano depois do primeiro filme. Acordando no necrotério após seu massacre na noite de Halloween do ano passado, Art the Clown está de volta no tempo para o Dia da Reforma!','Terror','imagens/terror2.jpg','Unknown'),
  (28,'Sobrenatural',NULL,'Josh e Renai se mudam com a família para uma casa maior. Lá, o filho Dalton sofre um estranho acidente e entra em coma. Enquanto eles tentam salvar o menino, entidades malignas atormentam a família.','Terror','imagens/terror3.jpg','Unknown'),
  (29,'Invocação do Mal',NULL,'Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada por uma entidade demoníaca em sua fazenda.','Terror','imagens/terror4.jpg','Unknown'),
  (30,'A Freira 2',NULL,'A Freira 2 é o segundo capítulo da história de A Freira (2018). Em 1956, na França, um padre é assassinado e parece que um mal está se espalhando. Determinada a deter o maligno, irmã Irene mais uma vez fica cara a cara com uma força demoníaca.','Terror','imagens/terror5.jpg','Unknown'),
  (31,'La La Land','Cantando Estações','O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.','Romance','imagens/romance1.jpg','Unknown'),
  (32,'Todos Menos Você',NULL,'Bea e Ben têm um primeiro encontro incrível, mas a atração inicial logo se torna ódio mútuo. Um casamento na Austrália força a aproximação dos dois, que decidem fingir um relacionamento para enganar a família e os amigos.','Romance','imagens/romance2.jpg','Unknown'),
  (33,'Como Eu Era','Antes de Você','Em Como Eu Era Antes de Você, o rico e bem sucedido Will (Sam Claflin) leva uma vida repleta de conquistas, viagens e esportes radicais até ser atingido por uma moto. O acidente o torna tetraplégico, obrigando-o a permanecer em uma cadeira de rodas. ','Romance','imagens/romance3.jpg','Unknown'),
  (34,'Simplesmente','Acontece','Os jovens britânicos Rosie (Lily Collins) e Alex (Sam Claflin) são amigos inseparáveis desde a infância, experimentando juntos as dificuldades amorosas, familiares e escolares. Embora exista uma atração entre eles, os dois mantêm a amizade acima de tudo. ','Romance','imagens/romance4.jpg','Unknown'),
  (35,'Como se Fosse','a Primeira Vez','Em Como Se Fosse a Primeira Vez, Henry Roth é um veterinário paquerador, que vive no Havaí e é famoso pelo grande número de turistas que conquista. Seu novo alvo é Lucy Whitmore, que mora no local e por quem Henry se apaixona perdidamente.','Romance','imagens/romance5.jpg','Unknown'),
  (36,'O Telefone Preto',NULL,'Em O Telefone Preto, em 1978, uma série de sequestros estão acontecendo na cidade de Denver. Ethan Hawke interpreta o Grabbler, um serial killer que tem seu alvo crianças do bairro.','Mistério','imagens/misterio1.jpg','Unknown'),
  (37,'O Silêncio','dos Inocentes','A agente do FBI, Clarice Starling é ordenada a encontrar um assassino que arranca a pele de suas vítimas. Para entender como ele pensa, ela procura o perigoso psicopata, Hannibal Lecter, preso sob a acusação de canibalismo a ajuda a solucionar o crime.','Mistério','imagens/misterio2.jpg','Unknown'),
  (38,'Um Lugar','Silencioso - Parte 2','Um Lugar Silencioso - Parte 2, se passa logo após os acontecimentos mortais do primeiro filme e a morte de Lee Abbott. O restante da família Abbott precisa agora seguir em frente e enfrentar as criaturas que caçam pelo som.','Mistério','imagens/misterio3.jpg','Unknown'),
  (39,'Corra!',NULL,'Chris é jovem negro que está prestes a conhecer a família de sua namorada branca Rose. A princípio, ele acredita que o comportamento excessivamente amoroso por parte da família dela é uma tentativa de lidar com o relacionamento.','Mistério','imagens/misterio4.jpg','Unknown'),
  (40,'Fragmentado',NULL,'Kevin possui 23 personalidades distintas e consegue alterná-las apenas com a força do pensamento. Um dia, ele sequestra três adolescentes que encontra em um estacionamento. Vivendo em cativeiro, elas passam a conhecer as faces de Kevin.','Mistério','imagens/misterio5.jpg','Unknown'),
  (41,'Batman:','O Cavaleiro das Trevas','Após dois anos desde o surgimento do Batman, os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon e do promotor público Harvey Dent, Batman luta contra o crime organizado. ','acao','imagens/darkknight0.jpg','Unknown'),
  (42,'Top Gun:','Maverick','Depois de mais de 30 anos de serviço como um dos principais aviadores da Marinha, Pete Maverick Mitchell está de volta, rompendo os limites como um piloto de testes corajoso no mundo contemporâneo das guerras tecnológicas.','acao','imagens/topgun2.jpg','Unknown'),
  (43,'Deadpool','& Wolverine','Deadpool & Wolverine reúne o icônico mercenário tagarela Wade Wilson (Ryan Reynolds) e o poderoso mutante Wolverine (Hugh Jackman) em uma aventura explosiva, escrita e produzida pelos mesmos talentos por trás de Deadpool (2016) e Deadpool 2 (2018). ','acao','imagens/deadpool1.jpg','Unknown'),
  (44,'Coringa',NULL,'Em Coringa, Arthur Fleck (Joaquin Phoenix) trabalha como palhaço para uma agência de talentos e, toda semana, precisa comparecer a uma agente social, devido aos seus conhecidos problemas mentais. Após ser demitido, Fleck reage mal à gozação de três homens','Drama','imagens/joker3.jpg','Unknown'),
  (45,'Venom:','Tempo de Carnificina','O relacionamento entre Eddie e Venom está evoluindo. Buscando a melhor forma de lidar com a inevitável simbiose, esse dois lados descobrem como viver juntos e, de alguma forma, se tornarem melhores juntos do que separados.','acao','imagens/venom4.jpg','Unknown'),
  (46,'O Corvo',NULL,'Um ano após ter sido assassinado juntamente com sua noiva por uma gangue, Eric Draven (Brandon Lee), um músico de rock, retorna da sepultura com a ajuda de um misterioso corvo, com a intenção de se vingar de seus assassinos.','acao','imagens/corvo5.jpg','Unknown'),
  (47,'IT','- Captulo Dois','Em It - Capítulo 2, 27 anos depois dos eventos de \"It - A Coisa\", Mike (Isaiah Mustafa) percebe que o palhaço Pennywise (Bill Skarsgard) está de volta à cidade de Derry. Ele convoca os antigos amigos do Clube dos Otários para honrar a promessa de infância','Terror','imagens/it6.jpg','Unknown'),
  (48,'Vingadores:','Guerra Infinita','Homem de Ferro, Capitão América, Thor, Hulk e os Vingadores se unem para combater o maligno Thanos. Em uma missão para coletar todas as seis pedras infinitas, Thanos planeja usá-las para infligir sua vontade maléfica sobre a humanidade. ','acao','imagens/vingadores7.jpg','Unknown'),
  (49,'Meu Malvado','Favorito 4','Nesta sequência, o vilão mais amado do planeta, que virou agente da Liga Antivilões, retorna para mais uma aventura em Meu Malvado Favorito 4. Agora, Gru, Lucy, Margo, Edith, Agnes e Gru Jr, vivem em paz até que um mentor do crime escapa da prisão. ','comedia','imagens/malvado8.jpg','Unknown'),
  (50,'Em Ritmo de Fuga',NULL,'Em Ritmo de Fuga, o jovem Baby (Ansel Elgort) tem uma mania curiosa: precisa ouvir músicas o tempo todo para silenciar o zumbido que perturba seus ouvidos desde um acidente na infância. Excelente motorista, ele é o piloto de fuga oficial dos assaltos de D','acao','imagens/babydriver9.jpg','Unknown'),
  (51,'Velozes e Furiosos:','Desafio em Tóquio','SSean Boswell é um piloto de rua que desafia seu rival e bate o carro no fim da corrida. Ele decide se mudar para o Japão. Em Tóquio, ele começa a aprender um excitante e perigoso estilo novo de competir nas ruas. ','acao','imagens/velozes10.jpg','Unknown'),
  (52,'Homem Aranha:','Sem Volta Para Casa','Em Homem-Aranha: Sem Volta para Casa, Peter Parker, precisará lidar com as consequências da sua identidade como o herói mais querido do mundo após ter sido revelada pela reportagem do Clarim Diário com uma gravação feita por Mysterio.','acao','imagens/aranha11.jpg','Unknown'),
  (53,'Harry Potter','e a Pedra Filosofal','Harry Potter (Daniel Radcliffe) é um garoto órfão de 10 anos que vive infeliz com seus tios, os Dursley. Até que, repentinamente, ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos.','Fantasia','imagens/harry12.jpg','Unknown');
/*!40000 ALTER TABLE `all_movies` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 18:45:18
