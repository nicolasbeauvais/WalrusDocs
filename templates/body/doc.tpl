<div id="container">

<div class="container">
    <div id="sidebar">

        <form id="change-version" action="{$smarty.const.URL}api/version/change" method="post">
            <label for="version">
                <h1>Walrus</h1>
            </label>
            <select name="version" id="version">
                {foreach $versions as $key => $version}
                    <option value="{$version}"
                            {if ($key === "default")}data-key="default" data-url="{$smarty.const.URL}doc"{/if}
                            {if ($key === "default" && !isset($smarty.session.version))
                    || isset($smarty.session.version) && $smarty.session.version == $version}
                    selected{/if}>
                        v {$version}
                    </option>
                {/foreach}
            </select>
        </form>

        {if isset($smarty.session.version)}
            {include file="../version`$smarty.session.version`/doc/doc-menu.tpl"}
        {else}
            {include file='../doc/doc-menu.tpl'}
        {/if}
    </div>
    <div id="doc-content">
        {$documentation}
    </div>
    <div class="clear"></div>
</div>

</div>