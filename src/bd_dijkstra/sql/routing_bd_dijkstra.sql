-----------------------------------------------------------------------
-- Core function for bi_directional_dijkstra_shortest_path computation
-- See README for description
-----------------------------------------------------------------------
--
--

CREATE OR REPLACE FUNCTION pgr_bdDijkstra(
		sql text, 
		source_vid integer, 
        target_vid integer, 
        directed boolean, 
        has_reverse_cost boolean)
        RETURNS SETOF pgr_costResult
        AS '$libdir/librouting_bd', 'bidir_dijkstra_shortest_path'
        LANGUAGE c IMMUTABLE STRICT;

