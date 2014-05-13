<?php

namespace engine\controllers;

use Walrus\core\WalrusFrontController;

class ReleasesController extends WalrusFrontController
{

    public function run()
    {
        $this->skeleton('_skeleton_releases');

        $agent = 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko)
        Chrome/32.0.1700.102 Safari/537.36';

        // get milestone
        $url = 'https://api.github.com/repos/E-Wok/Walrus/milestones/1';
        $ch = curl_init();
        curl_setopt_array($ch, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $url,
            CURLOPT_SSL_VERIFYPEER => 0,
            CURLOPT_SSL_VERIFYHOST => 0,
            CURLOPT_VERBOSE => 0,
            CURLOPT_USERAGENT => $agent
        ));

        $milestone = curl_exec($ch);
        $milestone = JSON_decode($milestone, true);
        $now = time();
        $due = strtotime($milestone['due_on']);
        $days = floor(($due - $now) / (60*60*24));
        $days = $days < 0 ? 0 : $days;

        $milestone['total_issues'] = $milestone['closed_issues'] + $milestone['open_issues'];
        $milestone['adv_commit'] = ($milestone['closed_issues'] * 100) / $milestone['total_issues'];
        $milestone['days_before_due'] = $days > 1 ? $days . ' days' : ($days == 0) ? 'out today' : 'out tomorrow';
        //get milestone

        // get releases
        $url = 'https://api.github.com/repos/E-Wok/Walrus/releases';
        curl_setopt_array($ch, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $url,
            CURLOPT_SSL_VERIFYPEER => 0,
            CURLOPT_SSL_VERIFYHOST => 0,
            CURLOPT_VERBOSE => 0,
            CURLOPT_USERAGENT => $agent
        ));

        $releases = curl_exec($ch);
        curl_close($ch);

        $releases = JSON_decode($releases, true);
        // get release

        $this->register('milestone', $milestone);
        $this->register('releases', $releases);
    }
}
