<?php

namespace App\Entity;

use App\Repository\EventsRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EventsRepository::class)]
class Events
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    private ?string $event_name = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $event_date = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $event_description = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $event_image = null;

    #[ORM\Column]
    private ?int $event_capacity = null;

    #[ORM\Column(length: 50)]
    private ?string $event_email = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $event_phoneNumber = null;

    #[ORM\Column(length: 255)]
    private ?string $event_address = null;

    #[ORM\Column(length: 255)]
    private ?string $event_url = null;

    #[ORM\Column(length: 255)]
    private ?string $event_type = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEventName(): ?string
    {
        return $this->event_name;
    }

    public function setEventName(string $event_name): static
    {
        $this->event_name = $event_name;

        return $this;
    }

    public function getEventDate(): ?\DateTimeInterface
    {
        return $this->event_date;
    }

    public function setEventDate(\DateTimeInterface $event_date): static
    {
        $this->event_date = $event_date;

        return $this;
    }

    public function getEventDescription(): ?string
    {
        return $this->event_description;
    }

    public function setEventDescription(string $event_description): static
    {
        $this->event_description = $event_description;

        return $this;
    }

    public function getEventImage(): ?string
    {
        return $this->event_image;
    }

    public function setEventImage(?string $event_image): static
    {
        $this->event_image = $event_image;

        return $this;
    }

    public function getEventCapacity(): ?int
    {
        return $this->event_capacity;
    }

    public function setEventCapacity(int $event_capacity): static
    {
        $this->event_capacity = $event_capacity;

        return $this;
    }

    public function getEventEmail(): ?string
    {
        return $this->event_email;
    }

    public function setEventEmail(string $event_email): static
    {
        $this->event_email = $event_email;

        return $this;
    }

    public function getEventPhoneNumber(): ?string
    {
        return $this->event_phoneNumber;
    }

    public function setEventPhoneNumber(string $event_phoneNumber): static
    {
        $this->event_phoneNumber = $event_phoneNumber;

        return $this;
    }

    public function getEventAddress(): ?string
    {
        return $this->event_address;
    }

    public function setEventAddress(string $event_address): static
    {
        $this->event_address = $event_address;

        return $this;
    }

    public function getEventUrl(): ?string
    {
        return $this->event_url;
    }

    public function setEventUrl(string $event_url): static
    {
        $this->event_url = $event_url;

        return $this;
    }

    public function getEventType(): ?string
    {
        return $this->event_type;
    }

    public function setEventType(string $event_type): static
    {
        $this->event_type = $event_type;

        return $this;
    }
}
