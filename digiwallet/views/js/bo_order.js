/**
* 2007-2020 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2020 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*
* Don't forget to prefix your containers with your own identifier
* to avoid any conflicts with others containers.
*/

// init in-context
$(document).ready(() => {
  // Make partial order refund in Order page in BO
  $(document).on('click', '#desc-order-partial_refund', () => {
    // Create checkbox and insert for Paypal refund 
    if ($('#doPartialRefundDigiwallet').length == 0) {
            let newCheckBox = `<p class="checkbox"><label for="doPartialRefundDigiwallet">
            <input type="checkbox" id="doPartialRefundDigiwallet" name="doPartialRefundDigiwallet">
        ${chb_digiwallet_refund}</label></p>`;
      $('button[name=partialRefund]').parent('.partial_refund_fields').prepend(newCheckBox);
    }
  });
})
