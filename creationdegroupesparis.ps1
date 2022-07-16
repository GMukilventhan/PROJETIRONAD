#*********************Groupes sous Paris utilisateurs************************

New-ADGroup -Name AdministratifParis -GroupScope Global -GroupCategory Security -Path "ou=Paris,ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name CommercialParis -GroupScope Global -GroupCategory Security -Path "ou=Paris,ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name InformatiqueParis -GroupScope Global -GroupCategory Security -Path "ou=Paris,ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name ComitedeDirectionParis -GroupScope Global -GroupCategory Security -Path "ou=Paris,ou=Utilisateurs,dc=starck,dc=lan"


