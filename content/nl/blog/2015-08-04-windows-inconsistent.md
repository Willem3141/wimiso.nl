---
id: 2015-08-04-windows-inconsistent
title: Waarom is Windows zo inconsistent?
kind: article
created_at: 2015-08-04 16:35
tags:
 - random
---

Een paar dagen geleden hebben we op onze gezinslaptop de upgrade naar Windows 10 gekregen, vanaf Windows 8.1. Tijd om eens te kijken hoe goed dat werkt...

<!-- more -->

<div class="alert alert-warning"><b>Waarschuwing:</b> dit artikel is wellicht niet geheel objectief. Lees het op eigen risico.</div>

Ik was erg benieuwd naar Windows 10, omdat er beloofd werd dat veel rare dingen van Windows 8 (waar ik niet echt een fan van was) weer zouden worden teruggedraaid, en vanwege de nieuwe functies. (Virtuele bureaubladen! Hoera!) Ik was echter nogal teleurgesteld toen ik het had uitgeprobeerd.

Bugs
----

Ik heb echt niet lang zitten te zoeken naar bugs of zo; toch ben ik tegen meerdere problemen aangelopen. Cortana vraagt soms om je aandacht, maar daar gaat iets mis.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-user-name.png", :description => "Hoe gaat het, Voornaam Achternaam?" %>

(Overigens vroeg Cortana me al eerder om mijn naam, en toen heb ik gewoon *Willem* ingevuld.)

Cortana lijkt in het algemeen nogal in de war te zijn met interface-teksten. Ik heb het idee dat er ergens vertaalbare strings zijn omgewisseld.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-menu.png", :description => "Volgens mij zou er van boven naar beneden zoiets als dit moeten staan: Menu, Home, Notebooks, Reminders, Feedback. De icoontjes staan wel goed." %>

Dit zorgt er ook voor dat het nogal lastig is om Cortana te configureren. In het instellingenpaneel lijken alle strings één plaatsje te zijn opgeschoven.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-strange-menu.png", :description => "Let op het label Off bij de aan/uit-schakelaars." %>

De vervelendste bug zat &ndash; grappig genoeg &ndash; in de *Snipping tool* waarmee ik screenshots aan het maken was van het Start-menu. Het probleem leek te zijn dat het Start-menu op de voorgrond wilde blijven en de overlay van de *Snipping tool* ook. Ik kon niet eens bij een taakbeheer-venster komen om de *Snipping tool* te beëindigen. Uiteindelijk moest ik mijn sessie afmelden en opnieuw aanmelden om het op te lossen.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/clipping-tool-hang.jpg", :description => "Sorry voor de slechte kwaliteit, maar het gaat hier om een crash van het programma om screenshots te maken..." %>

Inconsistenties
---------------

Laten we er rekening mee houden dat Windows 10 pas een week uit is. Ik ga ervan uit dat deze bugs binnenkort wel zullen worden opgelost. Wat ik zelf veel irritanter vind, is dat Windows 10 in het geheel niet consistent is. Het systeem voelt niet aan als één geheel: het lijkt net alsof programma's gemaakt zijn door verschillende teams die compleet andere ontwerprichtlijnen hanteerden &ndash; o ja, dat is ook zo. Sommige programma's zijn nog &lsquo;ouderwetse&rsquo; applicaties met een normale desktop-interface, terwijl sommige programma's eruitzien als de Metro-apps uit Windows 8, maar dan in een venster.

We beginnen eens bij de *File Explorer*. Als je met de rechtermuisknop op een bestand klikt, krijg je een popup-menu.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-file.png", :description => "Tot zover is er geen probleem..." %>

Maar om een mij onbegrijpelijke reden krijg je een compleet anders uitziend popup-menu als je op de padnaam klikt.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-address-bar.png", :description => "Verschillende popup-menu's tot nu toe: 2." %>

En als je in het lint op een dropdown-menu klikt, krijg je weer een andere. (Zelfs de tekst-rendering is verschillend!)

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-ribbon.png", :description => "Verschillende popup-menu's tot nu toe: 3." %>

En dat was alleen nog maar de *File Explorer* &ndash; een normale desktop-applicatie. Als we naar een Metro-applicatie kijken, krijgen we nog een compleet ander soort menu.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/alarms-popup.png", :description => "Verschillende popup-menu's tot nu toe: 4." %>

De shell heeft nog een paar andere popup-menu's voor ons, bijvoorbeeld als je met de rechtermuisknop op een item klikt.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/start-menu-popup.png", :description => "Verschillende popup-menu's tot nu toe: 5." %>

Of als je op het pijltje achter *File Explorer* klikt om een submenu te openen. (Die lijkt veel op de vorige, maar deze heeft om de een of andere reden een subtiele schaduw, en de vorige niet. Het lettertype is ook een puntje kleiner.)

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/start-menu-submenu.png", :description => "Verschillende popup-menu's tot nu toe: 6." %>

Ander onderwerp: de systeem-instellingen. Microsoft dacht blijkbaar dat het een goed idee was om een Metro-applicatie voor de instellingen te maken. Goed, dat snap ik. Maar waarom hebben ze ook de oude desktop-applicatie laten staan?

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/two-settings-windows.png", :description => "Nog meer inconsistentie!" %>

De meeste dingen zijn instelbaar in beide versies...

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/two-resolution-windows.png", :description => "Handig, je kunt nu de schermresolutie op twee plaatsen instellen." %>

... maar sommige dingen niet, zoals het thema van de vensters &ndash; dat kan alleen in de desktop-versie. En de privacy-instellingen zitten alleen in de Metro-versie. Waarom? Geen idee. En het dan raar vinden dat mensen dingen niet kunnen vinden, hè.

Ik stop hier maar eens, alhoewel ik nog uren door kan zeuren over dit soort dingen. Mijn mening moge duidelijk zijn, namelijk totale verwarring over waarom Microsoft dacht dat het een goed idee was om consistentie volledig overboord te gooien.
