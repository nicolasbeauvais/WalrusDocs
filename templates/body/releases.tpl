<div class="container releases">
    <div id="milestone">
        <p class="title">Next release: <span>{$milestone.title}</span></p>
        <div class="gauge">
            <div class="fill issues" style="width:{$milestone.adv_commit}%;"></div>
            <div class="txt">
                <span class="left">Issues</span>
                <span class="right">
                    {$milestone.closed_issues}/{$milestone.total_issues}
                </span>
            </div>
        </div>
    </div>
    <div id="previous">
        <p class="title">Previous releases:</p>
        {foreach $releases as $rel}
            <div class="release">
                <div class="left">
                    <p class="tag">Walrus {$rel.tag_name}</p>
                </div>
                <div class="right">
                    <p class="name">{$rel.name}</p>
                    <ul>
                        <li>Download:</li>
                        <li><a href="{$rel.zipball_url}">.zip</a></li>
                        <li><a href="{$rel.tarball_url}">.tar.gz</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        {/foreach}
    </div>
</div>