<?php

namespace engine\controllers;

use Walrus\core\WalrusFrontController as WalrusFrontController;

/**
 * Class HomeController
 * @package engine\controllers
 */
class HomeController extends WalrusFrontController
{

    private $versions = array(
        '1.1.0b',
        'default' => '1.0.0'
    );


    public function run()
    {
        $this->skeleton('_skeleton_main');
    }

    public function doc($doc, $version = false)
    {

        if ($version && in_array($version, $this->versions)) {
            $_SESSION['version'] = '/' . $version;
        } else {
            unset($_SESSION['version']);
        }

        $this->skeleton('_skeleton_doc');
        $documentation = $this->getSoft('home', 'loadDoc', array($doc));
        $this->register('documentation', $documentation);
        $this->register('versions', $this->versions);
    }

    public function loadDoc($doc)
    {
        if (isset($_SESSION['version'])) {
            $this->setView('version/' . $_SESSION['version'] . '/doc/' . $doc);
        } else {
            $this->setView('/doc/' . $doc);
        }
    }
}
