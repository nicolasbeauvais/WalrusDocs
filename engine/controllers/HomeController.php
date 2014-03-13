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

    public function doc($version = false, $doc = false)
    {
        $version = isset($_SESSION['version']) && !$version ? $_SESSION['version'] : $version;
        $version = $version && in_array($version, $this->versions) ? $version : $this->versions['default'];

        $_SESSION['version'] = $version;
        $isDefault = $this->versions['default'] === $_SESSION['version'];
        $doc = $doc ?: 'required';

        $this->skeleton('_skeleton_doc');
        $documentation = $this->getSoft('home', 'loadDoc', array($doc, $isDefault));

        $this->register('documentation', $documentation);
        $this->register('isDefault', $isDefault);
        $this->register('url', $_ENV['W']['base_url'] . 'doc/' . $version . '/');
        $this->register('versions', $this->versions);
    }

    public function loadDoc($doc, $isDefault)
    {
        if ($isDefault) {
            $this->setView('/doc/' . $doc);
        } else {
            $this->setView('version/' . $_SESSION['version'] . '/doc/' . $doc);
        }
    }
}
