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
        '1.0.0b',
        'default' => '0.9.0b'
    );

    public function run()
    {
        $this->skeleton('_skeleton_main');
    }

    public function doc($version = false, $doc = false)
    {
        // control
        $version = isset($_SESSION['version']) && !$version ? $_SESSION['version'] : $version;
        $version = $version && in_array($version, $this->versions) ? $version : $this->versions['default'];
        $_SESSION['version'] = $version;
        $isDefault = $this->versions['default'] === $_SESSION['version'];
        $doc = $doc ?: ($version == $this->versions['default'] ? 'required' : 'change-log');
        $url = $_ENV['W']['base_url'] . 'doc/' . ($isDefault ? '' : $version . '/');

        // meta vars
        $description = $this->getSoft('home', 'loadMeta', array($doc, $isDefault));
        $this->register('description', $description);
        $this->register('title', ucwords(str_replace('-', ' ', $doc)));

        // view
        $this->skeleton('_skeleton_doc');
        $documentation = $this->getSoft('home', 'loadDoc', array($doc, $isDefault, $url));

        // content vars
        $this->register('documentation', $documentation);
        $this->register('isDefault', $isDefault);
        $this->register('url', $url);
        $this->register('versions', $this->versions);

    }

    public function loadMeta($doc, $isDefault)
    {
        $this->register('doc', $doc);
        if ($isDefault) {
            $this->setView('/doc/meta');
        } else {
            $this->setView('version/' . $_SESSION['version'] . '/doc/meta');
        }
    }

    public function loadDoc($doc, $isDefault, $url)
    {
        $this->register('url', $url);

        if ($isDefault) {
            $this->setView('/doc/' . $doc);
        } else {
            $this->setView('version/' . $_SESSION['version'] . '/doc/' . $doc);
        }
    }
}
