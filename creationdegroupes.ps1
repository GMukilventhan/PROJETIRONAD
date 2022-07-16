# ********Création des Groupes dans le dossier urilisateur*********

New-ADGroup -Name Administratif -GroupScope Global -GroupCategory Security -Path "ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name Commercial -GroupScope Global -GroupCategory Security -Path "ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name Informatique -GroupScope Global -GroupCategory Security -Path "ou=Utilisateurs,dc=starck,dc=lan"
New-ADGroup -Name ComitedeDirection -GroupScope Global -GroupCategory Security -Path "ou=Utilisateurs,dc=starck,dc=lan"
