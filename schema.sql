-- Testkunde
INSERT INTO kunde (navn)
VALUES ('Ola Nordmann');

-- Produkter
INSERT INTO produkt (navn, pris)
VALUES 
('Pølse med brød', 35),
('Smoothie', 30);

-- Ny bestilling
INSERT INTO bestilling (kunde_id, dato)
VALUES (1, CURRENT_DATE);

-- Produkter i bestillingen
INSERT INTO bestilling_produkt (bestilling_id, produkt_id, antall)
VALUES 
(1, 1, 2),
(1, 2, 1);

-- Hent oversikt over bestillingen
SELECT 
    k.navn,
    b.id AS bestilling_id,
    p.navn AS produkt,
    bp.antall,
    p.pris
FROM bestilling b
JOIN kunde k ON b.kunde_id = k.id
JOIN bestilling_produkt bp ON b.id = bp.bestilling_id
JOIN produkt p ON bp.produkt_id = p.id;
