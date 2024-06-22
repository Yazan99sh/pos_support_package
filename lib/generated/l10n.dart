// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Error happened`
  String get errorHappened {
    return Intl.message(
      'Error happened',
      name: 'errorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Every thing is ok`
  String get statusCodeOk {
    return Intl.message(
      'Every thing is ok',
      name: 'statusCodeOk',
      desc: '',
      args: [],
    );
  }

  /// `You logging in successfully`
  String get loginSuccess {
    return Intl.message(
      'You logging in successfully',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get pleaseCheckYourInternetConnection {
    return Intl.message(
      'Please check your internet connection',
      name: 'pleaseCheckYourInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `This error happened`
  String get thisErrorHappened {
    return Intl.message(
      'This error happened',
      name: 'thisErrorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcome {
    return Intl.message(
      'Welcome to',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Your number 1 business partner`
  String get youBusinessPartner {
    return Intl.message(
      'Your number 1 business partner',
      name: 'youBusinessPartner',
      desc: '',
      args: [],
    );
  }

  /// `Initial Setup`
  String get initialSetup {
    return Intl.message(
      'Initial Setup',
      name: 'initialSetup',
      desc: '',
      args: [],
    );
  }

  /// `This field cannot be empty`
  String get pleaseCompleteField {
    return Intl.message(
      'This field cannot be empty',
      name: 'pleaseCompleteField',
      desc: '',
      args: [],
    );
  }

  /// `Enter terminal ID`
  String get enterTerminalId {
    return Intl.message(
      'Enter terminal ID',
      name: 'enterTerminalId',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Terminal ID is missing`
  String get terminalIdIsMissing {
    return Intl.message(
      'Terminal ID is missing',
      name: 'terminalIdIsMissing',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get poorInternetConnection {
    return Intl.message(
      'Offline',
      name: 'poorInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get goodInternetConnection {
    return Intl.message(
      'Online',
      name: 'goodInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `We don't have permission to access your device information`
  String get weDoNotHaveAccessForThis {
    return Intl.message(
      'We don\'t have permission to access your device information',
      name: 'weDoNotHaveAccessForThis',
      desc: '',
      args: [],
    );
  }

  /// `Enter POS number`
  String get enterPosNumber {
    return Intl.message(
      'Enter POS number',
      name: 'enterPosNumber',
      desc: '',
      args: [],
    );
  }

  /// `POS number is missing`
  String get posNumberIsMissing {
    return Intl.message(
      'POS number is missing',
      name: 'posNumberIsMissing',
      desc: '',
      args: [],
    );
  }

  /// `There is some issues please try to contact support , or try again`
  String get thereIsSomeIssue {
    return Intl.message(
      'There is some issues please try to contact support , or try again',
      name: 'thereIsSomeIssue',
      desc: '',
      args: [],
    );
  }

  /// `Success :)`
  String get success {
    return Intl.message(
      'Success :)',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Data fetched from server successfully`
  String get dataFetchedSuccessfully {
    return Intl.message(
      'Data fetched from server successfully',
      name: 'dataFetchedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `SubCategories`
  String get subCategories {
    return Intl.message(
      'SubCategories',
      name: 'subCategories',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Merchant param`
  String get param {
    return Intl.message(
      'Merchant param',
      name: 'param',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Loading Data`
  String get loadingData {
    return Intl.message(
      'Loading Data',
      name: 'loadingData',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your SMART E-PAY account`
  String get loginGreeting {
    return Intl.message(
      'Log in to your SMART E-PAY account',
      name: 'loginGreeting',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Branch`
  String get branch {
    return Intl.message(
      'Branch',
      name: 'branch',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password too short`
  String get passwordTooShort {
    return Intl.message(
      'Password too short',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Layout downloaded successfully`
  String get layoutDownloaded {
    return Intl.message(
      'Layout downloaded successfully',
      name: 'layoutDownloaded',
      desc: '',
      args: [],
    );
  }

  /// `Layout saved successfully`
  String get layoutSaved {
    return Intl.message(
      'Layout saved successfully',
      name: 'layoutSaved',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Net`
  String get net {
    return Intl.message(
      'Net',
      name: 'net',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `PAY`
  String get pay {
    return Intl.message(
      'PAY',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Payment Info`
  String get paymentInfo {
    return Intl.message(
      'Payment Info',
      name: 'paymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Nfc`
  String get nfc {
    return Intl.message(
      'Nfc',
      name: 'nfc',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get tax {
    return Intl.message(
      'Tax',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Please tap nf card`
  String get pleaseTapNfcCard {
    return Intl.message(
      'Please tap nf card',
      name: 'pleaseTapNfcCard',
      desc: '',
      args: [],
    );
  }

  /// `Nfc Card Info`
  String get nfcCardInfo {
    return Intl.message(
      'Nfc Card Info',
      name: 'nfcCardInfo',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card status`
  String get cardStatus {
    return Intl.message(
      'Card status',
      name: 'cardStatus',
      desc: '',
      args: [],
    );
  }

  /// `Card type`
  String get cardType {
    return Intl.message(
      'Card type',
      name: 'cardType',
      desc: '',
      args: [],
    );
  }

  /// `Account point`
  String get accountPoint {
    return Intl.message(
      'Account point',
      name: 'accountPoint',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get expiryDate {
    return Intl.message(
      'Expiry date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Membership number`
  String get membershipNumber {
    return Intl.message(
      'Membership number',
      name: 'membershipNumber',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get position {
    return Intl.message(
      'Position',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Are sure about going to completing recall screen`
  String get areSureAboutCompletingRecall {
    return Intl.message(
      'Are sure about going to completing recall screen',
      name: 'areSureAboutCompletingRecall',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get inactive {
    return Intl.message(
      'Inactive',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `Cannot complete payment there is no enough balance`
  String get noEnoughMoney {
    return Intl.message(
      'Cannot complete payment there is no enough balance',
      name: 'noEnoughMoney',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `OFFLINE`
  String get offline {
    return Intl.message(
      'OFFLINE',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `ONLINE`
  String get online {
    return Intl.message(
      'ONLINE',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password`
  String get incorrectPassword {
    return Intl.message(
      'Incorrect password',
      name: 'incorrectPassword',
      desc: '',
      args: [],
    );
  }

  /// `Bank`
  String get bank {
    return Intl.message(
      'Bank',
      name: 'bank',
      desc: '',
      args: [],
    );
  }

  /// `Enter bank or visa number`
  String get enterBankOrVisaNumber {
    return Intl.message(
      'Enter bank or visa number',
      name: 'enterBankOrVisaNumber',
      desc: '',
      args: [],
    );
  }

  /// `Bank/Visa number`
  String get bankOrVisaNumber {
    return Intl.message(
      'Bank/Visa number',
      name: 'bankOrVisaNumber',
      desc: '',
      args: [],
    );
  }

  /// `Bank/Visa number is missing`
  String get bankOrVisaMissing {
    return Intl.message(
      'Bank/Visa number is missing',
      name: 'bankOrVisaMissing',
      desc: '',
      args: [],
    );
  }

  /// `Proceed`
  String get proceed {
    return Intl.message(
      'Proceed',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `payment method`
  String get paymentMethod {
    return Intl.message(
      'payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Thank you !`
  String get thankYou {
    return Intl.message(
      'Thank you !',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }

  /// `The transactions was successful`
  String get transactionsWasSuccessful {
    return Intl.message(
      'The transactions was successful',
      name: 'transactionsWasSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Reprint`
  String get rePrint {
    return Intl.message(
      'Reprint',
      name: 'rePrint',
      desc: '',
      args: [],
    );
  }

  /// `Cashier Copy`
  String get cashierCopy {
    return Intl.message(
      'Cashier Copy',
      name: 'cashierCopy',
      desc: '',
      args: [],
    );
  }

  /// `AED`
  String get aed {
    return Intl.message(
      'AED',
      name: 'aed',
      desc: '',
      args: [],
    );
  }

  /// `Percentage`
  String get percentage {
    return Intl.message(
      'Percentage',
      name: 'percentage',
      desc: '',
      args: [],
    );
  }

  /// `discount value`
  String get enterDiscountValue {
    return Intl.message(
      'discount value',
      name: 'enterDiscountValue',
      desc: '',
      args: [],
    );
  }

  /// `Discount mode`
  String get discountMode {
    return Intl.message(
      'Discount mode',
      name: 'discountMode',
      desc: '',
      args: [],
    );
  }

  /// `Reduce discount value please .`
  String get reduceDiscountValue {
    return Intl.message(
      'Reduce discount value please .',
      name: 'reduceDiscountValue',
      desc: '',
      args: [],
    );
  }

  /// `Choose discount mode and value .`
  String get chooseDiscountModeAndValue {
    return Intl.message(
      'Choose discount mode and value .',
      name: 'chooseDiscountModeAndValue',
      desc: '',
      args: [],
    );
  }

  /// `Empty cart ! `
  String get emptyCart {
    return Intl.message(
      'Empty cart ! ',
      name: 'emptyCart',
      desc: '',
      args: [],
    );
  }

  /// `Download Images`
  String get downloadImages {
    return Intl.message(
      'Download Images',
      name: 'downloadImages',
      desc: '',
      args: [],
    );
  }

  /// `Images Saved`
  String get imagesSaved {
    return Intl.message(
      'Images Saved',
      name: 'imagesSaved',
      desc: '',
      args: [],
    );
  }

  /// `Downloading`
  String get downloading {
    return Intl.message(
      'Downloading',
      name: 'downloading',
      desc: '',
      args: [],
    );
  }

  /// `Print`
  String get print {
    return Intl.message(
      'Print',
      name: 'print',
      desc: '',
      args: [],
    );
  }

  /// `You cannot add new items ,Multi sales not allowed please contact our support or confirm clear cart`
  String get multiSalesNotAllowedToAddNewProductClearCart {
    return Intl.message(
      'You cannot add new items ,Multi sales not allowed please contact our support or confirm clear cart',
      name: 'multiSalesNotAllowedToAddNewProductClearCart',
      desc: '',
      args: [],
    );
  }

  /// `Select the receipt you want to reprint`
  String get selectReceiptToReprint {
    return Intl.message(
      'Select the receipt you want to reprint',
      name: 'selectReceiptToReprint',
      desc: '',
      args: [],
    );
  }

  /// `Enter receipt number`
  String get enterReceiptNumber {
    return Intl.message(
      'Enter receipt number',
      name: 'enterReceiptNumber',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Reprint the last transaction`
  String get reprintTheLastReceipt {
    return Intl.message(
      'Reprint the last transaction',
      name: 'reprintTheLastReceipt',
      desc: '',
      args: [],
    );
  }

  /// `No Receipt`
  String get noReceipt {
    return Intl.message(
      'No Receipt',
      name: 'noReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Please enter transactions number to reprint `
  String get pleaseEnterTrxToReprint {
    return Intl.message(
      'Please enter transactions number to reprint ',
      name: 'pleaseEnterTrxToReprint',
      desc: '',
      args: [],
    );
  }

  /// `Printing .... :)`
  String get printing {
    return Intl.message(
      'Printing .... :)',
      name: 'printing',
      desc: '',
      args: [],
    );
  }

  /// `Claim`
  String get claim {
    return Intl.message(
      'Claim',
      name: 'claim',
      desc: '',
      args: [],
    );
  }

  /// `Select receipt to claim`
  String get selectReceiptToClaim {
    return Intl.message(
      'Select receipt to claim',
      name: 'selectReceiptToClaim',
      desc: '',
      args: [],
    );
  }

  /// `Partial claim`
  String get partialClaim {
    return Intl.message(
      'Partial claim',
      name: 'partialClaim',
      desc: '',
      args: [],
    );
  }

  /// `Not implemented yet`
  String get notImplementedYet {
    return Intl.message(
      'Not implemented yet',
      name: 'notImplementedYet',
      desc: '',
      args: [],
    );
  }

  /// `Please enter transactions to claim`
  String get pleaseEnterTrxToClaim {
    return Intl.message(
      'Please enter transactions to claim',
      name: 'pleaseEnterTrxToClaim',
      desc: '',
      args: [],
    );
  }

  /// `Claim Number`
  String get claimNumber {
    return Intl.message(
      'Claim Number',
      name: 'claimNumber',
      desc: '',
      args: [],
    );
  }

  /// `And the transactions ID is`
  String get andTransactionID {
    return Intl.message(
      'And the transactions ID is',
      name: 'andTransactionID',
      desc: '',
      args: [],
    );
  }

  /// `Your claim has been done, Claim No is`
  String get claimMessage {
    return Intl.message(
      'Your claim has been done, Claim No is',
      name: 'claimMessage',
      desc: '',
      args: [],
    );
  }

  /// `Merchant ID`
  String get merchantID {
    return Intl.message(
      'Merchant ID',
      name: 'merchantID',
      desc: '',
      args: [],
    );
  }

  /// `Terminal ID`
  String get terminalID {
    return Intl.message(
      'Terminal ID',
      name: 'terminalID',
      desc: '',
      args: [],
    );
  }

  /// `Claim Success`
  String get claimSuccess {
    return Intl.message(
      'Claim Success',
      name: 'claimSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Select products to claim .`
  String get selectProductsToClaim {
    return Intl.message(
      'Select products to claim .',
      name: 'selectProductsToClaim',
      desc: '',
      args: [],
    );
  }

  /// `Transactions Sync`
  String get transactionsSync {
    return Intl.message(
      'Transactions Sync',
      name: 'transactionsSync',
      desc: '',
      args: [],
    );
  }

  /// `Sync`
  String get sync {
    return Intl.message(
      'Sync',
      name: 'sync',
      desc: '',
      args: [],
    );
  }

  /// `Receipt No `
  String get receiptNo {
    return Intl.message(
      'Receipt No ',
      name: 'receiptNo',
      desc: '',
      args: [],
    );
  }

  /// `Syncing`
  String get syncing {
    return Intl.message(
      'Syncing',
      name: 'syncing',
      desc: '',
      args: [],
    );
  }

  /// `Transaction`
  String get transaction {
    return Intl.message(
      'Transaction',
      name: 'transaction',
      desc: '',
      args: [],
    );
  }

  /// `out`
  String get out {
    return Intl.message(
      'out',
      name: 'out',
      desc: '',
      args: [],
    );
  }

  /// `Transactions synced`
  String get transactionsSynced {
    return Intl.message(
      'Transactions synced',
      name: 'transactionsSynced',
      desc: '',
      args: [],
    );
  }

  /// `Reserved`
  String get reserved {
    return Intl.message(
      'Reserved',
      name: 'reserved',
      desc: '',
      args: [],
    );
  }

  /// `Not Synced`
  String get notSynced {
    return Intl.message(
      'Not Synced',
      name: 'notSynced',
      desc: '',
      args: [],
    );
  }

  /// `Claimed`
  String get claimed {
    return Intl.message(
      'Claimed',
      name: 'claimed',
      desc: '',
      args: [],
    );
  }

  /// `Choose merchant`
  String get chooseMerchant {
    return Intl.message(
      'Choose merchant',
      name: 'chooseMerchant',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure about changing this merchant ? `
  String get areYouSureAboutChangingThisMerchant {
    return Intl.message(
      'Are you sure about changing this merchant ? ',
      name: 'areYouSureAboutChangingThisMerchant',
      desc: '',
      args: [],
    );
  }

  /// `There is {v} transactions not being synced , Please check your internet connections`
  String thereIsTransactionsNotSynced(Object v) {
    return Intl.message(
      'There is $v transactions not being synced , Please check your internet connections',
      name: 'thereIsTransactionsNotSynced',
      desc: '',
      args: [v],
    );
  }

  /// `Super password`
  String get enterSuperPassword {
    return Intl.message(
      'Super password',
      name: 'enterSuperPassword',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure about deleting all data in this device`
  String get areSureAboutDeletingAllDataInThisDevice {
    return Intl.message(
      'Are you sure about deleting all data in this device',
      name: 'areSureAboutDeletingAllDataInThisDevice',
      desc: '',
      args: [],
    );
  }

  /// `Combo report`
  String get comboReport {
    return Intl.message(
      'Combo report',
      name: 'comboReport',
      desc: '',
      args: [],
    );
  }

  /// `Total earning`
  String get totalEarning {
    return Intl.message(
      'Total earning',
      name: 'totalEarning',
      desc: '',
      args: [],
    );
  }

  /// `Yearly earning`
  String get yearlyEarning {
    return Intl.message(
      'Yearly earning',
      name: 'yearlyEarning',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Gross Sale`
  String get grossSale {
    return Intl.message(
      'Gross Sale',
      name: 'grossSale',
      desc: '',
      args: [],
    );
  }

  /// `Tax Collectd`
  String get taxCollected {
    return Intl.message(
      'Tax Collectd',
      name: 'taxCollected',
      desc: '',
      args: [],
    );
  }

  /// `refunds`
  String get refunds {
    return Intl.message(
      'refunds',
      name: 'refunds',
      desc: '',
      args: [],
    );
  }

  /// `Yearly Based`
  String get yearlyBased {
    return Intl.message(
      'Yearly Based',
      name: 'yearlyBased',
      desc: '',
      args: [],
    );
  }

  /// `Super password`
  String get enterSupervisorPassword {
    return Intl.message(
      'Super password',
      name: 'enterSupervisorPassword',
      desc: '',
      args: [],
    );
  }

  /// `This feature need supervisor permission`
  String get thisFeatureNeedSupervisorPermission {
    return Intl.message(
      'This feature need supervisor permission',
      name: 'thisFeatureNeedSupervisorPermission',
      desc: '',
      args: [],
    );
  }

  /// `!! This Item It's Claimed`
  String get thisItemClaimed {
    return Intl.message(
      '!! This Item It\'s Claimed',
      name: 'thisItemClaimed',
      desc: '',
      args: [],
    );
  }

  /// `الإمارة`
  String get emirate {
    return Intl.message(
      'الإمارة',
      name: 'emirate',
      desc: '',
      args: [],
    );
  }

  /// `الإمارات العربية المتحدة`
  String get unitedArabEmirates {
    return Intl.message(
      'الإمارات العربية المتحدة',
      name: 'unitedArabEmirates',
      desc: '',
      args: [],
    );
  }

  /// `Enter price`
  String get enterPrice {
    return Intl.message(
      'Enter price',
      name: 'enterPrice',
      desc: '',
      args: [],
    );
  }

  /// `Invalid value`
  String get invalidValue {
    return Intl.message(
      'Invalid value',
      name: 'invalidValue',
      desc: '',
      args: [],
    );
  }

  /// `Open product`
  String get openProduct {
    return Intl.message(
      'Open product',
      name: 'openProduct',
      desc: '',
      args: [],
    );
  }

  /// `This product an open price product please enter wanted price for this item`
  String get pleaseEnterOpenPrice {
    return Intl.message(
      'This product an open price product please enter wanted price for this item',
      name: 'pleaseEnterOpenPrice',
      desc: '',
      args: [],
    );
  }

  /// `Product already in cart !`
  String get productAlreadyInTheCart {
    return Intl.message(
      'Product already in cart !',
      name: 'productAlreadyInTheCart',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Please choose payment method`
  String get pleaseChoosePaymentMethod {
    return Intl.message(
      'Please choose payment method',
      name: 'pleaseChoosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Show All`
  String get showAll {
    return Intl.message(
      'Show All',
      name: 'showAll',
      desc: '',
      args: [],
    );
  }

  /// `This Invoice is claimed`
  String get thisInvoiceIsClaimed {
    return Intl.message(
      'This Invoice is claimed',
      name: 'thisInvoiceIsClaimed',
      desc: '',
      args: [],
    );
  }

  /// `Transaction not found`
  String get transactionNotFound {
    return Intl.message(
      'Transaction not found',
      name: 'transactionNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Transactions under claimed`
  String get transactionUnderClaim {
    return Intl.message(
      'Transactions under claimed',
      name: 'transactionUnderClaim',
      desc: '',
      args: [],
    );
  }

  /// `Claim synced`
  String get claimSynced {
    return Intl.message(
      'Claim synced',
      name: 'claimSynced',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get common {
    return Intl.message(
      'Common',
      name: 'common',
      desc: '',
      args: [],
    );
  }

  /// `Check for updates`
  String get checkForUpdates {
    return Intl.message(
      'Check for updates',
      name: 'checkForUpdates',
      desc: '',
      args: [],
    );
  }

  /// `Complete recall`
  String get completeRecall {
    return Intl.message(
      'Complete recall',
      name: 'completeRecall',
      desc: '',
      args: [],
    );
  }

  /// `Partial recall`
  String get partialRecall {
    return Intl.message(
      'Partial recall',
      name: 'partialRecall',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Change terminal`
  String get changeTerminal {
    return Intl.message(
      'Change terminal',
      name: 'changeTerminal',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure about making partial recall`
  String get areSureAboutPartialRecall {
    return Intl.message(
      'Are you sure about making partial recall',
      name: 'areSureAboutPartialRecall',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get changeLanguage {
    return Intl.message(
      'Change language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Secondary`
  String get secondary {
    return Intl.message(
      'Secondary',
      name: 'secondary',
      desc: '',
      args: [],
    );
  }

  /// `Apk Updated`
  String get apkUpdated {
    return Intl.message(
      'Apk Updated',
      name: 'apkUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check {
    return Intl.message(
      'Check',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Multi payment`
  String get multiPayment {
    return Intl.message(
      'Multi payment',
      name: 'multiPayment',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Please reduce selected amount `
  String get pleaseReduceSelectedAmount {
    return Intl.message(
      'Please reduce selected amount ',
      name: 'pleaseReduceSelectedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Selected amount not enough`
  String get selectedAmountNotEqual {
    return Intl.message(
      'Selected amount not enough',
      name: 'selectedAmountNotEqual',
      desc: '',
      args: [],
    );
  }

  /// `Check number`
  String get checkNo {
    return Intl.message(
      'Check number',
      name: 'checkNo',
      desc: '',
      args: [],
    );
  }

  /// `trx ref`
  String get transactionRef {
    return Intl.message(
      'trx ref',
      name: 'transactionRef',
      desc: '',
      args: [],
    );
  }

  /// `This trx cannot be claimed offline cause it's contains multi payments trx`
  String get thisTrxCannotBeClaimedOffline {
    return Intl.message(
      'This trx cannot be claimed offline cause it\'s contains multi payments trx',
      name: 'thisTrxCannotBeClaimedOffline',
      desc: '',
      args: [],
    );
  }

  /// `Synced`
  String get synced {
    return Intl.message(
      'Synced',
      name: 'synced',
      desc: '',
      args: [],
    );
  }

  /// `Do you want SMS alert ?`
  String get doYouWantSmsAlert {
    return Intl.message(
      'Do you want SMS alert ?',
      name: 'doYouWantSmsAlert',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number i.e 123456789`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter phone number i.e 123456789',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `enter car number`
  String get carNumberHint {
    return Intl.message(
      'enter car number',
      name: 'carNumberHint',
      desc: '',
      args: [],
    );
  }

  /// `Please fill empty fields `
  String get pleaseFillEmptyFields {
    return Intl.message(
      'Please fill empty fields ',
      name: 'pleaseFillEmptyFields',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get coupons {
    return Intl.message(
      'Coupon',
      name: 'coupons',
      desc: '',
      args: [],
    );
  }

  /// `Apply coupon`
  String get applyCoupon {
    return Intl.message(
      'Apply coupon',
      name: 'applyCoupon',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get coupon {
    return Intl.message(
      'Coupon',
      name: 'coupon',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Coupon applied`
  String get couponApplied {
    return Intl.message(
      'Coupon applied',
      name: 'couponApplied',
      desc: '',
      args: [],
    );
  }

  /// `Add customer`
  String get addCustomer {
    return Intl.message(
      'Add customer',
      name: 'addCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Credit`
  String get credit {
    return Intl.message(
      'Credit',
      name: 'credit',
      desc: '',
      args: [],
    );
  }

  /// `Days limit`
  String get daysLimit {
    return Intl.message(
      'Days limit',
      name: 'daysLimit',
      desc: '',
      args: [],
    );
  }

  /// `Credit limit`
  String get creditLimit {
    return Intl.message(
      'Credit limit',
      name: 'creditLimit',
      desc: '',
      args: [],
    );
  }

  /// `Trn`
  String get trn {
    return Intl.message(
      'Trn',
      name: 'trn',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Non credit`
  String get nonCredit {
    return Intl.message(
      'Non credit',
      name: 'nonCredit',
      desc: '',
      args: [],
    );
  }

  /// `Please choose customer type`
  String get pleaseChooseCustomerType {
    return Intl.message(
      'Please choose customer type',
      name: 'pleaseChooseCustomerType',
      desc: '',
      args: [],
    );
  }

  /// `Choose customer`
  String get chooseCustomer {
    return Intl.message(
      'Choose customer',
      name: 'chooseCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Credit customer`
  String get creditCustomer {
    return Intl.message(
      'Credit customer',
      name: 'creditCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back , `
  String get welcomeBack {
    return Intl.message(
      'Welcome back , ',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Dine In`
  String get dinIn {
    return Intl.message(
      'Dine In',
      name: 'dinIn',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Cart Preview`
  String get cartPreview {
    return Intl.message(
      'Cart Preview',
      name: 'cartPreview',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Default Cashier`
  String get defaultCashiers {
    return Intl.message(
      'Default Cashier',
      name: 'defaultCashiers',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching extra data`
  String get startFetchingExtraData {
    return Intl.message(
      'Start fetching extra data',
      name: 'startFetchingExtraData',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching User data`
  String get startFetchingUserData {
    return Intl.message(
      'Start fetching User data',
      name: 'startFetchingUserData',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching Customer data`
  String get startFetchingCustomerData {
    return Intl.message(
      'Start fetching Customer data',
      name: 'startFetchingCustomerData',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching cashiers data`
  String get startFetchingCashiersData {
    return Intl.message(
      'Start fetching cashiers data',
      name: 'startFetchingCashiersData',
      desc: '',
      args: [],
    );
  }

  /// `start fetching layout`
  String get startFetchingLayout {
    return Intl.message(
      'start fetching layout',
      name: 'startFetchingLayout',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully`
  String get orderCreatedSuccessfully {
    return Intl.message(
      'Order created successfully',
      name: 'orderCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `In Kitchen`
  String get inKitchen {
    return Intl.message(
      'In Kitchen',
      name: 'inKitchen',
      desc: '',
      args: [],
    );
  }

  /// `Ready`
  String get ready {
    return Intl.message(
      'Ready',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Catalogak Orders`
  String get catalogakOrder {
    return Intl.message(
      'Catalogak Orders',
      name: 'catalogakOrder',
      desc: '',
      args: [],
    );
  }

  /// `Cashier`
  String get cashier {
    return Intl.message(
      'Cashier',
      name: 'cashier',
      desc: '',
      args: [],
    );
  }

  /// `Worker`
  String get worker {
    return Intl.message(
      'Worker',
      name: 'worker',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Order No.`
  String get orderNo {
    return Intl.message(
      'Order No.',
      name: 'orderNo',
      desc: '',
      args: [],
    );
  }

  /// `Order status`
  String get orderStatus {
    return Intl.message(
      'Order status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Total quantity`
  String get totalQuantity {
    return Intl.message(
      'Total quantity',
      name: 'totalQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get totalPrice {
    return Intl.message(
      'Total price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Edit Queue`
  String get editQueue {
    return Intl.message(
      'Edit Queue',
      name: 'editQueue',
      desc: '',
      args: [],
    );
  }

  /// `Add Item`
  String get addItem {
    return Intl.message(
      'Add Item',
      name: 'addItem',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get selectAll {
    return Intl.message(
      'Select All',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get orderID {
    return Intl.message(
      'Order ID',
      name: 'orderID',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary `
  String get orderSummery {
    return Intl.message(
      'Order Summary ',
      name: 'orderSummery',
      desc: '',
      args: [],
    );
  }

  /// `Delete selected items`
  String get deleteSelectedItems {
    return Intl.message(
      'Delete selected items',
      name: 'deleteSelectedItems',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete all selected items `
  String get areYouSureYouWantToDeleteAllSelectedItems {
    return Intl.message(
      'Are you sure you want to delete all selected items ',
      name: 'areYouSureYouWantToDeleteAllSelectedItems',
      desc: '',
      args: [],
    );
  }

  /// `Items from queue ?`
  String get itemsFromQueue {
    return Intl.message(
      'Items from queue ?',
      name: 'itemsFromQueue',
      desc: '',
      args: [],
    );
  }

  /// `Add Item to queue`
  String get addItemToQueue {
    return Intl.message(
      'Add Item to queue',
      name: 'addItemToQueue',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable for local report`
  String get unavailableForLocalReport {
    return Intl.message(
      'Unavailable for local report',
      name: 'unavailableForLocalReport',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure that you want to save new queue changes ?`
  String get areYouSureYouWantToSaveThisQueueChanges {
    return Intl.message(
      'Are you sure that you want to save new queue changes ?',
      name: 'areYouSureYouWantToSaveThisQueueChanges',
      desc: '',
      args: [],
    );
  }

  /// `Local`
  String get local {
    return Intl.message(
      'Local',
      name: 'local',
      desc: '',
      args: [],
    );
  }

  /// `Daily Report`
  String get dailyReport {
    return Intl.message(
      'Daily Report',
      name: 'dailyReport',
      desc: '',
      args: [],
    );
  }

  /// `Report Date`
  String get reportDate {
    return Intl.message(
      'Report Date',
      name: 'reportDate',
      desc: '',
      args: [],
    );
  }

  /// `Report Summary`
  String get reportSummary {
    return Intl.message(
      'Report Summary',
      name: 'reportSummary',
      desc: '',
      args: [],
    );
  }

  /// `Claim Quantity`
  String get claimQuantity {
    return Intl.message(
      'Claim Quantity',
      name: 'claimQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Claim Amount`
  String get claimAmount {
    return Intl.message(
      'Claim Amount',
      name: 'claimAmount',
      desc: '',
      args: [],
    );
  }

  /// `The End`
  String get theEnd {
    return Intl.message(
      'The End',
      name: 'theEnd',
      desc: '',
      args: [],
    );
  }

  /// `Total Cash`
  String get totalCash {
    return Intl.message(
      'Total Cash',
      name: 'totalCash',
      desc: '',
      args: [],
    );
  }

  /// `Total Card`
  String get totalCard {
    return Intl.message(
      'Total Card',
      name: 'totalCard',
      desc: '',
      args: [],
    );
  }

  /// `Discounts`
  String get discounts {
    return Intl.message(
      'Discounts',
      name: 'discounts',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Daily Sales`
  String get getSalesReport {
    return Intl.message(
      'Daily Sales',
      name: 'getSalesReport',
      desc: '',
      args: [],
    );
  }

  /// `Print full report`
  String get printFullReport {
    return Intl.message(
      'Print full report',
      name: 'printFullReport',
      desc: '',
      args: [],
    );
  }

  /// `Print summary only`
  String get printSummaryReport {
    return Intl.message(
      'Print summary only',
      name: 'printSummaryReport',
      desc: '',
      args: [],
    );
  }

  /// `Sales Items`
  String get SalesItems {
    return Intl.message(
      'Sales Items',
      name: 'SalesItems',
      desc: '',
      args: [],
    );
  }

  /// `Operator`
  String get operator {
    return Intl.message(
      'Operator',
      name: 'operator',
      desc: '',
      args: [],
    );
  }

  /// `Cashier Management`
  String get cashierManagement {
    return Intl.message(
      'Cashier Management',
      name: 'cashierManagement',
      desc: '',
      args: [],
    );
  }

  /// `Add Cashier`
  String get addCashier {
    return Intl.message(
      'Add Cashier',
      name: 'addCashier',
      desc: '',
      args: [],
    );
  }

  /// `Add Worker`
  String get addWorker {
    return Intl.message(
      'Add Worker',
      name: 'addWorker',
      desc: '',
      args: [],
    );
  }

  /// `Add workers to your Catalogak POS app to store workers information and provide personalized services.`
  String get addWorkerDescription {
    return Intl.message(
      'Add workers to your Catalogak POS app to store workers information and provide personalized services.',
      name: 'addWorkerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add cashiers to your Catalogak POS app to store workers information and provide personalized services.`
  String get addCashierDescription {
    return Intl.message(
      'Add cashiers to your Catalogak POS app to store workers information and provide personalized services.',
      name: 'addCashierDescription',
      desc: '',
      args: [],
    );
  }

  /// `Waiter`
  String get waiter {
    return Intl.message(
      'Waiter',
      name: 'waiter',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get admin {
    return Intl.message(
      'Admin',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `Worker Management`
  String get workerManagement {
    return Intl.message(
      'Worker Management',
      name: 'workerManagement',
      desc: '',
      args: [],
    );
  }

  /// `User management`
  String get userManagement {
    return Intl.message(
      'User management',
      name: 'userManagement',
      desc: '',
      args: [],
    );
  }

  /// `Cashier Name`
  String get cashierName {
    return Intl.message(
      'Cashier Name',
      name: 'cashierName',
      desc: '',
      args: [],
    );
  }

  /// `Enter cashier name`
  String get enterCashierName {
    return Intl.message(
      'Enter cashier name',
      name: 'enterCashierName',
      desc: '',
      args: [],
    );
  }

  /// `Enter cashier password`
  String get enterCashierPassword {
    return Intl.message(
      'Enter cashier password',
      name: 'enterCashierPassword',
      desc: '',
      args: [],
    );
  }

  /// `Permissions`
  String get permissions {
    return Intl.message(
      'Permissions',
      name: 'permissions',
      desc: '',
      args: [],
    );
  }

  /// `Choose user permission`
  String get chooseUserPermission {
    return Intl.message(
      'Choose user permission',
      name: 'chooseUserPermission',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Test Center`
  String get testCenter {
    return Intl.message(
      'Test Center',
      name: 'testCenter',
      desc: '',
      args: [],
    );
  }

  /// `Unit Testing`
  String get unitTesting {
    return Intl.message(
      'Unit Testing',
      name: 'unitTesting',
      desc: '',
      args: [],
    );
  }

  /// `Print Testing`
  String get printTesting {
    return Intl.message(
      'Print Testing',
      name: 'printTesting',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Queue status changed successfully`
  String get queueStatusChangedSuccessfully {
    return Intl.message(
      'Queue status changed successfully',
      name: 'queueStatusChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Queue deleted successfully`
  String get queueDeletedSuccessfully {
    return Intl.message(
      'Queue deleted successfully',
      name: 'queueDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Delete Queue`
  String get deleteQueue {
    return Intl.message(
      'Delete Queue',
      name: 'deleteQueue',
      desc: '',
      args: [],
    );
  }

  /// `with Number {queueID}`
  String withQueueNumber(String queueID) {
    return Intl.message(
      'with Number $queueID',
      name: 'withQueueNumber',
      desc: '',
      args: [queueID],
    );
  }

  /// `Are sure about deleting this order`
  String get areSureAboutDeletingThisQueue {
    return Intl.message(
      'Are sure about deleting this order',
      name: 'areSureAboutDeletingThisQueue',
      desc: '',
      args: [],
    );
  }

  /// `Not Found`
  String get notFound {
    return Intl.message(
      'Not Found',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Backup database`
  String get backupDatabase {
    return Intl.message(
      'Backup database',
      name: 'backupDatabase',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Worker name`
  String get workerName {
    return Intl.message(
      'Worker name',
      name: 'workerName',
      desc: '',
      args: [],
    );
  }

  /// `Enter worker name`
  String get enterWorkerName {
    return Intl.message(
      'Enter worker name',
      name: 'enterWorkerName',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Edit cashier`
  String get editCashier {
    return Intl.message(
      'Edit cashier',
      name: 'editCashier',
      desc: '',
      args: [],
    );
  }

  /// `Edit worker`
  String get editWorker {
    return Intl.message(
      'Edit worker',
      name: 'editWorker',
      desc: '',
      args: [],
    );
  }

  /// `Assign Worker`
  String get assignWorker {
    return Intl.message(
      'Assign Worker',
      name: 'assignWorker',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching worker`
  String get startFetchingWorker {
    return Intl.message(
      'Start fetching worker',
      name: 'startFetchingWorker',
      desc: '',
      args: [],
    );
  }

  /// `Choose worker gender`
  String get chooseWorkerGender {
    return Intl.message(
      'Choose worker gender',
      name: 'chooseWorkerGender',
      desc: '',
      args: [],
    );
  }

  /// `The cart empty`
  String get theCartEmpty {
    return Intl.message(
      'The cart empty',
      name: 'theCartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Add missing worker please`
  String get addMissingWorkerPlease {
    return Intl.message(
      'Add missing worker please',
      name: 'addMissingWorkerPlease',
      desc: '',
      args: [],
    );
  }

  /// `Please add order status `
  String get pleaseAddOrderStatus {
    return Intl.message(
      'Please add order status ',
      name: 'pleaseAddOrderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Product Recall`
  String get productRecall {
    return Intl.message(
      'Product Recall',
      name: 'productRecall',
      desc: '',
      args: [],
    );
  }

  /// `Categories Recall`
  String get categoriesRecall {
    return Intl.message(
      'Categories Recall',
      name: 'categoriesRecall',
      desc: '',
      args: [],
    );
  }

  /// `SubCategories Recall`
  String get subcategoriesRecall {
    return Intl.message(
      'SubCategories Recall',
      name: 'subcategoriesRecall',
      desc: '',
      args: [],
    );
  }

  /// `Configuration`
  String get configurations {
    return Intl.message(
      'Configuration',
      name: 'configurations',
      desc: '',
      args: [],
    );
  }

  /// `Recalls`
  String get recalls {
    return Intl.message(
      'Recalls',
      name: 'recalls',
      desc: '',
      args: [],
    );
  }

  /// `Worker required`
  String get workerRequired {
    return Intl.message(
      'Worker required',
      name: 'workerRequired',
      desc: '',
      args: [],
    );
  }

  /// `Create order`
  String get createOrder {
    return Intl.message(
      'Create order',
      name: 'createOrder',
      desc: '',
      args: [],
    );
  }

  /// `Create transaction`
  String get createTransaction {
    return Intl.message(
      'Create transaction',
      name: 'createTransaction',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newStatus {
    return Intl.message(
      'New',
      name: 'newStatus',
      desc: '',
      args: [],
    );
  }

  /// `Sure you want to complete this order ?`
  String get areYouSureYouWantCompleteThisOrder {
    return Intl.message(
      'Sure you want to complete this order ?',
      name: 'areYouSureYouWantCompleteThisOrder',
      desc: '',
      args: [],
    );
  }

  /// `Change status to complete`
  String get changeStatusToComplete {
    return Intl.message(
      'Change status to complete',
      name: 'changeStatusToComplete',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message(
      'Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Order completed successfully`
  String get orderCompletedSuccessfully {
    return Intl.message(
      'Order completed successfully',
      name: 'orderCompletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Please choose worker gender`
  String get pleaseChooseWorkerGender {
    return Intl.message(
      'Please choose worker gender',
      name: 'pleaseChooseWorkerGender',
      desc: '',
      args: [],
    );
  }

  /// `Please add worker name`
  String get pleaseAddWorkerName {
    return Intl.message(
      'Please add worker name',
      name: 'pleaseAddWorkerName',
      desc: '',
      args: [],
    );
  }

  /// `Activate full invoice worker`
  String get fullInvoiceWorker {
    return Intl.message(
      'Activate full invoice worker',
      name: 'fullInvoiceWorker',
      desc: '',
      args: [],
    );
  }

  /// `Filter based`
  String get filterBased {
    return Intl.message(
      'Filter based',
      name: 'filterBased',
      desc: '',
      args: [],
    );
  }

  /// `Tap Based`
  String get tapBased {
    return Intl.message(
      'Tap Based',
      name: 'tapBased',
      desc: '',
      args: [],
    );
  }

  /// `Order page layout type`
  String get orderPageLayoutType {
    return Intl.message(
      'Order page layout type',
      name: 'orderPageLayoutType',
      desc: '',
      args: [],
    );
  }

  /// `use default Layout Ticket`
  String get defaultLayoutTicket {
    return Intl.message(
      'use default Layout Ticket',
      name: 'defaultLayoutTicket',
      desc: '',
      args: [],
    );
  }

  /// `use default Layout Token`
  String get defaultLayoutToken {
    return Intl.message(
      'use default Layout Token',
      name: 'defaultLayoutToken',
      desc: '',
      args: [],
    );
  }

  /// `Visa`
  String get visa {
    return Intl.message(
      'Visa',
      name: 'visa',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen`
  String get kitchen {
    return Intl.message(
      'Kitchen',
      name: 'kitchen',
      desc: '',
      args: [],
    );
  }

  /// `Table Preview`
  String get tablePreview {
    return Intl.message(
      'Table Preview',
      name: 'tablePreview',
      desc: '',
      args: [],
    );
  }

  /// `Close Table`
  String get closeTable {
    return Intl.message(
      'Close Table',
      name: 'closeTable',
      desc: '',
      args: [],
    );
  }

  /// `Table Assigned to your cart`
  String get tableAssignedToYourCart {
    return Intl.message(
      'Table Assigned to your cart',
      name: 'tableAssignedToYourCart',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to close this table ?`
  String get areYouSureYouWantToCloseThisTable {
    return Intl.message(
      'Are you sure you want to close this table ?',
      name: 'areYouSureYouWantToCloseThisTable',
      desc: '',
      args: [],
    );
  }

  /// `Choose the payment mode for collected amount`
  String get chooseThePaymentModeForCollectedAmount {
    return Intl.message(
      'Choose the payment mode for collected amount',
      name: 'chooseThePaymentModeForCollectedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Assign table`
  String get assignTable {
    return Intl.message(
      'Assign table',
      name: 'assignTable',
      desc: '',
      args: [],
    );
  }

  /// `Please select table that you want to assign next order to it`
  String get pleaseSelectTableThatYouWantToAssignNextOrderToIt {
    return Intl.message(
      'Please select table that you want to assign next order to it',
      name: 'pleaseSelectTableThatYouWantToAssignNextOrderToIt',
      desc: '',
      args: [],
    );
  }

  /// `Table no. `
  String get tableNumber {
    return Intl.message(
      'Table no. ',
      name: 'tableNumber',
      desc: '',
      args: [],
    );
  }

  /// `Cart params`
  String get cartParams {
    return Intl.message(
      'Cart params',
      name: 'cartParams',
      desc: '',
      args: [],
    );
  }

  /// `Set hang`
  String get setHangQuantity {
    return Intl.message(
      'Set hang',
      name: 'setHangQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Takeaway`
  String get takeAway {
    return Intl.message(
      'Takeaway',
      name: 'takeAway',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Quantity must be greater than zero`
  String get quantityMustBeGreaterThanZero {
    return Intl.message(
      'Quantity must be greater than zero',
      name: 'quantityMustBeGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Type Of Expenses`
  String get typeOfExpenses {
    return Intl.message(
      'Type Of Expenses',
      name: 'typeOfExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Expenses Amount`
  String get expenseAmount {
    return Intl.message(
      'Expenses Amount',
      name: 'expenseAmount',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Expenses Date`
  String get expenseDate {
    return Intl.message(
      'Expenses Date',
      name: 'expenseDate',
      desc: '',
      args: [],
    );
  }

  /// `Enter Notes here`
  String get enterNote {
    return Intl.message(
      'Enter Notes here',
      name: 'enterNote',
      desc: '',
      args: [],
    );
  }

  /// `Add expense`
  String get addExpense {
    return Intl.message(
      'Add expense',
      name: 'addExpense',
      desc: '',
      args: [],
    );
  }

  /// `Upload invoice`
  String get uploadInvoice {
    return Intl.message(
      'Upload invoice',
      name: 'uploadInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Choose File`
  String get chooseFile {
    return Intl.message(
      'Choose File',
      name: 'chooseFile',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Update & Assign Customer`
  String get updateAssign {
    return Intl.message(
      'Update & Assign Customer',
      name: 'updateAssign',
      desc: '',
      args: [],
    );
  }

  /// `Assign Customer`
  String get assignCustomer {
    return Intl.message(
      'Assign Customer',
      name: 'assignCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Start fetching countries`
  String get startFetchingCountries {
    return Intl.message(
      'Start fetching countries',
      name: 'startFetchingCountries',
      desc: '',
      args: [],
    );
  }

  /// `Choose Country`
  String get chooseCountry {
    return Intl.message(
      'Choose Country',
      name: 'chooseCountry',
      desc: '',
      args: [],
    );
  }

  /// `Choose City`
  String get chooseCity {
    return Intl.message(
      'Choose City',
      name: 'chooseCity',
      desc: '',
      args: [],
    );
  }

  /// `Search City`
  String get searchCity {
    return Intl.message(
      'Search City',
      name: 'searchCity',
      desc: '',
      args: [],
    );
  }

  /// `Search Country`
  String get searchCountry {
    return Intl.message(
      'Search Country',
      name: 'searchCountry',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Cashier Password`
  String get resetCashierPassword {
    return Intl.message(
      'Reset Cashier Password',
      name: 'resetCashierPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter quantity`
  String get enterQty {
    return Intl.message(
      'Enter quantity',
      name: 'enterQty',
      desc: '',
      args: [],
    );
  }

  /// `Add Expense type`
  String get addExpenseType {
    return Intl.message(
      'Add Expense type',
      name: 'addExpenseType',
      desc: '',
      args: [],
    );
  }

  /// `Create payment`
  String get createPayment {
    return Intl.message(
      'Create payment',
      name: 'createPayment',
      desc: '',
      args: [],
    );
  }

  /// `View More details`
  String get viewMoreDetails {
    return Intl.message(
      'View More details',
      name: 'viewMoreDetails',
      desc: '',
      args: [],
    );
  }

  /// `Credit Balance: `
  String get creditBalance {
    return Intl.message(
      'Credit Balance: ',
      name: 'creditBalance',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get totalOrders {
    return Intl.message(
      'Total Orders',
      name: 'totalOrders',
      desc: '',
      args: [],
    );
  }

  /// `Total Transactions`
  String get totalTransactions {
    return Intl.message(
      'Total Transactions',
      name: 'totalTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Total Addresses`
  String get totalAddresses {
    return Intl.message(
      'Total Addresses',
      name: 'totalAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Loyalty Scour`
  String get loyaltyScore {
    return Intl.message(
      'Loyalty Scour',
      name: 'loyaltyScore',
      desc: '',
      args: [],
    );
  }

  /// `Car Number: `
  String get carNumber {
    return Intl.message(
      'Car Number: ',
      name: 'carNumber',
      desc: '',
      args: [],
    );
  }

  /// `Paid Amount`
  String get paidAmount {
    return Intl.message(
      'Paid Amount',
      name: 'paidAmount',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Credit History`
  String get creditHistory {
    return Intl.message(
      'Credit History',
      name: 'creditHistory',
      desc: '',
      args: [],
    );
  }

  /// `View Credit History`
  String get viewCreditHistory {
    return Intl.message(
      'View Credit History',
      name: 'viewCreditHistory',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Details`
  String get transactionDetails {
    return Intl.message(
      'Transaction Details',
      name: 'transactionDetails',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Transaction No`
  String get transactionNo {
    return Intl.message(
      'Transaction No',
      name: 'transactionNo',
      desc: '',
      args: [],
    );
  }

  /// `Transaction OfflineID`
  String get transactionOfflineID {
    return Intl.message(
      'Transaction OfflineID',
      name: 'transactionOfflineID',
      desc: '',
      args: [],
    );
  }

  /// `Customer name`
  String get customerName {
    return Intl.message(
      'Customer name',
      name: 'customerName',
      desc: '',
      args: [],
    );
  }

  /// `Add Customer to store their information and provide personalized services`
  String get addCustomerDec {
    return Intl.message(
      'Add Customer to store their information and provide personalized services',
      name: 'addCustomerDec',
      desc: '',
      args: [],
    );
  }

  /// `Assign NFC`
  String get assignNFC {
    return Intl.message(
      'Assign NFC',
      name: 'assignNFC',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you deleted the {customerName} and all their information?`
  String deleteDesc(String customerName) {
    return Intl.message(
      'Are you sure you deleted the $customerName and all their information?',
      name: 'deleteDesc',
      desc: '',
      args: [customerName],
    );
  }

  /// `Loyalty Points History`
  String get loyaltyPointsHistory {
    return Intl.message(
      'Loyalty Points History',
      name: 'loyaltyPointsHistory',
      desc: '',
      args: [],
    );
  }

  /// `Recharge`
  String get recharge {
    return Intl.message(
      'Recharge',
      name: 'recharge',
      desc: '',
      args: [],
    );
  }

  /// `View Points`
  String get viewPoints {
    return Intl.message(
      'View Points',
      name: 'viewPoints',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message(
      'Points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Earned`
  String get earned {
    return Intl.message(
      'Earned',
      name: 'earned',
      desc: '',
      args: [],
    );
  }

  /// `Spent`
  String get spent {
    return Intl.message(
      'Spent',
      name: 'spent',
      desc: '',
      args: [],
    );
  }

  /// `Points Earned`
  String get pointsEarned {
    return Intl.message(
      'Points Earned',
      name: 'pointsEarned',
      desc: '',
      args: [],
    );
  }

  /// `Points Spent`
  String get pointsSpent {
    return Intl.message(
      'Points Spent',
      name: 'pointsSpent',
      desc: '',
      args: [],
    );
  }

  /// `Please Select the Customer`
  String get selectCustomer {
    return Intl.message(
      'Please Select the Customer',
      name: 'selectCustomer',
      desc: '',
      args: [],
    );
  }

  /// `The customer does not have enough points`
  String get notEnoughPoints {
    return Intl.message(
      'The customer does not have enough points',
      name: 'notEnoughPoints',
      desc: '',
      args: [],
    );
  }

  /// `Pay By Point`
  String get payByPoint {
    return Intl.message(
      'Pay By Point',
      name: 'payByPoint',
      desc: '',
      args: [],
    );
  }

  /// `expire point`
  String get expirePoint {
    return Intl.message(
      'expire point',
      name: 'expirePoint',
      desc: '',
      args: [],
    );
  }

  /// `Purchase`
  String get purchase {
    return Intl.message(
      'Purchase',
      name: 'purchase',
      desc: '',
      args: [],
    );
  }

  /// `The greater numbers of orders a customer makes \nthe higher points they get`
  String get pointMsg {
    return Intl.message(
      'The greater numbers of orders a customer makes \nthe higher points they get',
      name: 'pointMsg',
      desc: '',
      args: [],
    );
  }

  /// `can't pay total amount by point`
  String get cantPayTotalAmountWithPoint {
    return Intl.message(
      'can\'t pay total amount by point',
      name: 'cantPayTotalAmountWithPoint',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Assigned`
  String get assigned {
    return Intl.message(
      'Assigned',
      name: 'assigned',
      desc: '',
      args: [],
    );
  }

  /// `Replaced`
  String get replaced {
    return Intl.message(
      'Replaced',
      name: 'replaced',
      desc: '',
      args: [],
    );
  }

  /// `Locked`
  String get locked {
    return Intl.message(
      'Locked',
      name: 'locked',
      desc: '',
      args: [],
    );
  }

  /// `Tap your Nfc card for add it`
  String get addNfcCard {
    return Intl.message(
      'Tap your Nfc card for add it',
      name: 'addNfcCard',
      desc: '',
      args: [],
    );
  }

  /// `Manage Nfc Cards`
  String get manageNfcCards {
    return Intl.message(
      'Manage Nfc Cards',
      name: 'manageNfcCards',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
