<?php
/**
 * This function updates your module from previous versions to the version 1.1,
 * usefull when you modify your database, or register a new hook ...
 * Don't forget to create one file per version.
 *
 * @author  DigiWallet.nl
 * @copyright Copyright (C) 2018 e-plugins.nl
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * @url      http://www.e-plugins.nl
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

function upgrade_module_1_1_0()
{
    // add an index on the transaction_id column to improve performance
    return Db::getInstance()->execute("ALTER TABLE `"._DB_PREFIX_."digiwallet` 
ADD INDEX `IX_tp_transaction_id` (`transaction_id`)");
}
