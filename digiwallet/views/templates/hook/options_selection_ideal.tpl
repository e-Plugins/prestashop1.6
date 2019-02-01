{*
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2018 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
*}

<!-- iDEAL -->
{if $listMode == 1}
<div class="row">
    <div class="col-xs-12 col-md-6">
        <p class="payment_module">
            <a href="index.php?fc=module&module=digiwallet&controller=payment&method={$method|escape:'htmlall':'UTF-8'}" class="tp_method" title="iDEAL">
            <img  src="{$this_path|escape:'htmlall':'UTF-8'}/views/img/{$method|escape:'htmlall':'UTF-8'}_50.png"/>
            </a>
        </p>
    </div>
</div>
{else}
<div class="row">
    <div class="col-xs-12 col-md-6">
        <p class="payment_module">
            <a href="#" id="ideal-toggle" class="tp_method" title="iDEAL">
            <img  src="{$this_path|escape:'htmlall':'UTF-8'}/views/img/{$method|escape:'htmlall':'UTF-8'}_50.png"/>
            </a>
        </p>
    </div>

    <div class="col-xs-12 col-md-6" id="ideal-bankselect">
        <p class="payment_module">
        {foreach from=$idealBankListArr key=k item=v}
            <a class="bank" href="index.php?fc=module&module=digiwallet&controller=payment&method={$method|escape:'htmlall':'UTF-8'}&option={$k|escape:'htmlall':'UTF-8'}">
                <img src="https://transaction.digiwallet.nl/gfx/banks/ide_v3_bankselect/{$k|escape:'htmlall':'UTF-8'}.png">
            </a>
        {/foreach}
        </p>
    </div>
</div>
{/if}