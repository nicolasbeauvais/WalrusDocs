{* documentation pages *}
{if $doc == 'required'}
The basics of Walrus Framework, help you to check if your current
development can run Walrus Framework whitout any issues.
{elseif $doc == 'installation'}
The first guide to read to configure properly your first PHP application
with Walrus Framework.
{elseif $doc == 'getting-started'}
Walrus Framework's getting started guide will give you all the usefull
informatons you must know before starting your PHP script.
{elseif $doc == 'routing'}
Walrus Framework use a simple routing system inspired by other big
Framework. Walrus let you make really advanced route in YAML with all
the routing options you need.
{elseif $doc == 'cli'}
With Walrus Framework all repetitive and boring task are made by the
WalrusCLI tool, easy to use and intuitive.
{elseif $doc == 'controllers'}
Walrus Framework respect stricly the MVC standard. All your controller
have plenty great tools to simplify programming task with full security
integration.
{elseif $doc == 'models'}
Walrus Framework respect stricly the MVC standard. All models have plenty
great tools to simplify programming task with full security integration and
RedBean ORM integration.
{elseif $doc == 'api-long-polling'}
Walrus Framework give an integrated API tool to help you make custom
internal or external API for your PHP application, the API tool also give
a easy to use long polling script.
{elseif $doc == 'skeleton'}
As managing template between front-end and back-end developers isn't always
easy, Walrus Framework made the perfect tool, called skeleton, to help teams
manae their template.
{elseif $doc == 'ajax-navigation'}
Walrus Framework let you setup a complete ajax navigation script with 1 line
of javascript code and give you plenty of ajax navigation features.
{elseif $doc == 'lazyload'}
Walrus Framework respect and encourages SEO best practice, you can lazyload
every content easily with javascript integrated functions.
{elseif $doc == 'front-long-polling'}
Walrus Framework as a front end long polling helper to help you handle
polling request and display new entity automatically.
{elseif $doc == 'js-templating'}
To go allong with long polling dipslaying Walrus Framework provide a really
simple, yet, powerfull javascript templating language.

{* Other pages *}
{elseif $doc == 'required'}
Keep informed of the last Walrus Framework version, the advance of the next
release, and download all the older version
{else}
Walrus framework documentation. Walrus is a framework for building
web-application in a very simple way according to the Model-View-Controller
(MVC) pattern.
{/if}
