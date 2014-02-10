<?php

namespace engine\controllers;

use Walrus\core\WalrusFrontController as WalrusFrontController;

/**
 * Class HomeController
 * @package engine\controllers
 */
class HomeController extends WalrusFrontController
{

    public function run()
    {
        $this->skeleton('_skeleton_main');
    }

    public function doc()
    {
        $this->skeleton('_skeleton_doc');
    }
}
