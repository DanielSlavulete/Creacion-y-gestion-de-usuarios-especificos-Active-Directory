::Creacion de usuarios, grupos y equipos batch

:: //////////////////////////////////////////////////////////////////////////ACLARACIÓN///////////////////////////////////////////////////////////////////////////////////////////////////
:: Con usuarios más especificos es recomendable hacerlo de esta manera. Si son menos especificos como "user1, user2, etc..." se puede hacer uso de for (for /L %%i in (1,y,x)do()
:: Creamos usuarios del 1 al x, en la x introducimos el numero total de usuarios que queremos crear y la y es el numero de saltos que hace, si es 2 irá creando usuarios de dos en dos 
:: /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:: Creamos la Unidad Organizativa principal
dsadd ou "ou=DA,dc=Medac,dc=com"

:: Creamos la Unidad Organizativa Clase que es donde van a estar los alumnos de Medac
dsadd ou "ou=Clase,ou=DA,dc=Medac,dc=com"

:: Creamos otras 3 unidades Organizativas más a raíz de la Unidad Organizativa Clase (las tres al mismo nivel)
dsadd ou "ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd ou "ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd ou "ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Creamos usuarios dentro del grupo Usuarios
dsadd user "cn=dcarballo,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid dcarballo -upn dcarballo@medac.com -fn Diego -ln Carballo -pwd @lucard-69 -mustchpwd no -acctexpires never
net user dcarballo /times:l-v 16-21 /workstation:PCdcarballo
dsadd user "cn=mteresasanz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid mteresasanz -upn mteresasanz@medac.com -fn Maria Teresa -ln Sanz -pwd @lucard-69 -mustchpwd no -acctexpires never
net user mteresasanz /times:l-v 16-21 /workstation:PCmteresasanz
dsadd user "cn=jsoler,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid jsoler -upn jsoler@medac.com -fn Javier -ln Soler -pwd @lucard-69 -mustchpwd no -acctexpires never
net user jsoler /times:l-v 16-21 /workstation:PCjsoler
dsadd user "cn=gsanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid gsanchez -upn gsanchez@medac.com -fn German -ln Sanchez -pwd @lucard-69 -mustchpwd no -acctexpires never
net user gsanchez /times:l-v 16-21 /workstation:PCgsanchez
dsadd user "cn=mjesus,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid mjesus -upn mjesus@medac.com -fn Maria Jesus -ln Calero -pwd @lucard-69 -mustchpwd no -acctexpires never
net user mjesus /times:l-v 16-21 /workstation:PCmjesus
dsadd user "cn=cteran,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid cteran -upn cteran@medac.com -fn Carlos -ln Teran -pwd @lucard-69 -mustchpwd no -acctexpires never
net user cteran /times:l-v 16-21 /workstation:PCcteran
dsadd user "cn=pmartin,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid pmartin -upn pmartin@medac.com -fn Pedro -ln Martin -pwd @lucard-69 -mustchpwd no -acctexpires never
net user pmartin /times:l-v 16-21 /workstation:PCpmartin
dsadd user "cn=amgonzalez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid amgonzalez -upn amgonzalez@medac.com -fn Ana Maria -ln Gonzalez -pwd @lucard-69 -mustchpwd no -acctexpires never
net user amgonzalez /times:l-v 16-21 /workstation:PCamgonzalez
dsadd user "cn=sherranz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid sherranz -upn sherranz@medac.com -fn Susana -ln Herranz -pwd @lucard-69 -mustchpwd no -acctexpires never
net user sherranz /times:l-v 16-21 /workstation:PCsherranz
dsadd user "cn=jsolersanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -samid jsolersanchez -upn jsolersanchez@medac.com -fn Jorge -ln Soler Sanchez -pwd @lucard-69 -mustchpwd no -acctexpires never
net user jsolersanchez /times:l-v 16-21 /workstation:PCjsolersanchez

:: Creamos los equipos de cada usuario dentro del grupo Equipos
dsadd computer "cn=PCdcarballo,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCmteresasanz,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCjsoler,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCgsanchez,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCmjesus,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCcteran,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCpmartin,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCamgonzalez,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCsherranz,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd computer "cn=PCjsolersanchez,ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Creamos los grupos (Redes, Izquierda, Derecha y Centro) dentro de la Unidad Organizativa Grupos
dsadd group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd group "cn=Izquierda,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd group "cn=Derecha,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"
dsadd group "cn=Centro,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Incluiremos a todos los usuarios al grupo Redes
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=dcarballo,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=mteresasanz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=jsoler,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=gsanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=mjesus,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=cteran,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=pmartin,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=amgonzalez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=sherranz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Redes,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=jsolersanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Los tres primeros usuarios los incluimos en el grupo Izquierda
dsmod group "cn=Izquierda,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=dcarballo,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Izquierda,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=mteresasanz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Izquierda,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=jsoler,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Los tres siguientes usuarios los incluiremos en el grupo Derecha
dsmod group "cn=Derecha,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=gsanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Derecha,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=mjesus,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Derecha,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=cteran,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"

:: El resto de usuarios los inlcuiremos en el grupo Centro
dsmod group "cn=Centro,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=pmartin,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Centro,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=amgonzalez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Centro,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=sherranz,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"
dsmod group "cn=Centro,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=jsolersanchez,ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Crear un archivo con el contenido de cada grupo a un archivo

dsquery user "ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" > C:\infoUsuarios.txt
dsquery user "ou=Equipos,ou=Clase,ou=DA,dc=Medac,dc=com" > C:\infoEquipos.txt
dsquery user "ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" > C:\infoGrupos.txt

:: Para eliminar la Unidad Organizativa Clase y todo lo que hay dentro (-subtree borra lo que hay dentro -noprompt hace que no pida confirmación y -c confirma eso)

dsrm -subtree -noprompt -c "ou=Clase,ou=DA,dc=Medac,dc=com"

:: //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:: ADICIONAL
:: //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


:: Indicar obtener los equipos que comiencen por “(iniciales)” dentro del dominio.
dsquery computer "ou=Clase,ou=DA,cd=Medac,cd=com" -Name *DA*

:: Obtener las unidades organizativas que terminen por “clase”  dentro del dominio.
dsquery ou "ou=Clase,ou=DA,cd=Medac,cd=com" -Name *clase

:: Obtener las cuentas de usuario que estén deshabilitadas dentro del dominio.
dsquery user "ou=Usuarios,ou=Clase,ou=DA,dc=Medac,dc=com" -disabled

:: Modificar la descripción del grupo izquierda
dsmod group "cn=Izquierda,ou=Clase,ou=DA,dc=Medac,dc=com" -desc "Grupo de la izquierda"

:: Modificar la descripción del grupo derecha
dsmod group "cn=derecha,ou=Clase,ou=DA,dc=Medac,dc=com" -desc "Grupo de la derecha"

:: Modificar la descripción del grupo centro
dsmod group "cn=centro,ou=Clase,ou=DA,dc=Medac,dc=com" -desc "Grupo del centro"

:: Cambiar la propiedad userAccountControl para permitir que los usuarios cambien su contraseña
dsquery user "ou=Clase,ou=DA,DC=Medac,DC=com" | dsmod user -mustchpwd yes

:: Definir las variables
set OU=Clase
set EXPIRATION_DATE=20240601
set WEB_PAGE=www.google.es
set TITLE=clase
set DEPARTMENT=Redes
set PASSWORD=Curso@Red07

:: Obtener la lista de usuarios en la Unidad Organizativa
for /f "tokens=*" %%A in ('dsquery user "ou=%OU%,ou=DA,dc=Medac,dc=com"') do (
    dsmod user %%A -acctexpires %EXPIRATION_DATE%
    dsmod user %%A -webpg %WEB_PAGE%
    dsmod user %%A -title %TITLE%
    dsmod user %%A -dept %DEPARTMENT%
    dsmod user %%A -pwd %PASSWORD% -mustchpwd yes
)

:: Obtener el upn de todos los usuarios del grupo izquierda
dsget group "cn=Izquierda,ou=grupos,ou=clase,ou=DA,dc=Medac,dc=com" -members | dsget user -upn > MiembrosIzquierda.txt

:: Agregar usuarios a grupo de administradores
dsadd group "cn=Administradores,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com"

for /f "tokens=*" %%a in ('dsquery group "%Usuarios%" ^| dsget group -members -expand') do (
    set "usuarioDN=%%a"
    
     Mover el usuario al grupo destino
    dsmod group "%Administradores%" -addmbr "!usuarioDN!"
    
    echo "Usuario movido al grupo de administradores: !usuarioDN!"
)

:: Obtener el upn y los días que faltan para que caduquen las cuentas  de la unidad organizativa clase. 
for /f "tokens=* usebackq" %%a in (`dsquery user "%unidadOrganizativa%" -limit 0`) do (
    set "usuarioDN=%%a"
    set "upn="
    set "cuentaCaduca="

    :: Obtener el UPN y la información sobre si la cuenta caduca
    for /f "tokens=*" %%b in ('dsget user !usuarioDN! -upn -acctexpires') do (
        set "line=%%b"
        for /f "tokens=1,2" %%c in ("!line!") do (
            set "upn=%%c"
            set "cuentaCaduca=%%d"
        )
    )

    :: Mostrar el resultado
    echo UPN: !upn!
    if "!cuentaCaduca!" neq "never" (
        echo La cuenta caduca.
    ) else (
        echo La cuenta no caduca.
    )
    echo.
)

:: Crea un usuario que se llame “nuevoalumno” con tus iniciales delante en el contenedor USERS del dominio.
dsadd user "cn=NuevoAlumnoDA,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Mueve el usuario anterior a la unidad organizativa usuarios ubicada dentro de clase.
dsmod group "cn=Usuarios,ou=Grupos,ou=Clase,ou=DA,dc=Medac,dc=com" -addmbr "cn=NuevoAlumnoDA,ou=Clase,ou=DA,dc=Medac,dc=com"

:: Pasar a un archivo de texto el nombre de los grupos ubicados dentro de la unidad organizativa grupos y los usuarios pertenecientes a cada uno de ellos. 
REM Definir el archivo de salida
set archivoSalida=grupos_y_usuarios.txt

    ::Obtener los grupos de la unidad organizativa "Grupos"
    for /f "tokens=* usebackq" %%a in (`dsquery group "%unidadOrganizativa%" -limit 0`) do (
        set "grupoDN=%%a"
        set "usuarios="

    :: Obtener los usuarios del grupo
    for /f "tokens=* usebackq" %%b in ('dsget group !grupoDN! -members -expand') do (
        set "usuarios=!usuarios! %%b"
    )

    :: Escribir en el archivo de salida
    echo Grupo: !grupoDN! >> %archivoSalida%
    echo Usuarios: !usuarios! >> %archivoSalida%
    echo. >> %archivoSalida%
)
