<?php

namespace Drupal\modernize_hooks\hooks;

use Drupal\Core\Routing\RouteMatchInterface;

/**
 * Class ModernizeHooksInfo.
 *
 * @package Drupal\modernize_hooks\hooks
 */
final class ModernizeHooksInfo {

  /**
   * {@inheritdoc}
   */
  public function help($route_name, RouteMatchInterface $route_match) {
    switch ($route_name) {
      // Main module help for the modernize_hooks module.
      case 'help.page.modernize_hooks':
        $output = '';
        $output .= '<h3>' . t('About') . '</h3>';
        $output .= '<p>' . t('DDLX2019 Modernize hooks session example module.') . '</p>';
        return $output;

      default:
    }
  }

  /**
   * {@inheritdoc}
   */
  public function theme($existing, $type, $theme, $path) {
    return [
      'user_terms' => [
        'variables' => [
          'user' => NULL,
        ],
      ],
    ];
  }

}
