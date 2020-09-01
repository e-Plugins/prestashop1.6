{*
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2020 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
*}

{if $status == 'ok'}
    <p class="alert alert-success">{l s='Your order on %s is complete.' sprintf=$shop_name mod='digiwallet'}</p>
    <div class="box">
        {l s='Your order information:' mod='digiwallet'}
        <br />- {l s='Order number' mod='digiwallet'} <strong>{$id_order|escape:'htmlall':'UTF-8'}</strong>
        <br />- {l s='Amount' mod='digiwallet'} <span class="price"><strong>{$total|escape:'htmlall':'UTF-8'}</strong></span>
        <br /> <strong>{l s='Your order will be sent as soon as we receive payment.' mod='digiwallet'}</strong>
        <br /> {l s='Thank you for shopping. While logged in, you may continue shopping or view your current order status and order history.' mod='digiwallet'}
    </div>
{else if $status == 'processing'}
    <p class="alert alert-info">{l s='Your order on %s is processing.' sprintf=$shop_name mod='digiwallet'}</p>
    <div class="box">
        {l s='Your order information:' mod='digiwallet'}
        <br />- {l s='Order number' mod='digiwallet'} <strong>{$id_order|escape:'htmlall':'UTF-8'}</strong>
        <br />- {l s='Amount' mod='digiwallet'} <span class="price"><strong>{$total|escape:'htmlall':'UTF-8'}</strong></span>
        <br /> <strong>{l s='Payment is under processing. Your order will be sent as soon as we receive payment.' mod='digiwallet'}</strong>
        <br /> {l s='Thank you for shopping. While logged in, you may continue shopping or view your current order status and order history.' mod='digiwallet'}
    </div>
{else}
    <p class="alert alert-warning">{l s='Your order on %s is failed.' sprintf=$shop_name mod='digiwallet'}</p>
    <div class="box">
        {l s='Your order information:' mod='digiwallet'}
        <br />- {l s='Order number' mod='digiwallet'} <strong>{$id_order|escape:'htmlall':'UTF-8'}</strong>
        <br />- {l s='Amount' mod='digiwallet'} <span class="price"><strong>{$total|escape:'htmlall':'UTF-8'}</strong></span>
        <br /><strong>{l s='We noticed a problem with your order.' mod='digiwallet'}</strong>
        <br />{l s='If you want to reorder ' mod='digiwallet'}
        <a class="link-button" href="{$link->getPageLink('order', true, NULL, "submitReorder&id_order={$id_order|intval}")|escape:'html':'UTF-8'}" title="{l s='Reorder' mod='digiwallet'}">{l s='click here' mod='digiwallet'}</a>.
    </div>
{/if}
