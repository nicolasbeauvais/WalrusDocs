<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{if isset($title)}{$title} | {/if}Walrus Framework</title>

    {* META DATA *}
    <meta charset="UTF-8" />
    <meta name="robots" content="index, follow" />
    <meta name="description" content="{if isset($description)}{$description}{else}Walrus framework documentation.
    Walrus is a framework for building web-application in a very simple way according to the Model-View-Controller
    (MVC) pattern.{/if}"/>
    <meta name="keywords" content="Walrus, framework, php"/>
    {* META DATA *}

    {* STYLE *}
    <link rel="stylesheet" href="{$_ENV['W']['base_url']}assets/styles/style.css" type="text/css">
    <link rel="stylesheet" href="{$_ENV['W']['base_url']}assets/styles/shCore.css" type="text/css">
    <link rel="stylesheet" href="{$_ENV['W']['base_url']}assets/styles/shThemeDefault.css" type="text/css">
    {* STYLE *}
</head>
<body>
