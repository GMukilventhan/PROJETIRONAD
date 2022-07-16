Import-Module ActiveDirectory
Import-Module 'Microsoft.PowerShell.Security'

$users = Import-Csv -Delimiter ";" -Path "C:\docs\import.csv"

#********************Creation des OU********************************

New-ADOrganizationalUnit -Name "Utilisateurs" -Path "dc=starck,dc=lan"

New-ADOrganizationalUnit -Name "Paris" -Path "ou=Utilisateurs,dc=starck,dc=lan"


#*******Ajout de chaque utilisateur dans son OU specifique*******

foreach ($user in $users){
     
    $name = $user.firstName + " " + $user.lastName
    $fname = $user.firstName
    $lname = $user.lastName
    $login = $user.firstName + "." + $user.lastName
    $upn="$login@starckindustrie.fr"
    $Uoffice = $user.office
    $Upassword = $user.password
    $dept = $user.department
    

    switch($user.office){
        "Paris" {$office = "OU=Paris,OU=Utilisateurs,DC=starck,DC=lan"}

        default {$office = $null}    
    }
    
     try {
            New-ADUser -Name $name -SamAccountName $login -UserPrincipalName $upn -DisplayName $name -GivenName $fname -Surname $lname -AccountPassword (ConvertTo-SecureString $Upassword -AsPlainText -Force) -City $Uoffice -Path $office -Department $dept -Enabled $true
            echo "Utilisateur ajoute : $name"
          
           
        } catch{
            echo "utilisateur non ajoute : $name"
       }   

   }
