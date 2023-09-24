<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'MusicController::index');
$routes->get('/main', 'MusicController::index');
$routes->get('/playlist', 'MusicController::add');
//$routes->get('/Upload', 'MusicController::Upload');


