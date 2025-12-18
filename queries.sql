-- Kunde
CREATE TABLE kunde (
    id SERIAL PRIMARY KEY,
    navn VARCHAR(255) NOT NULL
);

-- Produkter i kantina
CREATE TABLE produkt (
    id SERIAL PRIMARY KEY,
    navn VARCHAR(255) NOT NULL,
    pris DECIMAL(10,2) NOT NULL
);

-- Bestilling
CREATE TABLE bestilling (
    id SERIAL PRIMARY KEY,
    kunde_id INT NOT NULL,
    dato DATE NOT NULL,
    FOREIGN KEY (kunde_id) REFERENCES kunde(id)
);

-- Produkter i en bestilling
CREATE TABLE bestilling_produkt (
    bestilling_id INT NOT NULL,
    produkt_id INT NOT NULL,
    antall INT DEFAULT 1,
    PRIMARY KEY (bestilling_id, produkt_id),
    FOREIGN KEY (bestilling_id) REFERENCES bestilling(id) ON DELETE CASCADE,
    FOREIGN KEY (produkt_id) REFERENCES produkt(id)
);
