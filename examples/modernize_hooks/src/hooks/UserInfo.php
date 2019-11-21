<?php

namespace Drupal\modernize_hooks\hooks;

/**
 * Class UserInfo.
 *
 * @package Drupal\modernize_hooks\hooks
 */
final class UserInfo {

  /**
   * Exposes "pseudo-field" components on content entities.
   *
   * @return array
   *   The extra field definition.
   */
  public function entityExtraFieldInfo() {
    return [
      'user' => [
        'user' => [
          'display' => [
            'terms_and_conditions' => [
              'label' => t('Terms and conditions'),
              'description' => t('Show the terms and conditions.'),
              'weight' => 5,
            ],
          ],
        ],
      ],
    ];
  }

}
