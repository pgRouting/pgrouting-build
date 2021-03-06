/*PGR-GNU*****************************************************************

Copyright (c) 2014 Manikata Kondeti
mani.iiit123@gmail.com

------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

********************************************************************PGR-GNU*/

-----------------------------------------------------------------------
-- Core function for vrp with sigle depot computation
-- See README for description
-----------------------------------------------------------------------
--
--
create or replace function pgr_gsoc_vrppdtw(
    sql text,
    vehicle_num INTEGER,
    capacity FLOAT,
    OUT seq integer,
    OUT route_id BIGINT,
    OUT node_id BIGINT,
    OUT cost FLOAT
)
returns setof record as
'$libdir/${PGROUTING_LIBRARY_NAME}', 'vrppdtw'
LANGUAGE c VOLATILE STRICT;


