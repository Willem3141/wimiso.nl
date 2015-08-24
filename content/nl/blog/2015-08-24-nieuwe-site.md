---
id: 2015-08-24-nieuwe-site
title: Nieuw websiteontwerp
kind: article
created_at: 2015-08-24 22:03
tags:
 - meta
---

Ik heb tijdens de zomer gewerkt aan een nieuw ontwerp voor deze website. Voor als je het leuk vindt om te zien <s>hoe goed ik ben in sites ontwerpen</s> hoe veel ik heb zitten prutsen, heb ik hier een paar plaatjes van de voortgang.

<!-- more -->

Dit alles met dank aan Git en Nanoc, waardoor het eenvoudig is om terug te gaan in de geschiedenis en te kijken hoe de site er toen uitzag :)

De oude versie
--------------

Zo zag de website er het afgelopen jaar uit.

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-07-20.png", :description => "De oude versie van de startpagina (op 20 juli)" %>

21 juli
-------

Als eerste heb ik Nanoc van versie 3 naar versie 4 bijgewerkt. Omdat versie 4 niet helemaal achterwaarts compatibel is met versie 3, moest ik een paar dingen aanpassen. Dit had echter geen invloed op het uiterlijk van de site.

Toen ben ik gaan rommelen met de opmaak. Na een dag zag de startpagina er als volgt uit:

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-07-21.png", :description => "De startpagina op 21 juli" %>

Die foto met de bladeren stond natuurlijk alleen zo prominent op de startpagina. De rest van de pagina's zag er zo uit:

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-07-21-contact.png", :description => "De Contact-pagina op 21 juli" %>

(Ja, die dubbele paginatitel is een bug.)

19 augustus
-----------

Hier had ik het idee om de tekst op de pagina in een wit vak te zetten, met lichtgrijze randen links en rechts. Vervolgens heb ik dat ook doorgetrokken naar de paarse titelbalk en het menu. De bladeren op de startpagina zijn ook weg, maar dat was niet per se de bedoeling. Er zit ook nog een probleempje in de achtergrondkleuren tussen het blok met de inhoud en de voettekst.

Ik heb hier het grid-systeem van Bootstrap losgelaten en mijn eigen CSS gemaakt voor de achtergrondkleuren. Verder ben ik hier begonnen Less te gebruiken in plaats van met de hand alle CSS te maken.

Ten slotte vond ik de groene kleur toch iets te opvallend, en heb ik hem vervangen door blauw.

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-08-19.png", :description => "De startpagina op 19 augustus" %>

23 augustus
-----------

Ik wilde de foto met de bladeren toch terug in de titelbalk van de pagina's. Nu begint het ergens op te lijken...

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-08-23.png", :description => "De startpagina op 23 augustus" %>

24 augustus
-----------

De witte achtergrond loopt nu door tot de onderkant van de pagina. Dat was al de hele tijd de bedoeling, maar het kostte een hoop gedoe met CSS om goed te krijgen. De site werkt nu ook op mobiele telefoons en tablets.

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/2015-08-24.png", :description => "De startpagina op 23 augustus" %>

Nu
--

En na nog wat minieme aanpassingen...

<%= render "/image.html", :url => "/static/img/2015-08-24-nieuwe-site/final.png", :description => "De uiteindelijke versie" %>

Nog te doen
-----------

Er is nog van alles wat ik wil doen. Als eerste mag de startpagina wel iets mooier. Verder wil ik graag inhoudsopgaves toevoegen aan sommige pagina's met veel tussenkopjes. Verder werkt de blogpagina nog niet goed op telefoons. Ik heb de nieuwe versie nu toch maar online gezet, want anders kan ik maar door blijven prutsen :)
