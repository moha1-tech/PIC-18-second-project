    LIST	p = 18F45K22, r = dec	;  D�finition du �C utilis�
    #include    <p18f45k22.inc>		;  D�finition des registres SFR et leurs bits
    #include    <config.inc>		;  Configuration des registres hardwares
    #include	<Temporisation.inc>	;  Contient les 3 sous programmes de temporisations suivantes: 
					;	TempoNx1ms   = Nx1ms	(La variable Nx est d�j� d�clar�e)
					; 	TempoNx10ms  = Nx10ms	(La variable Nx est d�j� d�clar�e)
					; 	TempoNx100ms = Nx100ms	(La variable Nx est d�j� d�clar�e)
					
;*******************************************************************************
;*			D�finition des Symboles avec EQU
;*******************************************************************************
					

;*******************************************************************************
;*			R�servation des variables avec res
;*******************************************************************************
uDataAccess udata_acs	0x00		; Adresse de uDataAccess = 0x00 (access page)

 
uDataPage   udata	0x100		; Adresse de uDataPage = 0x100 (no access page)

;*******************************************************************************
;*			VECTEURS D'INTERRUPTIONS:
;*******************************************************************************					
	ORG	0x0000			; Adresse de d�part apr�s le RESET
	GOTO	main

;*******************************************************************************
;*			PROGRAMME PRINCIPAL:
;*******************************************************************************
	ORG	0x0100			; Adresse programme principale
main:	

boucle: 

	GOTO	boucle			; Boucle infini

;*******************************************************************************
;*			SOUS PROGRAMMES:
;*******************************************************************************

	

	END
