<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;


class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder

        ->add('event_name', null, [
            'attr' => ['class' => 'form-control mx-auto my-2 small-input'],
        ])
            
            ->add('event_date', null, [
                'attr' => ['class' => 'form-control mt-2 text-center small-input'],
                'widget' => 'single_text',
            ])
            ->add('event_description', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_image', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_capacity', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_email', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_phoneNumber', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_address', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_url', null, [
                'attr' => ['class' => 'form-control text-center small-input'],
            ])
            ->add('event_type', ChoiceType::class, [
                'attr' => ['class' => 'form-control text-center small-input'],
                'choices'  => [
                    'music' => 'music',
                    'sport' => 'sport',
                    'movie' => 'movie',
                    'theater'=> 'theater',
                ]

            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
