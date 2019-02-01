<?php
/**
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2018 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
 */

class DigiwalletbwIntroModuleFrontController extends ModuleFrontController
{
    public $ssl = true;
    
    /**
     *
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        parent::initContent();
        
        $cookie =  $this->context->cookie;
        if (empty($cookie->bw_info_order_total) || empty($cookie->bw_info_email)) {
            Tools::redirect(_PS_BASE_URL_);
            exit();
        }
        
        $this->context->smarty->assign(array(
            'customer_email' => $cookie->bw_info_email,
            'order_total' => $cookie->bw_info_order_total,
            'bw_info_trxid' => $cookie->bw_info_trxid,
            'bw_info_accountNumber' => $cookie->bw_info_accountNumber,
            'bw_info_iban' => $cookie->bw_info_iban,
            'bw_info_bic' => $cookie->bw_info_bic,
            'bw_info_beneficiary' => $cookie->bw_info_beneficiary,
            'bw_info_bank' => $cookie->bw_info_bank,
        ));
        
        $this->setTemplate('bwIntro.tpl');
    }
}
