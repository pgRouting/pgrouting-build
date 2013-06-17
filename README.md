# pgRouting - Routing on PostgreSQL

## STATUS

<table>
	<tr>
		<td>Branch</td>
		<td>Status</td>
		<td>Comment</td>
	</tr>
	<tr>
		<td>master</td>
		<td><img src="https://travis-ci.org/pgRouting/pgrouting.png?branch=master" alt="Build Status"/></td>
		<td>not enabled</td>
	</tr>
	<tr>
		<td>develop</td>
		<td><img src="https://travis-ci.org/pgRouting/pgrouting.png?branch=develop" alt="Build Status"/></td>
		<td></td>
	</tr>
	<tr>
		<td>gh-pages</td>
		<td><img src="https://travis-ci.org/pgRouting/pgrouting.png?branch=gh-pages" alt="Build Status"/></td>
		<td>not enabled</td>
	</tr>
</table>

## INTRODUCTION

pgRouting extends the PostGIS/PostgreSQL geospatial database to provide geospatial routing and other network analysis functionality.

This library contains following features:

* All Pairs Shortest Path, Johnson’s Algorithm
* All Pairs Shortest Path, Floyd-Warshall Algorithm
* Shortest Path A*
* Bi-directional Dijkstra Shortest Path
* Bi-directional A* Shortest Path
* Shortest Path Dijkstra
* Driving Distance
* K-Shortest Path, Multiple Alternative Paths
* K-Dijkstra, One to Many Shortest Path
* Traveling Sales Person
* Turn Restriction Shortest Path (TRSP)


## REQUIREMENT

* C and C++ compilers
* Postgresql version >= 8.4
* PostGIS version >= 1.5
* The Boost Graph Library (BGL). Version >= [TBD]
* CMake >= 2.8.8
* (optional, for Driving Distance) CGAL >= [TBD] 
* (optional, for Documentation) Sphinx >= [TBD] 

## INSTALLATION

See online documentation: http://docs.pgrouting.org/dev/doc/src/installation/index.html

## COMPILATION

For MinGW on Windows

	mkdir build
	cd build
	cmake -G"MSYS Makefiles" -DWITH_DD=ON ..
	make
	make install

Also pre-built Windows binaries can be downloaded from:

    http://www.postgis.net/windows_downloads

For Linux
	
	mkdir build
	cd build
	cmake -DWITH_DD=ON ..
	make
	sudo make install

Build with documentation (requires [Sphinx](http://sphinx-doc.org/))

	cmake -DWITH_DOC=ON -DWITH_DD=ON ..

Postgresql 9.1+

	createdb mydatabase
	psql mydatabase -c "create extension postgis"
	psql mydatabase -c "create extension pgrouting"

For older versions of postgresql

	createdb -T template1 template_postgis
	psql template_postgis -c "create language plpgsql"
	psql template_postgis -f /usr/share/postgresql/8.4/contrib/postgis-1.5/postgis.sql
	psql template_postgis -f /usr/share/postgresql/8.4/contrib/postgis-1.5/spatial_ref_sys.sql
	psql template_postgis -f /usr/share/postgresql/8.4/contrib/postgis_comments.sql

	createdb -T template_postgis template_pgrouting
	psql template_pgrouting -f /usr/share/pgrouting/pgrouting--2.0.0-dev.sql

	createdb -T template_pgrouting mydatabase


## USAGE

See online documentation: http://docs.pgrouting.org/dev/doc/index.html


## LICENSE

* Most features are available under GPLv2.
* Some Boost extensions are available under Boost license (see LICENSE_1_0.txt)
* Some code contributed by iMaptools.com is available under MIT-X license.
