{*
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2020 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
*}

<div class="bankwire-info">
    <h2>{l s='Thank you for ordering in our webshop!' mod='digiwallet'}</h2>
    <p>
        {l s='You will receive your order as soon as we receive payment from the bank.' mod='digiwallet'}
        <br>
        {l s='Would you be so friendly to transfer the total amount of €%s to the bankaccount [1]%s[/1] in name of %s*?' sprintf=[$order_total, $bw_info_iban, $bw_info_beneficiary] tags=['<b style="color:#c00000">'] mod='digiwallet'}
    </p>
    <p>
        {l s='State the payment feature [1]%s[/1], this way the payment can be automatically processed.' sprintf=[$bw_info_trxid] tags=['<b>'] mod='digiwallet'}
        <br>
        {l s='As soon as this happens you shall receive a confirmation mail on %s' sprintf=$customer_email mod='digiwallet'}
    </p>
    <p>
    {l s='If it is necessary for payments abroad, then the BIC code from the bank [1]%s[/1] and the name of the bank is %s.' sprintf=[$bw_info_bic, $bw_info_bank] tags=['<span style="color:#c00000">'] mod='digiwallet'}</p>
    <p>
        <i>* {l s='Payment for our webstore is processed by TargetMedia. TargetMedia is certified as a Collecting Payment Service Provider by Currence. This means we set the highest security standards when is comes to security of payment for you as a customer and us as a webshop.' mod='digiwallet'}</i>
    </p>
</div>