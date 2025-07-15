                                                                                TIMECRAFT – Software Utilitar

I. Tematica:
 În acest capitol se va prezenta ideea aplicației TimeCraft, rolul acesteia în rândul utilizatorilor,
problemele pe care dorim să le rezolvăm în rândul lor și planul pe care l-am luat în calcul în
vederea realizării aplicației.
• Analiza pieței: TimeCraft este o idee nouă care oferă cursuri ușor de abordat
pentru orice nivel de cunoștințe, Inteligență Artificială ce asistă utilizatorul în
procesul de a dobândi și de a introduce în viața de zi cu zi a informațiilor noi și
un mod de a-ți organiza timpul pentru a le permite utilizatorilor să integreze în
rutina lor zilnică cursurile dorite pentru a se menține disciplinați și pentru a
progresa constant.
 Proiectul nostru are probabilitate mare de a funcționa atât pe termen scurt cât
și pe termen lung fiind datorat faptul că aplicația se află în domeniul de dezvoltare
personală deschis tinerilor ce au probleme de organizare a timpului și nu reușesc
să fie atât de productivi pe cât ar putea și care își doresc o schimbare în acest
sens, lucru vizibil în rândul generațiilor actuale cât și în rândul generațiilor ce vor
veni.
• Planificarea dezvoltării: În cadrul planificării dezvoltării am luat în calcul ca
prim aspect analiza pieței de dezvoltare personală pe care am dorit să activăm
analizând ce oferă restul concurenților, cu ce trebuie să venim în plus, ce este deja
pe piață și trebuie îmbunătățit și cum am motiva utilizatorii să utilizeze aplicația
TimeCraft în detrimentul altor aplicații.

 Am decis să oferim în plus față de competiție Inteligența Artificială integrată în
aplicație și mod de organizare a timpului. Pe lângă asta, noi oferim cursuri mai
ușor de abordat și intuitive pe toate domeniile. Prin aceste caracteristici și
înregistrarea gratuită comparat cu competiția ce oferă caracteristici limitate fără
abonament, noi motivăm utilizatorii să continue să beneficieze de funcțiile
noastre.
2
 Pentru realizarea aplicației am dorit să găsim un program ce oferă posibilitatea
de a programa atât vizual, cât si prin scriptarea liniilor de cod pentru funcțiile mai
complicate (un exemplu fiind Inteligența Artificială). Am optat pentru
FlutterFlow fiind un program în care deja aveam experiență de utilizare ce near fi ajutat și în realizarea designului pentru majoritatea interfețelor. Pentru restul
interfețelor am dorit să optăm pentru Adobe Illustrator.
II. Implementarea aplicației:
 În cadrul acestui capitol se va prezenta tot procesul de dezvoltare al aplicației, cerințele de
sistem, stadiul în care aceasta se află, securitate și informații referitoare la stadiul în care
aceasta se află.
• Proiectarea arhitecturală: Modul în care noi am implementat aplicația a fost
cu scopul de a ne permite să lucrăm pe fiecare pagina individual și să putem
adăuga la liber funcții și elemente grafice noi. Ne-am permis să implementăm cu
ușurință pagini noi și elementele acestora datorită faptului că le-am salvat pe toate
într-un mod organizat pentru a le putea folosi în viitor și să le oferim funcții noi
de-a lungul procesului de realizare a aplicației. Programul pe care l-am utilizat
ne-a permis să lucrăm în cascadă având posibilitatea de a avea acces editării
oricărui element grafic și pentru a le modifica proprietățile.
 Programul utilizat pentru realizarea aplicației este FlutterFlow acesta fiind un
editor ce ne pune la dispoziție funcții împreună cu elemente grafice, template-uri
deja prestabilite și abilitatea de a realiza propriile funcții și elemente dorite cu
propriul cod și propriile atribuiri.
 Altă tehnologie pe care am utilizat-o este Firebase ce ne-a permis realizarea
bazei de date, aceasta aplicație fiind oferită gratuit în colaborare cu FlutterFlow
ce ne-a dat posibilitatea de a stoca și de a avea acces asupra informațiilor
utilizatorilor.
• Tehnologiile folosite: Motivul pentru care am folosit aceste platforme
menționate mai sus este datorită faptului că ne-au pus pe tavă toate funcțiile
necesare pentru ca noi să realizăm aplicația într-un stagiu complet funcțional.
Datorită utilizării bazei de date aplicația necesită o conexiune stabilă la internet
3
prin Wi-Fi și date mobile sau conexiune LAN în cazul utilizării aplicației pe un
emulator instalat pe computer.
• Stabilitatea aplicației: Aplicația folosește eficient resursele sistemului și nu
afectează sistemul în mod negativ în timpul rulării sale. Nu suferă de nicio
problemă legată de supraîncărcarea memoriei și este optimizată să încarce orice
pagină în mai puțin de o secundă rulată pe un dispozitiv cu specificații medii.

 Cerințe minime de sistem: RAM: 4 GB
 Procesor: 1.2 GHz, Quad-Core Processor
Stocare: 16 GB

Cerințe recomandate de sistem: RAM: 6 GB
 Procesor: 2.5 GHz, Quad-Core Processor
 Stocare: 32 GB
• Securitatea aplicației: Securitatea aplicației noastre este complet
monitorizată și oferită de baza de date pe care am folosit-o, aceea fiind
Firebase, și toate măsurile de securitate sunt la standardul întreținut de ei.
Orice mecanism de prevenție și protejarea împotriva injecțiilor și exploarea
vulnerabilităților aplicației este la fel ca la orice aplicație care se bazează pe
baza de date Firebase pentru menajarea și întreținerea datelor lor, și chiar dacă
ei permit autorilor aplicației în mare parte să determine ei măsurile de
securitate, ei oferă din start encriptarea datelor folosind HTTPS și izolarea
datelor utilizatorului.
• Testarea produsului: Modalitatea noastră de testare a aplicației a fost prin
intermediul aceluiași program prin care am realizat aplicația, FlutterFlow, prin
posibilitatea de a rula codul adăugat testând astfel aplicația. Probleme
întâmpinate în timpul lucrărilor depistate în urma testării aplicației sunt lipsa
funcției anumitor butoane ce sistemul de bug tracking ne-a depistat-o
ilustrându-ne și butonul exact căruia îi lipsea funcția.
4
• Maturitatea aplicației: Aplicația noastră este complet funcțională
nelipsindu-i niciuna din funcțiile promise utilizatorilor săi, aceasta fiind
pregătită de lansare.

• Folosirea unui sistem de versionare: Am salvat fiecare versiune a aplicației
pe întreaga perioadă a realizării acesteia (Fig.3, pag.13) și am organizat
numeric ordinea acestora.
III. Interfața:
 În acest capitol se vor prezenta metodele prin care a fost realizată interfața și elementele
grafice ale aplicației cât și o scurtă prezentare a întreg funcționalului.
• Interfața aplicației TimeCraft a fost realizată în mare parte cu ajutorul
programului web FlutterFlow (Fig. 1), unele elemente grafice fiind realizate în
Adobe Illustrator (Fig. 2) fiind apoi importate în program pentru a le adăuga în
interfață. FlutterFlow ne-a pus la dispoziție diverse instrumente pentru a adăuga
text, chenare, imagini, butoane cărora le-am asociat și funcțiile corespunzătoare
putând să le schimbăm culorile, mărimea și fontul acestora.

Fig. 1 – Realizarea interfeței în FlutterFlow
5

 Aspectul aplicației este în temă cu designurile actuale ale programelor software
din prezent bazându-se pe minimalism în “stilul bento” cu accente aurii făcând
parte din tematica TimeCraft – seriozitate și lux ce impune imaginea unui produs
calitativ.
 Interfața a fost gândită în așa fel încât să se adapteze la mai multe tipuri de
dispozitive pe lângă telefon (tabletă, calculator) și se recomandă utilizarea
aplicației în modul portrait dar poate fi utilizată și în modul landscape.
Exemplu de stil bento
Fig. 2 – Realizarea unui element grafic cu funcție în Adobe Illustrator
6
• Experiența utilizatorului: Interfața a fost proiectată în așa fel încât să fie
intuitivă pentru utilizator și să nu se rătăcească printre opțiuni fiindu-i
accesibilă de oriunde orice funcție ce individul dorește să o acceseze. Acesta
se poate deplasa cu ușurință printre opțiuni, animațiile fiind fluide și
neexistând blocări de cadre pe secundă.
• Prezentarea funcționalului:
 La prima accesare a aplicației utilizatorul este întâmpinat de meniul de
conectare sau de creere a contului în cazul în care acesta este la prima utilizare.
Acesta are opțiunea de conectare/creere a contului prin intermediul emailului
și a parolei dar, dorim să implementăm pe viitor și opțiunea prin intermediul
contului Google existent.
7
 Meniul principal după conectarea utilizatorului
este cel de Home sau Acasă. Interfața paginii
principale este prevăzută cu un meniu în partea
superioară a ecranului (Fig. 4) cu butoane
prevăzute cu funcții pentru pagina de Setări și a
funcției de Căutare, în partea inferioară este
meniul prevăzut cu 5 butoane cu funcțiile și
opțiunile principale ale aplicației (de la stânga la
dreapta în Fig. 5 –Home, Explorare, Inteligență
Artificială, Calendar și pagina de setări a
contului) și 4 cursuri (Fig. 6) alese din suita de
cursuri a aplicației ce sunt cel mai mult în interesul
utilizatorilor.
Fig. 4 – Meniul situat în partea superioară a ecranului
destinat accesării Setărilor și funcției de Căutare
Fig. 5 – Meniul situate în partea inferioară a ecranului destinat
accesării paginilor funcțiilor principale și a setărilor contului
Fig. 6 – Buton cu funcție pentru accesarea unui curs de pe
pagina principală (Home)
8
 Pagina Setări dispune utilizatorului diverse
informații, pagină pentru sursele conținutului
extern utilizat, trei butoane destinate paginilor
noastre de social media, site și buton pentru
deconectarea contului. În partea superioară a
paginii este butonul cu funcție pentru
întoarcere (Fig.7) prezent în toate paginile ce
interfața lor nu dispune de meniul din partea
superioară (Fig. 4, pag. 7) și inferioară (Fig. 5,
pag. 7).
Fig. 7 – Buton de întoarcere pe pagina anterioară
9
 Pagina Explorare prezintă toată suita de
cursuri ce pot fi accesate prin intermediul
butoanelor cu funcții pentru accesarea lor
(Fig. 8).
 În urma accesării unui curs utilizatorului i se
deschide o pagină (Fig. 9) de unde are o
descriere asupra cursului respectiv și mai multe
butoane pentru selectarea a unei secțiuni anume
din curs (Fig. 10) sau butonul Start situat în
partea inferioară a interfeței pentru a parcurge
tot cursul cronologic.
Fig. 8 – Buton cu funcție pentru accesarea unui curs de pe
pagina Explorare
Fig. 10 – Buton pentru accesarea chestionarului Fig. 9 – Pagină de curs
bazat pe video-ul de curs
10
 Pagina de Inteligență Artificială este
compusă în partea inferioară a ecranului
dintr-un spațiu destinat introducerii textului,
un buton de trimitere și butonul de întoarcere
pe pagina anterioară (Fig.7, pag. 8),
neexistând meniul paginii Home pe această
pagină.
 Pagina de setări a contului permite
deconectarea, modificarea informațiilor
contului (nume, descriere, număr de
telefon, vârstă) și schimbarea parolei.
11
IV. Prezentarea proiectului:
 În cadrul acestui capitol vor fi menționate mai multe informații referitoare la documentație.
• Documentația proiectului: Problema pe care încercăm să o rezolvăm este
lipsa disciplinei și a abilităților ce tinerii Generației Z duc lipsa.

 Noi dorim să rezolvăm problema optimizând și îmbunătățind procesul de
învățare al abilităților noi.
 Publicul nostru țintă reprezentând tinerii Generației Z (1997-2012) interesul lor
principal fiind dezvoltarea personală și dobândirea informațiilor noi.
 Funcțiile principale ale aplicației noastre sunt cele legate de cursuri, Inteligență
Artificială și Calendar. Cursurile reprezintă tot conținutul principal al aplicației
și conțin ca mijloace conținut video, chestionare și o secțiune special pentru a
oferi utilizatorilor obiective necesare de îndeplinit pentru finalizarea cursului.
Inteligența Artificială este modul prin care utilizatorul poate să caute într-o
măsură rapidă de timp informații legate de categoriile din care este interesat și
să-și clarifice orice tip de nelămurire. Calendarul este un mod pentru utilizatori
să-și planifice programul din timp.
 Aplicația a fost implementată prin pagini cu elemente și funcții proprii ce sunt
interconectate una cu cealaltă.
 Elementele distinctive ale aplicației noastre sunt reprezentate de cursurile
noastre ușor de abordat pentru orice nivel, Inteligența Artificială performantă
integrată în aplicație și modalități de a-ți manageria timpul. Punctele noastre forte
față de competiția noastră sunt cursurile în domenii mai vaste și lipsa serviciilor
contracost pentru utilizarea aplicației.
 Aplicația noastră poate fi descărcată prin intermediul unui pachet APK care este
suportat de toate dispozitivele cu sistem de operare Android. Este necesar ca
utilizatorul să acceseze conținutul cu un singur click pentru a începe procesul de
instalare. Odată instalată utilizatorul trebuie să-și creeze un cont individual sau
pe baza contului de Google și să-și introducă informațiile corespunzătoare. Odată
conectat are la dispoziție toate funcțiile aplicației.
12
 Tehnologia pe care am decis să o folosim este datorită utilității și a experienței
deja dobândite în utilizarea programului. Considerăm că ideea de la baza
proiectului este una mult mai largă care reprezintă toată direcția către dezvoltarea
personală ce este împărtășită în rândul tinerilor. Credem că Inteligența Artificială
și cursurile în domenii vaste le vor mări cunoștințele generale ale acestora și îi
vor ajuta în a face primul pas către acest drum.
 Plănuim să adăugăm în viitor aplicației noastre cursuri noi în diverse domenii,
mai multe funcții legate de monitorizarea progresului, managerierea timpului,
funcția Cluburi destinată alăturării în diferite comunități cu alți utilizatori având
posibilitatea de a comunica cu aceștia și îmbunătățirea funcțiilor deja existente și
posibilitatea creerii unui cont prin intemediul contului Google.
 Recenziile primite de la persoane cărora le-am încredințat aplicația au fost
pozitive fără observații. Cele mai mari laude asupra aplicației au fost pentru
funcția de Inteligență Artificială și pentru varietatea de cursuri disponibilă.
13
V. Lucrul în echipă:
 În acest capitol vor fi date referitoare la componența echipei și rolul fiecărui membru.
• Distribuția rolurilor: Echipa realizatoare a proiectului este compusă din doi
membri, Postolache Tudor-Justin și Leonte Albert-Mihai. Ambii membrii sau ocupat de realizarea aplicației, iar pentru realizarea documentației sarcina i-a
revenit în totalitate membrului Postolache Tudor-Justin. Contribuția noastră
asupra aplicației s-a împărțit astfel:
 Postolache Tudor-Justin: -Realizarea interfeței
 -Realizarea paginii Setări
 -Realizarea cursurilor și a funcției Explorare
 Leonte Albert-Mihai: -Realizarea interfeței și a logo-ului
 -Realizarea bazei de date în Firebase
 -Realizarea funcției de Căutare, de Inteligență
 Artificială, de Calendar, meniul principal și
 meniul de cont
• Modul de lucru în echipă: În vederea realizării aplicației am ales modul de
lucru online, programul FlutterFlow permițându-ne să ne trimitem link-uri de
acces pentru a lucra la aplicație pentru a adăuga interfețele de pe o varianta
duplicată a originalului în care fiecare a lucrat cu excepția bazei de date ce a fost
direct făcută pe varianta originală. FlutterFlow ne-a permis prin acest mod să
pastrăm și o arhivă a mai multor versiuni (Fig. 3). Ca metode de comunicare am
folosit WhatsApp pentru
comunicarea prin
intermediul mesajelor și
Discord pentru
comunicarea audio-video
ce ne-a permis să
partajăm și ecranul pentru
a ne prezenta în timp real
toate noutățile adăugate
aplicației. Fig. 3 – Meniul din FlutterFlow de accesare al proiectelor cu
toate versiunile arhivate
14
VI. Resurse obligatorii:
• Codul sursă:
https://drive.google.com/drive/folders/1ALjlYn3wWsyz8dTE4Fds1wopUI0qhSNX?usp=sharing

• Aplicația și versiunile vechi:
https://drive.google.com/drive/folders/18vfZSVrJxQN4EcDEb1x7yjEZQbJUgD9r


• Bibliografie:
Linkuri Video:
https://www.youtube.com/watch?v=TN9i9Ni0Xr4
https://www.youtube.com/watch?v=7S0NjKYlJ7I
https://www.youtube.com/watch?v=3JOEZb46-dM
https://www.youtube.com/watch?v=vyiQw-qiv80
https://www.youtube.com/watch?v=Wla7FB3Vrm0
https://www.youtube.com/watch?v=q6Fh07zQ2K
https://www.youtube.com/watch?v=I-k-iTUMQAY&t=11s
https://www.youtube.com/watch?v=ZzaPdXTrSb8
https://www.youtube.com/watch?v=kqtD5dpn9C8
https://www.youtube.com/watch?v=P6W8kwmwcno
https://www.youtube.com/watch?v=p3EwVIpzFjI&t=151s
https://www.youtube.com/watch?v=ptXB3rUisgk&t=47s
https://www.youtube.com/watch?v=R1d_vprBkTE&t=661s
https://www.youtube.com/watch?v=HZOEXUOyiLA
https://www.youtube.com/watch?v=GwCojS5gv70
https://www.youtube.com/watch?v=C_XmUKSB4aI
https://www.youtube.com/watch?v=aCWPUZMpPHg
https://www.youtube.com/watch?v=Ft9oBxsgao0
https://www.youtube.com/watch?v=5_c6K_DYpRU
https://www.youtube.com/watch?v=-P0OVbWvw7I
https://www.youtube.com/watch?v=OCSbzArwB10
https://www.youtube.com/watch?v=6IegDENuxU4
https://www.youtube.com/watch?v=5lrhxxtevZo
15
https://www.youtube.com/watch?v=xUqTgNJgWUs

Fotografii:
https://hellscanyon.tours/2023/01/30/10-pieces-of-fishing-equipment-and-their-uses/
https://wavewear.cc/blogs/blog/an-introduction-to-the-art-of-archery-a-sport-of-skill-and-precision
https://www.woodbridgetownnews.com/news/advantages-of-small-gardening
https://campsaround.com/camping-guide-for-beginners/
https://enterprise.ro/blog/top-10-destinatii-de-camping-unde-poti-ajunge-cu-masina/
https://www.sweetwater.com/insync/parts-of-a-guitar/
https://www.codiga.io/blog/top-programming-languages/
https://www.pexels.com/photo/an-on-treadmill-1954524/
https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Chess_pieces_close_up.jpg/960pxChess_pieces_close_up.jpg
https://wasatchpeak.com/take-care-of-your-hands-artist/
https://medium.com/@Ashfaq.Robin/top-10-programming-languages-of-the-future-updated-in-2020-5cb1e4722bc
https://img.freepik.com/premium-vector/default-avatar-profile-icon-social-media-user-image-gray-avatar-iconblank-profile-silhouette-vector-illustration_561158-3467.jpg?w=360
https://www.covlivinggreatlakes.org/event/the-inspired-chef/
https://www.govtech.com/question-of-the-day/why-are-musicians-dropping-out-of-sxsw
https://www.homesandgardens.com/gardens/how-often-should-you-water-a-vegetable-garden
https://invacare.eu.com/blog/what-is-wheelchair-archery/
https://www.ubuy.com.ro/en/product/J8Z6UA4I8-tungsten-drop-shot-cylinder-weights-fishing-sinkers-sinksquickly-1-74-times-heavier-than-lead-weights-smaller-size-cylinder-shape-quick-connect?ref=hm-google-redirect
https://www.npr.org/sections/alltechconsidered/2016/10/24/499162905/20-years-later-humans-still-no-match-forcomputers-on-the-chessboarhttps://open.spotify.com/track/3OiD9MrzqXCev3WkNsCoIp
https://open.spotify.com/track/3OiD9MrzqXCev3WkNsCoIp
https://t-hause.jimdofree.com/home/
https://www.burnssheehan.co.uk/blog/write-more-valuable-tests-with-react-testing-library/bp1800/
https://www.pinterest.com/pin/793689134347843038/
https://cdn.plus500.com/Media/ArticlesMain/nvidia_ai.png
