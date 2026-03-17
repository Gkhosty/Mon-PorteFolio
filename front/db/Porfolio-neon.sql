
CREATE TABLE informations (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    titre VARCHAR(200),
    sous_titre VARCHAR(200),
    description TEXT,
    photo VARCHAR(255),
    photo_about VARCHAR(255)
);

INSERT INTO informations (nom, prenom, titre, sous_titre, description, photo, photo_about) VALUES
('Khosty', 'Gulbaddin', 'Développeur Full-stack-Junior Passionné', 'Bienvenue sur mon portfolio', 
'Stagiaire Développeur Web motivé et curieux, prêt à contribuer à des projets concrets. Passionné par le développement d''applications web interactives et dynamiques.',
'Profile.jpeg', 'Profile2.jpeg');



-- Table 2: Section About
CREATE TABLE about (
    id SERIAL PRIMARY KEY,
    titre VARCHAR(200),
    paragraphe1 TEXT,
    paragraphe2 TEXT
);

INSERT INTO about (titre, paragraphe1, paragraphe2) VALUES
('Pourquoi me choisir pour votre prochain projet ?',
'Je suis Gulbaddin Khosty, développeur Full-stack basé à Suresnes. Avec une solide expérience en développement web et une passion pour les technologies modernes, je transforme vos idées en applications web performantes et élégantes.',
'Mon parcours atypique m''a permis de développer des compétences humaines essentielles : écoute, adaptabilité et travail d''équipe. Je parle quatre langues et je suis capable de travailler dans des environnements multiculturels.');



-- Table 3: Statistiques
CREATE TABLE statistiques (
    id SERIAL PRIMARY KEY,
    titre VARCHAR(100),
    valeur INT
);

INSERT INTO statistiques (titre, valeur) VALUES
('Clients Satisfaits', 90),
('Projets Réussis', 75),
('Code Qualité', 87),
('Disponibilité', 95);



-- Table 4: Services
CREATE TABLE services (
    id SERIAL PRIMARY KEY,
    icone VARCHAR(50),
    titre VARCHAR(150),
    description TEXT
);

INSERT INTO services (icone, titre, description) VALUES
('📱', 'Front-End', 'Création d''interfaces modernes et responsives avec React, Next.js et TypeScript'),
('💻', 'Digital Marketing', 'Optimisation SEO et stratégies digitales pour augmenter votre visibilité en ligne'),
('🎨', 'Web Development', 'Développement de sites web complets, du design à la mise en production'),
('☁️', 'Creative Design', 'Design UI/UX innovant et création d''expériences utilisateur mémorables'),
('📊', 'SEO Marketing', 'Amélioration du référencement naturel et analyse de performance'),
('💼', 'Web Development', 'Applications web sur mesure avec bases de données et APIs sécurisées');



-- Table 5: Compétences
CREATE TABLE competences (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    description TEXT,
    pourcentage INT
);

INSERT INTO competences (nom, description, pourcentage) VALUES
('HTML', 'Structure et sémantique des pages web', 90),
('CSS', 'Mise en page et design responsive', 85),
('JavaScript', 'Développement d''applications interactives', 85),
('TypeScript', 'JavaScript typé pour plus de robustesse', 75),
('React', 'Création de composants réutilisables', 80),
('Next.js', 'Framework React performant', 75),
('Express.js', 'Développement backend Node.js', 80),
('SQL', 'Bases de données relationnelles', 75);



-- Table 6: Expériences
CREATE TABLE experiences (
    id SERIAL PRIMARY KEY,
    annee VARCHAR(50),
    entreprise VARCHAR(150),
    poste VARCHAR(150),
    description TEXT
);

INSERT INTO experiences (annee, entreprise, poste, description) VALUES
('2025 - 2026', 'Ada - Tech School', 'Formation Développement Web', 'Formation en développement web et technologies modernes'),
('2022 - 2025', 'Emmaüs Solidarité', 'Animateur d''atelier Numérique, Interprétariat', 'Auxiliaire Socio Éducatif - Animation d''ateliers numériques et interprétariat'),
('2021 - 2022', 'Dispositif Régional Île de France', 'Parcours d''entrée dans l''emploi', 'Avenir Jeunes - Objectif emploi Ouest, Pantin (93)'),
('2019 - 2021', 'Association BAAM - Paris', 'Interprète', 'Interprétariat pour l''association à Paris');



-- Table 7: Contact (infos de contact)
CREATE TABLE contact (
    id SERIAL PRIMARY KEY,
    telephone VARCHAR(50),
    email VARCHAR(100),
    localisation VARCHAR(100),
    langues TEXT
);

INSERT INTO contact (telephone, email, localisation, langues) VALUES
('07-58-32-94-11', 'omarsaiidy007@gmail.com', 'Suresnes, France', 'Français, Anglais, Persan/Hindi, Pashto');



-- Table 8: Footer
CREATE TABLE footer (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    description TEXT,
    telephone VARCHAR(50),
    email VARCHAR(100),
    localisation VARCHAR(100),
    copyright VARCHAR(200)
);

INSERT INTO footer (nom, description, telephone, email, localisation, copyright) VALUES
('Gulbaddin Khosty', 
'Développeur Full-stack passionné par la création d''applications web modernes et performantes.',
'07-58-32-94-11',
'omarsaiidy007@gmail.com',
'Suresnes, France',
'© 2026 Gulbaddin Khosty. Tous droits réservés.');

