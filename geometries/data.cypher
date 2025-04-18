CREATE 
// Entities: States
(sachsen:State {name: 'Saxony', population: 4077937, area: 18415.66, state_capital: 'Dresden'}), 
(sachsenanhalt:State {name: 'Saxony-Anhalt', population: 2186643, area: 20451.7, state_capital: 'Magdeburg'}), 
(bayern:State {name: 'Bavaria', population: 13369393, area: 70550.19, state_capital: 'Munich'}), 
(niedersachsen:State {name: 'Lower-Saxony', population: 8140242, area: 47709.82, state_capital: 'Hannover'}),

// Entities: Geometries
(sachsen_geom:Geometry {url: 'https://github.com/aurioldegbelo/geod2025/blob/main/sachsen.geojson'}), 
(sachsenanhalt_geom:Geometry {url: 'https://github.com/aurioldegbelo/geod2025/blob/main/sachsen-anhalt.geojson'}), 
(bayern_geom:Geometry {url: 'https://github.com/aurioldegbelo/geod2025/blob/main/bayern.geojson'}), 
(niedersachsen_geom:Geometry {url: 'https://github.com/aurioldegbelo/geod2025/blob/main/niedersachsen.geojson'}), 

// Relationships State-Geometry
(sachsen) -[:HAS_GEOMETRY]-> (sachsen_geom),
(sachsenanhalt) -[:HAS_GEOMETRY]-> (sachsenanhalt_geom),
(bayern) -[:HAS_GEOMETRY]-> (bayern_geom),
(niedersachsen) -[:HAS_GEOMETRY]-> (niedersachsen_geom),

// Relationships Geometry-Geometry
(sachsen_geom) -[:TOUCHES]-> (sachsenanhalt_geom),
(sachsen_geom) -[:TOUCHES]-> (bayern_geom),

(sachsenanhalt_geom) -[:TOUCHES]-> (niedersachsen_geom),
(sachsenanhalt_geom) -[:TOUCHES]-> (sachsen_geom),

(niedersachsen_geom) -[:TOUCHES]-> (sachsenanhalt_geom),
(bayern_geom) -[:TOUCHES]-> (sachsen_geom)
