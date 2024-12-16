CREATE 
// Entities: States
(sachsen:State {name: 'Saxony', population: 18139116, area: 34110.26, state_capital: 'Dresden'}), 
(sachsenanhalt:State {name: 'Saxony-Anhalt', population: 6391360, area: 21114.94, state_capital: 'Wiesbaden'}), 
(bayern:State {name: 'Bayern', population: 4159150, area: 19854.21, state_capital: 'Munich'}), 
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
(sachsen_geom) -[:TOUCHES]-> (bayern_geom)

(sachsenanhalt_geom) -[:TOUCHES]-> (niedersachsen_geom),
(sachsenanhalt_geom) -[:TOUCHES]-> (sachsen_geom),

(niedersachsen_geom) -[:TOUCHES]-> (sachsenanhalt_geom)
(bayern_geom) -[:TOUCHES]-> (sachsen_geom)
