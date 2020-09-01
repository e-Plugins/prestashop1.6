{*
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2020 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
*}

{if $module == "digiwallet"}
    {if $errorMessage}
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            {$errorMessage|escape:'html':'UTF-8'}
        </div>
    {/if}
{/if}
