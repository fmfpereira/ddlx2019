<?php

namespace Drupal\modernize_hooks\hooks;

use Drupal\Core\DependencyInjection\ContainerInjectionInterface;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\StringTranslation\StringTranslationTrait;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Class UserAlter.
 *
 * @package Drupal\modernize_hooks\hooks
 */
final class UserAlter implements ContainerInjectionInterface {

  /*
   * The string translation trait.
   */
  use StringTranslationTrait;

  /**
   * The language manager service.
   *
   * @var \Drupal\Core\Language\LanguageManagerInterface
   */
  protected $languageManager;

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    $instance = new static();
    $instance->languageManager = $container->get('language_manager');
    return $instance;
  }

  /**
   * {@inheritdoc}
   */
  public function userRegisterFormAlter(&$form, FormStateInterface $form_state, $form_id) {
    $form['#validate'][] = [$this, 'userRegisterValidateForm'];
  }

  /**
   * User register form validation callback.
   *
   * @param array $form
   *   The form structure.
   * @param \Drupal\Core\Form\FormStateInterface $form_state
   *   The current form state.
   */
  public function userRegisterValidateForm(array &$form, FormStateInterface $form_state) {
    if (empty($form_state->getValue('field_alt_terms_and_conditions')['value'])) {
      if (empty($form_state->getValue('field_terms_and_conditions')['value'])) {
        $form_state->setError($form['field_alt_terms_and_conditions'], $this->t('You should select one of the options below'));
      }
    }
  }

}
