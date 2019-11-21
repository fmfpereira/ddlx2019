<?php

namespace Drupal\modernize_hooks\hooks;

use Drupal\Core\DependencyInjection\ContainerInjectionInterface;
use Drupal\Core\Entity\Display\EntityViewDisplayInterface;
use Drupal\Core\Entity\EntityInterface;
use Drupal\Core\StringTranslation\StringTranslationTrait;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Class UserOperations.
 *
 * @package Drupal\modernize_hooks\hooks
 */
final class UserOperations implements ContainerInjectionInterface {

  /*
   * The string translation trait.
   */
  use StringTranslationTrait;

  /**
   * The entity type manager service.
   *
   * @var \Drupal\Core\Entity\EntityTypeManagerInterface
   */
  protected $entityTypeManager;

  /**
   * The current user.
   *
   * @var \Drupal\Core\Session\AccountProxy
   */
  protected $currentUser;

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    $instance = new static();
    $instance->entityTypeManager = $container->get('entity_type.manager');
    $instance->currentUser = $container->get('current_user');
    return $instance;
  }

  /**
   * {@inheritdoc}
   */
  public function entityView(array &$build, EntityInterface $entity, EntityViewDisplayInterface $display, $view_mode) {
    if ($entity->getEntityTypeId() == "user") {
      if ($display->getComponent('terms_and_conditions') && $view_mode == 'full') {
        $build['terms_and_conditions'] = [
          '#theme' => 'user_terms',
          '#user' => $entity,
        ];
      }
    }
  }

}
