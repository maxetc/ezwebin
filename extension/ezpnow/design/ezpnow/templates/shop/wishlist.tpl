<div class="box">
<div class="tl"><div class="tr"><div class="br"><div class="bl"><div class="box-content float-break">

<div class="shop-wishlist">
<form method="post" action={"/shop/wishlist/"|ezurl}>

<div class="attribute-header">
    <h1 class="long">{"Wish list"|i18n("design/standard/shop")}</h1>
</div>

{section show=$wish_list.items}

<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<th>
	{"Product"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Count"|i18n("design/standard/shop")}
	</th>
	<th>&nbsp;
    
	</th>
</tr>
{section name=ProductItem loop=$wish_list.items sequence=array(bglight,bgdark)}
<tr class="{$ProductItem:sequence}">
	<td>
	<input type="hidden" name="ProductItemIDList[]" value="{$ProductItem:item.id}" />
	{$ProductItem:item.id} - 
	<a href={concat("/content/view/full/",$ProductItem:item.node_id,"/")|ezurl}>{$ProductItem:item.object_name}</a>
	</td>
	<td>

	<input type="text" name="ProductItemCountList[]" value="{$ProductItem:item.item_count}" size="5" />

	</td>
	<td>
	<input type="checkbox" name="RemoveProductItemDeleteList[]" value="{$ProductItem:item.id}" />
	</td>
</tr>

{section show=$ProductItem:item.item_object.option_list}
<tr>
    <td colspan='3'>
    <table class="shop-option_list">
    <tr>
        <td colspan='3'>
        {"Selected options"|i18n("design/standard/shop")}
        </td>
    </tr>
    {section var=option_item loop=$ProductItem:item.item_object.option_list}
        <tr>
            <td width="33%">{$ProductItem:option_item.name|wash}</td>
            <td width="33%">{$ProductItem:option_item.value}</td>
            <td width="33%">{section show=$ProductItem:option_item.price|ne( 0 )}{$ProductItem:option_item.price|l10n(currency)}{/section}</td>
        </tr>
    {/section}
    </table>
    </td>
</tr>
{/section}

{/section}
</table>

<div class="buttonblock">
<input class="button" type="submit" name="StoreChangesButton" value="{'Store'|i18n('design/standard/shop')}" />
<input class="button" type="submit" name="RemoveProductItemButton" value="{'Remove items'|i18n('design/standard/shop')}" />
</div>

{section-else}


<div class="feedback">
<h2>{"Empty wish list"|i18n("design/standard/shop")}</h2>
</div>
{/section}
</form>

</div>

</div></div></div></div></div>
</div>