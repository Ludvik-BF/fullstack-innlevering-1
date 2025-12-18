# Kantinebestilling – Fullstack prosjekt

Dette prosjektet er en enkel prototype for et kantinebestillingssystem.
Tanken er at elever/kunder kan legge inn bestillinger, og at ansatte har en
egen oversikt der bestillingene kan administreres.

Prosjektet er laget som del av fullstack-prosjekt i ITA/ITB.

---

## Status

Per nå er løsningen frontend-basert.
Bestillinger lagres midlertidig i nettleseren ved hjelp av localStorage.

Dette er ment som en forberedelse til senere arbeid med backend og database.

---

## Funksjonalitet

- Legge inn ny bestilling (kunde, produkt, antall, tidspunkt)
- Vise bestillinger i en tabell
- Enkel admin-visning for ansatte
- Mulighet for å slette bestillinger fra admin-siden
- Bestillinger lagres slik at de ikke forsvinner ved refresh

---

## Struktur

- `index.html` – hovedside med bestilling og admin-visning
- `style.css` – enkel styling
- `README.md` – dokumentasjon av prosjektet
## Teknologier brukt

- HTML
- CSS
- JavaScript
- sql

## Videre arbeid / forbedringer

Dette er noen ting som kunne vært lagt til videre:

- Backend med Node.js og Express
- Database (PostgreSQL eller MariaDB)
- Egen innlogging for admin/ansatte
- Bedre validering av input
- Skille admin til egen side

## Kommentarer underveis

Admin-visningen ble lagt til for å tydelig skille mellom bruker og ansatt, og
for å gjøre løsningen mer realistisk i forhold til en faktisk kantine.

Løsningen er holdt relativt enkel for å gjøre koden lett å forstå og forklare.
