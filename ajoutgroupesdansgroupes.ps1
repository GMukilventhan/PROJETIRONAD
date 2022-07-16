#Ajout des groupes dans les groupes

Add-ADGroupMember -Identity 'Administratif' -Members AdministratifParis
Add-ADGroupMember -Identity 'Commercial'-Members CommercialParis
Add-ADGroupMember -Identity 'Informatique' -Members InformatiqueParis
Add-ADGroupMember -Identity 'ComitedeDirection'-Members ComitedeDirectionParis



