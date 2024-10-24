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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitle_small` varchar(255) DEFAULT NULL,
  `description` text,
  `genre` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES 
(41,'Batman:',NULL,'O Cavaleiro das Trevas','Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', NULL,'imagens/darkknight0.jpg', 'Unknown'),
(42,'Top Gun:','Maverick',NULL,'Depois de mais de 30 anos de serviço como um dos principais aviadores da Marinha, Pete "Maverick" Mitchell está de volta, rompendo os limites como um piloto de testes corajoso. No mundo contemporâneo das guerras tecnológicas, Maverick enfrenta drones e prova que o fator humano ainda é essencial.', NULL,'imagens/topgun2.jpg', 'Unknown'),
(43,'Deadpool','& Wolverine',NULL,'Deadpool & Wolverine reúne o icônico mercenário tagarela Wade Wilson (Ryan Reynolds) e o poderoso mutante Wolverine (Hugh Jackman) em uma aventura explosiva, escrita e produzida pelos mesmos talentos por trás de Deadpool (2016) e Deadpool 2 (2018). Wade Wilson desfruta de um momento de aparente calma ao lado de Vanessa (Morena Baccarin) e seus amigos e, em contra partida, Wolverine se recupera de seus ferimentos. Um têm os seus caminhos cruzados com o outro, dando início a uma improvável aliança. Juntos, eles enfrentam um inimigo formidável em comum, desencadeando uma jornada repleta de ação, humor e reviravoltas surpreendentes. Deadpool & Wolverine promete ser uma aventura épica, cheia de referências aos quadrinhos e momentos de pura adrenalina, proporcionando aos fãs uma experiência única e inesquecível no universo dos super-heróis.', NULL,'imagens/deadpool1.jpg', 'Unknown'),
(44,'Coringa',NULL,NULL,'Em Coringa, Arthur Fleck (Joaquin Phoenix) trabalha como palhaço para uma agência de talentos e, toda semana, precisa comparecer a uma agente social, devido aos seus conhecidos problemas mentais. Após ser demitido, Fleck reage mal à gozação de três homens em pleno metrô e os mata. Os assassinatos iniciam um movimento popular contra a elite de Gotham City, da qual Thomas Wayne (Brett Cullen) é seu maior representante.', NULL,'imagens/joker3.jpg', 'Unknown'),
(45,'Venom:','Tempo de Carnificina',NULL,'Venom - Tempo de Carnificina, se passa em 1996, onde o jovem - prestes a se tornar um serial killer - Cletus Kasady (Woody Harrelson) e sua namorada, Frances Barrison (Naomie Harris), estão sendo levados por policiais para um instituto contra a vontade deles. Mas ambos possuem dois symbiontes que os ajudam a fugir do local. Agora, no tempo presente, um ano após os acontecimentos de Venom (2018), Eddie Brock (Tom Hardy) e o symbionte Venom, estão tendo dificuldades em se acostumar um com o outro. Eddie está tentando voltar com sua carreira como jornalista e para sua sorte, um detetive o aborda para entrevistar Kasady, agora preso e indo para o corredor da morte, que só quer dar entrevista se for com Eddie. Após a entrevista, Eddie e Venom acabam levando fama ao descobrirem mais das vítimas de Kasady antes que ele seja levado para a injeção da morte. Mas, no dia em que Kasady iria pagar por seus crimes, sua execução falha e seu symbionte Carnage o faz escapar da prisão. Agora, Carange e Kasady estão atrás de Venom e Eddie.', NULL,'imagens/venom4.jpg', 'Unknown'),
(46,'O Corvo',NULL,NULL,'Um ano após ter sido assassinado juntamente com sua noiva por uma gangue, Eric Draven (Brandon Lee), um músico de rock, retorna da sepultura com a ajuda de um misterioso corvo, com a intenção de se vingar de seus assassinos.', NULL,'imagens/corvo5.jpg', 'Unknown'),
(47,'IT','- Captulo Dois',NULL,'Em It - Capítulo 2, 27 anos depois dos eventos de "It - A Coisa", Mike (Isaiah Mustafa) percebe que o palhaço Pennywise (Bill Skarsgard) está de volta à cidade de Derry. Ele convoca os antigos amigos do Clube dos Otários para honrar a promessa de infância e acabar com o inimigo de uma vez por todas. Mas quando Bill (James McAvoy), Beverly (Jessica Chastain), Ritchie (Bill Hader), Ben (Jay Ryan) e Eddie (James Ransone) retornam às suas origens, eles precisam se confrontar a traumas nunca resolvidos de suas infâncias, e que repercutem até hoje na vida adulta.', NULL,'imagens/it6.jpg', 'Unknown'),
(48,'Vingadores:','Guerra Infinita',NULL,'Em Vingadores: Guerra Infinita, Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', NULL,'imagens/vingadores7.jpg', 'Unknown'),
(49,'Meu Malvado','Favorito 4',NULL,'Nesta sequência, o vilão mais amado do planeta, que virou agente da Liga Antivilões, retorna para mais uma aventura em Meu Malvado Favorito 4. Agora, Gru (Leandro Hassum), Lucy (Maria Clara Gueiros), Margo (Bruna Laynes), Edith (Ana Elena Bittencourt) e Agnes (Pamella Rodrigues) dão as boas-vindas a um novo membro da família: Gru Jr., que pretende atormentar seu pai. Enquanto se adapta com o pequeno, Gru enfrenta um novo inimigo, Maxime Le Mal (Jorge Lucas) que acaba de fugir da prisão e agora ameaça a segurança de todos, forçando sua namorada mulher-fatal Valentina (Angélica Borges) e a família a fugir do perigo. Em outra cidade, as meninas tentam se adaptar ao novo colégio e Valentina incentiva Gru a tentar viver uma vida mais simples, longe das aventuras perigosas que fez durante quase toda a vida. Neste meio tempo, eles também conhecem Poppy (Lorena Queiroz), uma surpreendente aspirante à vilã e os minions dão o toque que faltava para essa nova fase.', NULL,'imagens/malvado8.jpg', 'Unknown'),
(50,'Em Ritmo de Fuga',NULL,NULL,'Em Ritmo de Fuga, o jovem Baby (Ansel Elgort) tem uma mania curiosa: precisa ouvir músicas o tempo todo para silenciar o zumbido que perturba seus ouvidos desde um acidente na infância. Excelente motorista, ele é o piloto de fuga oficial dos assaltos de Doc (Kevin Spacey), mas não vê a hora de deixar o cargo, principalmente depois que se vê apaixonado pela garçonete Debora (Lily James).', NULL,'imagens/babydriver9.jpg', 'Unknown'),
(51,'Velozes e Furiosos:','Desafio em Tóquio',NULL,'Sean Boswell (Lucas Black) é um adolescente superficial e infeliz, que usa as corridas de rua como válvula de escape. Seu envolvimento irresponsável nas corridas fez com que Sean tivesse problemas com a polícia anteriormente. Após bater com o carro, e como forma de evitar a prisão, Sean é enviado para Tóquio, onde passa a morar com seu pai (Brian Goodman). Em sua nova cidade Sean fica inteiramente deslocado até conhecer Twinkie (Bow Wow), que lhe apresenta as corridas de drift. O drift é uma mistura de derrapagem e velocidade, que corre em circuitos bastante perigosos. Sean logo se empolga com a novidade, o que faz com que se envolva com os corredores locais.', NULL,'imagens/velozes10.jpg', 'Unknown'),
(52,'Homem Aranha:','Sem Volta Para Casa',NULL,'Em Homem-Aranha: Sem Volta para Casa, Peter Parker (Tom Holland) precisará lidar com as consequências da sua identidade como o herói mais querido do mundo após ter sido revelada pela reportagem do Clarim Diário, com uma gravação feita por Mysterio (Jake Gyllenhaal) no filme anterior. Incapaz de separar sua vida normal das aventuras de ser um super-herói, além de ter sua reputação arruinada por acharem que foi ele quem matou Mysterio e pondo em risco seus entes mais queridos, Parker pede ao Doutor Estranho (Benedict Cumberbatch) para que todos esqueçam sua verdadeira identidade. Entretanto, o feitiço não sai como planejado e a situação torna-se ainda mais perigosa quando vilões de outras versões de Homem-Aranha de outro universos acabam indo para seu mundo. Agora, Peter não só deter vilões de suas outras versões e fazer com que eles voltem para seu universo original, mas também aprender que, com grandes poderes vem grandes responsabilidades.', NULL,'imagens/aranha11.jpg', 'Unknown'),
(53,'Harry Potter','e a Pedra Filosofal',NULL,'Harry Potter (Daniel Radcliffe) é um garoto órfão de 10 anos que vive infeliz com seus tios, os Dursley. Até que, repentinamente, ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. Inicialmente Harry é impedido de ler a carta por seu tio Válter (Richard Griffiths), mas logo ele recebe a visita de Hagrid (Robbie Coltrane), o guarda-caça de Hogwarts, que chega em sua casa para levá-lo até a escola. A partir de então Harry passa a conhecer um mundo mágico que jamais imaginara, vivendo as mais diversas aventuras com seus mais novos amigos, Rony Weasley (Rupert Grint) e Hermione Granger (Emma Watson).', NULL,'imagens/harry12.jpg', 'Unknown');

/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_movies`
--

DROP TABLE IF EXISTS `ranking_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitle-small` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_movies`
--

LOCK TABLES `ranking_movies` WRITE;
/*!40000 ALTER TABLE `ranking_movies` DISABLE KEYS */;
INSERT INTO `ranking_movies` VALUES 
(1,'John Wick',NULL,NULL,'Description for John Wick','imagens/acao1.jpg','acao', 'Unknown'),
(2,'Mad Max',NULL,NULL,'Description for Mad Max','imagens/acao2.jpg','acao', 'Unknown'),
(3,'The Raid',NULL,NULL,'Description for The Raid','imagens/acao3.jpg','acao', 'Unknown'),
(4,'Mission Impossible',NULL,NULL,'Description for Mission Impossible','imagens/acao4.jpg','acao', 'Unknown'),
(5,'Fast and Furious',NULL,NULL,'Description for Fast and Furious','imagens/acao5.jpg','acao', 'Unknown'),
(6,'The Hangover',NULL,NULL,'Description for The Hangover','imagens/comedia1.jpg','comedia', 'Unknown'),
(7,'Bridesmaids',NULL,NULL,'Description for Bridesmaids','imagens/comedia2.jpg','comedia', 'Unknown'),
(8,'Superbad',NULL,NULL,'Description for Superbad','imagens/comedia3.jpg','comedia', 'Unknown'),
(9,'Vovó...Zona',NULL,NULL,'Description for Vovó Zona','imagens/comedia4.jpg','comedia', 'Unknown'),
(10,'Gente Grande',NULL,NULL,'Description for Gente Grande','imagens/comedia5.jpg','comedia', 'Unknown'),
(11, 'NULL',NULL,NULL, 'Description for', 'imagens/drama1.jpg', 'Drama', 'Unknown'),
(12, 'NULL',NULL,NULL, 'Description for', 'imagens/drama2.jpg', 'Drama', 'Unknown'),
(13, 'NULL',NULL,NULL, 'Description for', 'imagens/drama3.jpg', 'Drama', 'Unknown'),
(14, 'NULL',NULL,NULL, 'Description for', 'imagens/drama4.jpg', 'Drama', 'Unknown'),
(15, 'NULL',NULL,NULL, 'Description for', 'imagens/drama5.jpg', 'Drama', 'Unknown'),
(16, 'NULL',NULL,NULL, 'Description for', 'imagens/fantasia1.jpg', 'Fantasia', 'Unknown'),
(17, 'NULL',NULL,NULL, 'Description for', 'imagens/fantasia2.jpg', 'Fantasia', 'Unknown'),
(18, 'NULL',NULL,NULL, 'Description for', 'imagens/fantasia3.jpg', 'Fantasia', 'Unknown'),
(19, 'NULL',NULL,NULL, 'Description for', 'imagens/fantasia4.jpg', 'Fantasia', 'Unknown'),
(20, 'NULL',NULL,NULL, 'Description for', 'imagens/fantasia5.jpg', 'Fantasia', 'Unknown'),
(21, 'Tranformers (2007)',NULL, NULL, 'Durante anos os Autobots e os Decepticons, duas raças alienígenas robóticas, duelaram em Cybertron, seu planeta natal. Esta guerra fez com que o planeta fosse destruído, resultando que os robôs se espalhassem pelo universo. Megatron (Hugo Weaving), o líder dos Decepticons, vem à Terra em busca da Allspark, um cubo de Cybertron que possibilita que qualquer aparelho eletrônico seja transformado num robô com inteligência própria. Megatron encontra a Allspark, mas fica congelado no Ártico. Décadas depois outros Decepticons chegam à Terra, numa tentativa de encontrar a Allspark. Seu surgimento logo alerta os principais países, em especial os Estados Unidos, que tem uma base militar no Qatar atacada. Enquanto o Secretário de Defesa John Keller (Jon Voight) tenta descobrir o que está havendo, reunindo todas as forças e informações possíveis, o jovem Sam Witwicky (Shia LaBeouf) tem preocupações mais simples: conseguir uma boa nota no colégio, o que lhe garantirá seu 1º carro. Mas o que ele não esperava era que o veículo escolhido, um Camaro antigo, tinha vida própria.', 'imagens/ficcao1.jpg', 'Ficção', 'Unknown'),
(22, 'Alien:','O Oitavo Passageiro', NULL, 'Description for', 'imagens/ficcao2.jpg', 'Ficção', 'Unknown'),
(23, 'Guardiões', 'da Galaxia - Vol. 2', NULL,'Agora já conhecidos como os Guardiões da Galáxia, os guerreiros viajam ao longo do cosmos e lutam para manter sua nova família unida. Enquanto isso tentam desvendar os mistérios da verdadeira paternidade de Peter Quill (Chris Pratt).', 'imagens/ficcao3.jpg', 'Ficção', 'Unknown'),
(24, 'Doutor Estranho', 'no Multiverso da Loucura', NULL,'Em Doutor Estranho no Multiverso da Loucura, após derrotar Dormammu e enfrentar Thanos nos eventos de Vingadores: Ultimato, o Mago Supremo, Stephen Strange (Benedict Cumberbatch), e seu parceiro Wong (Benedict Wong), continuam suas pesquisas sobre a Joia do Tempo. Mas um velho amigo que virou inimigo coloca um ponto final nos seus planos e faz com que Strange desencadeie um mal indescritível, o obrigando a enfrentar uma nova e poderosa ameaça. O longa se conecta com a série do Disney+ WandaVision e tem relação também com Loki. O longa pertence a fase 4 do MCU onde a realidade do universo pode entrar em colapso por causa do mesmo feitiço que trouxe os vilões do Teioso para o mundo dos Vingadores e o Mago Supremo precisará contar com a ajuda de Wanda (Elizabeth Olsen), que vive isolada desde os eventos de WandaVision.', 'imagens/ficcao4.jpg', 'Ficção', 'Unknown'),
(25, 'Caroline:','15° Aniversário', NULL, 'Celebre o 15º aniversário de Coraline, o aclamado épico em stop-motion que cativou audiências globais desde seu lançamento em 2009. Criado pela mente visionária de Neil Gaiman e o inovador estúdio LAIKA, este filme oferece uma aventura fascinante e repleta de emoção, perfeita para todas as idades. A história segue Coraline, uma jovem que descobre uma porta secreta em sua nova casa, levando-a a uma versão alternativa de sua vida. À primeira vista, essa realidade paralela parece ser uma versão idealizada e melhorada da sua vida real. No entanto, quando essa fantástica e inquietante aventura se torna perigosa e seus pais falsos tentam mantê-la para sempre, Coraline deve usar sua astúcia, determinação e coragem para salvar sua família e retornar ao seu verdadeiro lar.', 'imagens/ficcao5.jpg', 'Ficção', 'Unknown'),
(26, 'Sorria',NULL, NULL, 'Em Sorria, tudo na vida da Dra. Rose Cotter (Sosie Bacon) muda, após uma paciente morrer de forma brutal em sua frente, e ela testemunhar o incidente bizarro e traumático no consultório. A partir daí, ela começa a experimentar ocorrências assustadoras que ela não consegue explicar, mas que de alguma forma, se relacionam com a morte que ela presenciou. Para entender o fenômeno que não sai de sua cabeça, a Dra. irá atrás de respostas, mesmo que o mal também já esteja perseguindo-a, e tudo que ela mais quer, é também fugir. Rose irá até as últimas consequências, com o objetivo de desvendar e combater o mal desconhecido que começou a afetar sua vida e de todos ao seu redor. Cada dia mais imersa nessa teia de acontecimentos assustadores, para sobreviver, ela deverá enfrentar a situação perturbadora que se apresenta, e tentar escapar de sua nova e horrível realidade.', 'imagens/terror1.jpg', 'Terror', 'Unknown'),
(27, 'Aterrorizante 2',NULL, NULL, 'Aterrorizante 2 se passa um ano depois do primeiro filme. Acordando no necrotério após seu massacre na noite de Halloween do ano passado, Art the Clown (David Howard Thornton) está de volta no tempo para o Dia da Reforma! Desta vez, ele está de olho na jovem Sienna (Lauren LaVera) e seu irmão mais novo, Jonathan (Elliott Fullam). Porque é Halloween mais uma vez e a sede de assassinato do sinistro malabarista deve ser satisfeita.  A fantasia caseira de Halloween de Sienna e sua trágica história familiar têm uma conexão misteriosa com os assassinatos que o homem de pesadelo com a fantasia de palhaço cometerá novamente naquela noite.', 'imagens/terror2.jpg', 'Terror', 'Unknown'),
(28, 'Sobrenatural',NULL, NULL, 'A família Lambert, formada por Josh (Patrick Wilson), Renai (Rose Byrne) e os filhos Dalton (Ty Simpkins) e Foster (Andrew Astor), acaba de se mudar. Logo, uma das crianças entra em coma de forma inexplicável, o que faz os pais pensarem que a nova casa abriga algum tipo de espírito do mal. Mas eles logo se mudam do local e nos dias seguintes acabam descobrindo que o problema não estava na casa e sim no próprio filho.', 'imagens/terror3.jpg', 'Terror', 'Unknown'),
(29, 'Invocação do Mal',NULL, NULL, 'Harrisville, Estados Unidos. Um casal (Ron Livinston e Lili Taylor) muda para uma casa nova ao lado de suas cinco filhas. Inexplicavelmente, estranhos acontecimentos começam a assustar as crianças, o pai e, principalmente, a mãe. Preocupada com algumas manchas que aparecem em seu corpo e com uma sequência de sustos que levou, ela decide procurar um famoso casal de investigadores paranormais (Patrick Wilson e Vera Farmiga), mas eles não aceitam o convite, acreditando ser somente mais um engano de pessoas apavoradas com canos que fazem barulhos durante a noite ou coisas do gênero. Porém, quando eles aceitam fazer uma visita ao local, descobrem que algo muito poderoso e do mal reside ali. Agora, eles precisam descobrir o que é e o porquê daquilo tudo acontecendo com os membros daquela família. É quando o passado começa a revelar uma entidade demoníaca querendo continuar sua trajetória de maldades.', 'imagens/terror4.jpg', 'Terror', 'Unknown'),
(30, 'A Freira 2',NULL, NULL, 'A Freira 2 é o segundo capítulo da história de A Freira (2018), que faz parte do universo da franquia Invocação do Mal. No primeiro filme, após uma freira cometer suicídio em um convento na Romênia, o Vaticano envia o atormentado Padre Burke (Demián Bichir) e uma noviça, Irmã Irene (Taissa Farmiga), para investigar o ocorrido. Arriscando suas vidas, a fé e até suas almas, os dois descobrem um segredo profano no local, confrontando uma força do mal que assume a forma de uma freira demoníaca e transforma o convento em um campo de batalha espiritual. Agora, na continuação, anos após os acontecimentos do primeiro filme, um padre é assassinado e parece que o mal está se espalhando por toda a região. Novamente acompanhamos a Irmã Irene quando, após pensar ter escapado por pouco de Valak, a entidade demoníaca, ela é forçada a enfrentar o poderoso e macabro inimigo mais uma vez.', 'imagens/terror5.jpg', 'Terror', 'Unknown'),
(31, 'La La Land','Cantando Estações', NULL, 'Ao chegar em Los Angeles o pianista de jazz Sebastian (Ryan Gosling) conhece a atriz iniciante Mia (Emma Stone) e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva cidade, os jovens tentam fazer o relacionamento amoroso dar certo enquanto perseguem fama e sucesso.', 'imagens/romance1.jpg', 'Romance', 'Unknown'),
(32, 'Todos Menos Você',NULL, NULL, 'Baseado no comédia de William Shakespeare, Much Ado About Nothing, Todos Menos Você, é um longa que acompanha Bea (Sydney Sweeney) e Ben (Glen Powell), dois jovens que combinam um encontro após se esbarrarem nos corredores da faculdade em que estudam. Em uma noite quase perfeita, o jovem casal possui tudo para manter o contato: química, uma boa conversa e um incrível desejo um pelo outro. No entanto, o primeiro encontro não passa disso, e a relação de ambos se esfria até pararem de se falar. Anos após a formatura, os dois acabam coincidentemente sendo convidados para o mesmo casamento na Austrália. Longe de casa e dos problemas, os dois acabam fazendo um trato, fingindo ser um casal para todos até o casamento acabar. Mas a tarefa se torna complicada quando os convidados e familiares percebem a antipatia que nutrem um pelo outro, fazendo com que tornem o trabalho mais convincente e os encontros mais frequentes.', 'imagens/romance2.jpg', 'Romance', 'Unknown'),
(33, 'Como Eu Era','Antes de Você', NULL, 'Em Como Eu Era Antes de Você, o rico e bem sucedido Will (Sam Claflin) leva uma vida repleta de conquistas, viagens e esportes radicais até ser atingido por uma moto. O acidente o torna tetraplégico, obrigando-o a permanecer em uma cadeira de rodas. A situação o torna depressivo e extremamente cínico, para a preocupação de seus pais (Janet McTeer e Charles Dance). É neste contexto que Louisa Clark (Emilia Clarke) é contratada para cuidar de Will. De origem modesta, com dificuldades financeiras e sem grandes aspirações na vida, ela faz o possível para melhorar o estado de espírito de Will e, aos poucos, acaba se envolvendo com ele.', 'imagens/romance3.jpg', 'Romance', 'Unknown'),
(34, 'Simplesmente','Acontece', NULL, 'Os jovens britânicos Rosie (Lily Collins) e Alex (Sam Claflin) são amigos inseparáveis desde a infância, experimentando juntos as dificuldades amorosas, familiares e escolares. Embora exista uma atração entre eles, os dois mantêm a amizade acima de tudo. Um dia, Alex decide aceitar um convite para estudar medicina em Harvard, nos Estados Unidos. A distância entre eles faz com que nasçam os primeiros segredos, enquanto cada um encontra outros namorados e namoradas. Mas o destino continua atraindo Rosie e Alex um ao outro.', 'imagens/romance4.jpg', 'Romance', 'Unknown'),
(35, 'Como se Fosse','a Primeira Vez', NULL, 'Em Como Se Fosse a Primeira Vez, Henry Roth (Adam Sandler) é um veterinário paquerador, que vive no Havaí e é famoso pelo grande número de turistas que conquista. Seu novo alvo é Lucy Whitmore (Drew Barrymore), que mora no local e por quem Henry se apaixona perdidamente. Porém há um problema: Lucy sofre de falta de memória de curto prazo, o que faz com que ela rapidamente se esqueça de fatos que acabaram de acontecer. Com isso Henry é obrigado a conquistá-la, dia após dia, para ficar ao seu lado.', 'imagens/romance5.jpg', 'Romance', 'Unknown'),
(36, 'O Telefone Preto',NULL, NULL, 'Em O Telefone Preto, em 1978, uma série de sequestros estão acontecendo na cidade de Denver. Ethan Hawke interpreta o "Grabbler", um serial killer que tem seu alvo crianças do bairro. Finney Shaw, um garoto de 13 anos, é sequestrado. o garoto acorda em um porão, onde há apenas uma cama e um telefone preto em uma das paredes. Quando o aparelho toca, o garoto consegue ouvir a voz das vítimas anteriores do assassino, e elas tentam evitar que o Finney sofra o mesmo destino. Enquanto isso, sua irmã Gwen tem sonhos que indicam o lugar onde ele pode estar e corre contra o tempo para tentar ajudar os detetives Wright e Miller a ajudar o irmão, apenas para que isso seja em vão. Finney continua a fazer tentativas para escapar que apenas falham, até que uma das vítimas do serial killler fala sobre um plano que finalmente poderia levar Finney à liberdade', 'imagens/misterio1.jpg', 'Mistério', 'Unknown'),
(37, 'O Silêncio','dos Inocentes', NULL,'A agente do FBI, Clarice Starling (Jodie Foster) é ordenada a encontrar um assassino que arranca a pele de suas vítimas. Para entender como ele pensa, ela procura o periogoso psicopata, Hannibal Lecter (Anthony Hopkins), encarcerado sob a acusação de canibalismo.', 'imagens/misterio2.jpg', 'Mistério', 'Unknown'),
(38, 'Um Lugar','Silencioso - Parte 2',NULL, 'Um Lugar Silencioso - Parte 2, se passa logo após os acontecimentos mortais do primeiro filme e a morte de Lee Abbott (John Krasinski). O restante da família Abbott (Emily Blunt, Millicent Simmonds e Noah Jupe) precisa agora seguir em frente e sair de sua antiga casa, encarando o terror mundo afora, continuando a lutar para sobreviver em silêncio e ainda com um recém-nascido. Obrigados a se aventurar pelo desconhecido em busca de sobreviventes, eles percebem que, nem todos os monstros são aqueles que se atraem pelo som.', 'imagens/misterio3.jpg', 'Mistério', 'Unknown'),
(39, 'Corra!',NULL, NULL, 'Chris (Daniel Kaluuya) é jovem negro que está prestes a conhecer a família de sua namorada branca Rose (Allison Williams). A princípio, ele acredita que o comportamento excessivamente amoroso por parte da família dela é uma tentativa de lidar com o relacionamento de Rose com um rapaz negro, mas, com o tempo, Chris percebe que a família esconde algo muito mais perturbador - e o jeito é tentar escapar.', 'imagens/misterio4.jpg', 'Mistério', 'Unknown'),
(40, 'Fragmentado',NULL, NULL, 'Kevin (James McAvoy) possui 23 personalidades distintas e consegue alterná-las quimicamente em seu organismo apenas com a força do pensamento. Um dia, ele sequestra três adolescentes que encontra em um estacionamento. Vivendo em cativeiro, elas passam a conhecer as diferentes facetas de Kevin e precisam encontrar algum meio de escapar.', 'imagens/misterio5.jpg', 'Mistério', 'Unknown');

/*!40000 ALTER TABLE `ranking_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20  0:49:00
