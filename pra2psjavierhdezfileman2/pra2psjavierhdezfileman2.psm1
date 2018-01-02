[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$xaml = @'
<Window x:Name="wndMain1" x:Class="practica2PSavierhdezFileman.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:practica2PSavierhdezFileman"
        mc:Ignorable="d"
        Title="GestionBackups" Height="349.283" Width="412.397">
    <Grid x:Name="wndMain" Margin="0,0,68,235">
        <Button x:Name="btnFileExplore" Content="Explore Carpeta" HorizontalAlignment="Left" Margin="228,83,0,-21" VerticalAlignment="Top" Width="107"/>
        <Button x:Name="btnDel" Content="Borrar Archivo" HorizontalAlignment="Left" Margin="116,83,0,-21" VerticalAlignment="Top" Width="108"/>
        <Button x:Name="btnNew" Content="Crear Archivo" HorizontalAlignment="Left" Margin="5,83,0,-21" VerticalAlignment="Top" Width="107"/>
        <Button x:Name="btnExit" Content="Salir" HorizontalAlignment="Left" Margin="228,108,0,-46" VerticalAlignment="Top" Width="107"/>
        <Button x:Name="btnNewBackup" Content="Crear copia Seg" HorizontalAlignment="Left" Margin="116,108,0,-46" VerticalAlignment="Top" Width="108"/>
        <Button x:Name="btnNewFolder" Content="Crear Carpeta" HorizontalAlignment="Left" Margin="4,108,0,-46" VerticalAlignment="Top" Width="108" Click="btnFileExplore_Copy4_Click" RenderTransformOrigin="0.5,0.5">
            <Button.RenderTransform>
                <TransformGroup>
                    <ScaleTransform/>
                    <SkewTransform AngleX="-4.27"/>
                    <RotateTransform/>
                    <TranslateTransform X="0.978"/>
                </TransformGroup>
            </Button.RenderTransform>
        </Button>
        <Grid Margin="10,10,0,-236" RenderTransformOrigin="0.49,0.636"/>

    </Grid>
</Window>
'@

$reader=(New-Object System.Xml.XmlNodeReader $xaml)
$Form=[Windows.Markup.XamlReader]::Load( $reader )
$check1= $Form.FindName('Check1')

$btnExit = $Form.FindName('Boton3')
$btnExit.Add_Click({
[System.Windows.Forms.MessageBox]::Show("Estas son las condiciones donde la parte contratantes de la primera parte será considerada la parte contratante de la primera parte  ","Condiciones de IT")
	})
