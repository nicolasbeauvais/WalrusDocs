<div id="container">

    <div class="container">
    <div id="sidebar">

        <form id="change-version" action="{$_ENV['W']['base_url']}api/version/change" method="post">
            <label for="version">
                <h1>Walrus</h1>
            </label>
            <select name="version" id="version">
                {foreach $versions as $key => $version}
                    <option value="{$version}"
                            {if ($key === "default")}data-key="default" data-url="{$_ENV['W']['base_url']}doc"{/if}
                            {if ($key === "default") && isset($current_version) && $current_version == $version}
                    selected{/if}>
                        v {$version}
                    </option>
                {/foreach}
            </select>
        </form>

        {if !$isDefault}
            {include file="../version/`$current_version`/doc/doc-menu.tpl"}
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