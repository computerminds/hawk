<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function hawk_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Hawk';

  // Set the default country to be the UK.
  $form['server_settings']['site_default_country']['#default_value'] = 'GB';

  if (defined('SITE_ENVIRONMENT') && SITE_ENVIRONMENT == 'DEV') {
    $form['site_information']['site_mail']['#default_value']    = 'info@example.com';
    $form['admin_account']['account']['name']['#default_value'] = 'admin';
    $form['admin_account']['account']['mail']['#default_value'] = 'info@example.com';
    $form['admin_account']['account']['pass'] = array(
      '#type' => 'value',
      '#value' => 'admin'
    );
    $form['update_notifications']['update_status_module']['#default_value'] = array(0,0);
  }
}

/**
 * Implements hook_install_tasks().
 */
function hawk_install_tasks() {
  $tasks = array();

  return $tasks;
}
