Import-Module ActiveDirectory
Import-Module 'Microsoft.PowerShell.Security'

$users = Import-Csv -Delimiter ";" -Path "C:\docs\import.csv"

foreach ($user in $users){

    $name = $user.firstName + " " + $user.lastName
    $fname = $user.firstName
    $lname = $user.lastName
    $login = $user.firstName + "." + $user.lastName
    $Uoffice = $user.office
    $Upassword = $user.password
    $dept = $user.department 


#********Ajout des utilisateurs de Paris dans leurs groupes********************

if ($Uoffice -eq "Paris" -and $dept -eq "Administratif"){

    Add-ADGroupMember -Identity 'AdministratifParis' -Members $login

}
elseif ($Uoffice -eq "Paris" -and $dept -eq "Commercial"){

    Add-ADGroupMember -Identity 'CommercialParis' -Members $login

}
elseif ($Uoffice -eq "Paris" -and $dept -eq "Informatique"){

    Add-ADGroupMember -Identity 'InformatiqueParis' -Members $login

}
elseif ($Uoffice -eq "Paris" -and $dept -eq "ComitédeDirection"){

    Add-ADGroupMember -Identity 'ComitedeDirectionParis' -Members $login

}


} 
