<?php
/**
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2018 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
 *
 * 11-09-2014 -> Removed checkReportValidity
 * 14-01-2015 -> Secure key added
 * 11-01-2017 -> Apply new logic
 */

class DigiwalletnotifyUrlModuleFrontController extends ModuleFrontController
{
    public $ssl = true;
    
    /**
     *
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        $digiwallet = $this->module;
        $trxid = Tools::getValue('trxid');
        if (empty($trxid)) { //paypal use paypalid instead of trxid
            $trxid = Tools::getValue('acquirerID');
        }
        if (empty($trxid)) { //afterpay use invoiceID instead of trxid
            $trxid = Tools::getValue('invoiceID');
        }
        
        $transactionInfoArr = $digiwallet->selectTransaction($trxid);
        if ($transactionInfoArr) {
            $digiwallet->rebuildCart($transactionInfoArr['order_id']);
            $return = $digiwallet->updateOrderAfterCheck($transactionInfoArr, true);
            echo $return . "<br />";
            die('Done version 1.6.xx');
        }
        die("Transaction is not found");
    }
}
