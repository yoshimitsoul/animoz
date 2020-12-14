package com.animoz.service;


@SuppressWarnings("serial")
public class AnimalExisteEncoreException extends Exception{
	public AnimalExisteEncoreException(String message) {
		super(message);
	}
}