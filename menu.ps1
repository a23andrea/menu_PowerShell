<# Menú #>

$resp = 0

while ($resp -ne 6){

    ("Menú, elixe unha opción: ")
    ("1) Crear un cartafol")
    ("2) Comprobar o contido do cartafol actual")
    ("3) Calculadora")
    ("4) Abrir o editor de texto")
    ("5) Borrar un cartafol/arquivo")
    ("6) Sair")
    ("")


    $resp = Read-Host("Introduce a opción");
    
    clear


    switch($resp){
        
        1.{("Escriba o nome do cartafol que quera crear:")
            $nomeDir1 = Read-Host("Nome")

            ("Escriba a ruta relativa do cartafol que quera crear:")
            ("(Se é no cartafol actual, simplemente prema enter)")
            $rutaDir1 = Read-Host("Ruta")
            
            clear
            
            New-Item -Path $rutaDir1$nomeDir1 -ItemType Directory

            ("Cartafol creado con éxito")
            Read-Host("Prema enter para volver ao menú")}



        2.{ls
        
           Read-Host("Prema enter para volver ao menú")}


        3.{("Que operacion quere realizar?")
           ("1) Suma")
           ("2) Resta")
           ("3) Multiplicación")
           ("4) División")
           
           $calc = Read-Host("Operación")

           clear

           if($calc -gt 4){
           
                ("Operación non atopada")
                Start-Sleep -Seconds 3
                continue

           }elseif($calc -lt 1){
           
                ("Operación non atopada")
                Start-Sleep -Seconds 3
                continue

           }

           if($calc -eq 1){

                $num1 = Read-Host("Introduzca un número enteiro")

                clear

                $num2 = Read-Host("Introcduzca outro número enteiro")

                clear

                $num3 = [int]$num1 + [int]$num2

                ($num1 + " + " + $num2 + " = " + $num3)

                Read-Host("Prema enter para volver ao menú")
           
           
           }

           if($calc -eq 2){

                $num1 = Read-Host("Introduzca un número enteiro")

                clear

                $num2 = Read-Host("Introcduzca outro número enteiro")

                clear

                $num3 = [int]$num1 - [int]$num2

                ($num1 + " - " + $num2 + " = " + $num3)

                Read-Host("Prema enter para volver ao menú")
           
           
           }

           if($calc -eq 3){

                $num1 = Read-Host("Introduzca un número enteiro")

                clear

                $num2 = Read-Host("Introcduzca outro número enteiro")

                clear

                $num3 = [int]$num1 * [int]$num2

                ($num1 + " x " + $num2 + " = " + $num3)

                Read-Host("Prema enter para volver ao menú")
           
           
           }


           if($calc -eq 4){

                $num1 = Read-Host("Introduzca o dividendo")

                clear

                $num2 = Read-Host("Introcduzca o divisor")

                clear

                if($num2 -eq 0){
                
                    ("Non se pode dividir entre cero")
                    Start-Sleep -Seconds 3
                    continue
                
                }

                $num3 = [int]$num1 / [int]$num2

                ($num1 + " / " + $num2 + " = " + $num3)

                Read-Host("Prema enter para volver ao menú")
           
           
           }
           
           }




        4.{("Escriba o nome do arquivo que quera crear (con extensión):")
            $nomeFile1 = Read-Host("Nome")

            ("Escriba a ruta relativa do arquivo que quera crear:")
            ("(Se é no cartafol actual, simplemente prema enter)")
            $rutaDirFile1 = Read-Host("Ruta")
            
            clear
            
            New-Item -Path $rutaDirFile1$nomeFile1 -ItemType File
            
            notepad.exe $rutaDirFile1$nomeFile1
            
            Read-Host("Prema enter para volver ao menú")}




        5.{$ruta = Read-Host("Escriba a ruta absoluta do cartafol que quera eliminar")

           clear
           
           Remove-Item -Path $ruta
           
           ("Arquivo/cartafol eliminado correctamente")
           Read-Host("Prema enter para volver ao menú")
           
           }



        6.{"Bye"}
    
    
    }

    clear


}
