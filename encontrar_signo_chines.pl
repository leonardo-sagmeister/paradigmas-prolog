signos_chineses(X, rato) :- X >= 19240205, X =< 19250124;
                            X >= 19360124, X =< 19370210;
                            X >= 19480210, X =< 19490128;
                            X >= 19600128, X =< 19610214;
                            X >= 19720215, X =< 19730202;
                            X >= 19840202, X =< 19850219;
                            X >= 19960219, X =< 19970206;
                            X >= 20080207, X =< 20090125.

signos_chineses(X, boi) :- X >= 19250125, X =< 19260212;
                            X >= 19370211, X =< 19380130;
                            X >= 19490129, X =< 19500216;
                            X >= 19610215, X =< 19620204;
                            X >= 19730203, X =< 19740122;
                            X >= 19850220, X =< 19860208;
                            X >= 19970207, X =< 19980127;
                            X >= 20090126, X =< 20100213.

signos_chineses(X, tigre) :- X >= 19260213, X =< 19270201;
                            X >= 19380131, X =< 19390218;
                            X >= 19500217, X =< 19510205;
                            X >= 19620205, X =< 19630124;
                            X >= 19740123, X =< 19750210;
                            X >= 19860209, X =< 19870128;
                            X >= 19980128, X =< 19990215;
                            X >= 20100214, X =< 20110202.

signos_chineses(X, coelho) :- X >= 19270202, X =< 19280122;
                            X >= 19390219, X =< 19400207;
                            X >= 19510206, X =< 19520126;
                            X >= 19630125, X =< 19640212;
                            X >= 19750211, X =< 19760130;
                            X >= 19870129, X =< 19880216;
                            X >= 19990216, X =< 20000204;
                            X >= 20110203, X =< 20120122.

signos_chineses(X, dragão) :- X >= 19280123, X =< 19290209;
                            X >= 19400208, X =< 19410126;
                            X >= 19520127, X =< 19530213;
                            X >= 19640213, X =< 19650201;
                            X >= 19760131, X =< 19770217;
                            X >= 19880217, X =< 19890205;
                            X >= 20000205, X =< 20010124;
                            X >= 20120123, X =< 20130209.

signos_chineses(X, serpente) :- X >= 19290210, X =< 19300129;
                            X >= 19410127, X =< 19420214;
                            X >= 19530214, X =< 19540202;
                            X >= 19650202, X =< 19660120;
                            X >= 19770218, X =< 19780206;
                            X >= 19890206, X =< 19900126;
                            X >= 20010125, X =< 20020211;
                            X >= 20130210, X =< 20140130.

signos_chineses(X, cavalo) :- X >= 19300130, X =< 19310216;
                            X >= 19420215, X =< 19430204;
                            X >= 19540203, X =< 19550123;
                            X >= 19660121, X =< 19670208;
                            X >= 19780207, X =< 19790127;
                            X >= 19900127, X =< 19910214;
                            X >= 20020212, X =< 20030131;
                            X >= 20140131, X =< 20150218.

signos_chineses(X, carneiro) :- X >= 19310217, X =< 19320205;
                            X >= 19430205, X =< 19440124;
                            X >= 19550124, X =< 19560211;
                            X >= 19670209, X =< 19680129;
                            X >= 19790128, X =< 19800215;
                            X >= 19910215, X =< 19920203;
                            X >= 20030201, X =< 20040121;
                            X >= 20150219, X =< 20160207.

signos_chineses(X, macaco) :- X >= 19320206, X =< 19330125;
                            X >= 19440125, X =< 19450212;
                            X >= 19560212, X =< 19570130;
                            X >= 19680130, X =< 19690216;
                            X >= 19800216, X =< 19810204;
                            X >= 19920204, X =< 19930122;
                            X >= 20040122, X =< 20050208;
                            X >= 20160208, X =< 20170127.

signos_chineses(X, galo) :- X >= 19330126, X =< 19340214;
                            X >= 19450213, X =< 19460201;
                            X >= 19570131, X =< 19580217;
                            X >= 19690217, X =< 19700205;
                            X >= 19810205, X =< 19820124;
                            X >= 19930123, X =< 19940209;
                            X >= 20050209, X =< 20060128;
                            X >= 20170128, X =< 20180218.

signos_chineses(X, cachorro) :- X >= 19340215, X =< 19350203;
                            X >= 19460202, X =< 19470121;
                            X >= 19580218, X =< 19590207;
                            X >= 19700206, X =< 19710126;
                            X >= 19820125, X =< 19830212;
                            X >= 19940210, X =< 19950130;
                            X >= 20060129, X =< 20070217;
                            X >= 20180219, X =< 20190204.

signos_chineses(X, porco) :- X >= 19350204, X =< 19360123;
                            X >= 19470122, X =< 19480209;
                            X >= 19590208, X =< 19600127;
                            X >= 19710127, X =< 19720214;
                            X >= 19830213, X =< 19840201;
                            X >= 19950131, X =< 19960218;
                            X >= 20070218, X =< 20080206;
                            X >= 20190205, X =< 20200124.
                            
signoChines(Nome, Signo) :- pessoa(Nome, _, Y), signos_chineses(Y, Signo).

calcularResultado(NomeDoIndividuo, Resultado) :- pessoa(NomeDoIndividuo, MesDia, Resultado), Resultado >= 190000, !.

calcularResultado(NomeDoIndividuo, Resultado) :- pessoa(NomeDoINdividuo, MesDia, _), write('Digite o ano de seu nascimento: '), read(Ano),
						 Resultado is (10000 * Ano + MesDia), !.

calcularResultado(NomeDoIndividuo, Resultado) :- write('Digite, em formato numérico, o dia de seu nascimento: '), read(Dia), 
                                           	 write('Agora, digite o mês de seu nascimento: '), read(Mes), 
                                           	 write('Por fim, digite o ano de seu nascimento: '), read(Ano), 
                                           	 Resultado is (10000 * Ano + 100 * Mes + Dia).

encontrar_signo_chines(NomeDoIndividuo) :- write('Vamos encontrar o seu signo chinês!'), nl, calcularResultado(NomeDoIndividuo, Resultado),
                                           memorizar(pessoa(NomeDoIndividuo, MesDia, Resultado)), memorizar(signoChines(NomeDoIndividuo, _)), 
                                           signoChines(NomeDoIndividuo, Signo),
                                           write(NomeDoIndividuo), write(', segundo nossos cálculos, seu signo é '), write(Signo), 
                                           write(', legal, não?'), nl, !.
