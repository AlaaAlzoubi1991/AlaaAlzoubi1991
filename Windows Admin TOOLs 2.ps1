


Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="505" Height="600" HorizontalAlignment="Left" VerticalAlignment="Top" Margin="0,0,0,0" Background="#010008" ResizeMode="CanMinimize" WindowStartupLocation="CenterScreen" Title="Windows Admin Tools">
<Grid HorizontalAlignment="Left" Width="510" Margin="-4,0,0,-1" MaxWidth="509" MinWidth="509">
 

  <Grid HorizontalAlignment="Left" VerticalAlignment="Top" Width="1920" Height="1080" Margin="-500,-500,0,0">

<Image Name="Spinner" Source="https://i.pinimg.com/originals/c2/c1/8c/c2c18cddc2f586a3fc16a8f0a56e99f7.jpg" RenderTransformOrigin="0.1,1">
            <Image.Triggers>
                <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                    <EventTrigger.Actions>
                        <BeginStoryboard>
                            <Storyboard Storyboard.TargetName="Spinner" Storyboard.TargetProperty="RenderTransform.(RotateTransform.Angle)">
                                <DoubleAnimation From="1" To="50" BeginTime="0:0:0" Duration="0:1:2" RepeatBehavior="Forever" />
                            </Storyboard>
                        </BeginStoryboard>
                    </EventTrigger.Actions>
                </EventTrigger>
            </Image.Triggers>
            <Image.RenderTransform>
                <RotateTransform Angle="1000" />
            </Image.RenderTransform>
            <Image.Style>
                <Style TargetType="Image">
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding IsBusy}" Value="False">
                            <Setter Property="Visibility" Value="Hidden"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </Image.Style>
        </Image>

</Grid> 

<Image Margin="-230,-422,00,0" Width="75" Height="75">
    <Image.Source>
        <BitmapImage DecodePixelWidth="300" UriSource="https://pnggrid.com/wp-content/uploads/2021/06/Windows-11-Icon-Logo.png"/>
    </Image.Source>
</Image>


<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Windows Admin TOOLs" Margin="190,86,0,0" FontSize="20" FontWeight="Bold" Foreground="#010008"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Windows Admin TOOLs" Margin="188.5,84.5,0,0" FontSize="20" FontWeight="Bold" Foreground="#fff"/>

<Grid HorizontalAlignment="Center" VerticalAlignment="Center"  Margin="-93,-260,0,0">

<TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="38" Width="314.5" TextWrapping="Wrap" Margin="99,393,0,0" FontSize="24.5" Name="comptxt" BorderBrush="#0000" Background="#fff" Foreground="#010008" FontWeight="SemiBold" Opacity="0.75"/>

<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Please Insert PC Hostname: " Margin="99,371,0,0" FontSize="15" FontStyle="Italic" FontWeight="Bold" Foreground="#010008"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Please Insert PC Hostname: " Margin="97.5,369.5,0,0" FontSize="15" FontStyle="Italic" FontWeight="Bold" Foreground="#fff"/>


<Button Content="Send Message" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="99,463,0,0" Height="30" Name="restprintservice" Background="#2d8ecf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" Opacity="0.96"/>

<Button Content="Who Using Now?" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="99,494,0,0" Height="30" Name="whousingnow" Background="#2d79cf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" FontSize="12" Opacity="0.96"/>

<Button Content="Windows Version" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="257,494,0,0" Height="30" Name="windowsversion" Background="#2d79cf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" Opacity="0.96"/>

<Button Content="Launch Computer Management " HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,525,0,0" Height="38" Name="launchcomputermanagement" Background="#2d6bcf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" FontSize="14" Opacity="0.96"/>

<Button Content="Open C:\ Folder" HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,564,0,0" Height="39" Name="opencfolder" Background="#2d5ecf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>

<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="" Margin="99,348,0,0" FontSize="14.1" FontWeight="Bold" Foreground="#ffff" Name="notenote" FontStyle="Italic"/>




<Button Content="Serial Number" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="257,463,0,0" Name="serialnumber" Height="30" Background="#2d8ecf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" Opacity="0.96"/>



<Button Content="VNC Connect" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="99,432,0,0" Name="vncconnect" Height="30" Background="#2da1cf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" Opacity="0.96"/>



<Button Content="GP Update" HorizontalAlignment="Left" VerticalAlignment="Top" Width="156.5" Margin="257,432,0,0" Height="30" Name="gpupdate" Background="#2da1cf" BorderBrush="#0000" Foreground="#ffffff" FontWeight="Bold" Opacity="0.96"/>




<Button Content="PowerShell Session " HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,604,0,0" Name="runposh" Height="39" Background="#2d6bcf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>

<Button Content="Reboot / Shutdown List" HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,644,0,0" Name="rebootlist" Height="39" Background="#2d79cf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>

<Button Content="Get Computer Process" HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,684,0,0" Name="gproc" Height="39" Background="#2d8ecf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>
<Button Content="List of Installed Softwares" HorizontalAlignment="Left" VerticalAlignment="Top" Width="314.5" Margin="99,724,0,0" Name="softinstall" Height="39" Background="#2da1cf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>






</Grid>
<Button Content="?" HorizontalAlignment="Left" VerticalAlignment="Top" Width="20" Margin="10,7,0,0" Name="about" Height="19" FontWeight="SemiBold" Foreground="#ffff" Background="#4d1e4f" BorderBrush="#0000" Opacity="0.99"/>

</Grid>

</Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#Write your code here

function about{
    
    
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="600" Height="170" ResizeMode="NoResize" WindowStyle="None" Name="winwinwin" Background="#010008" WindowStartupLocation="CenterScreen">
<Grid>


<Grid HorizontalAlignment="Left" VerticalAlignment="Top" Width="1000" Height="900" Margin="-250,-180,0,0" Opacity="0.75">

<Image Name="Spinner" Source="https://i.pinimg.com/originals/c2/c1/8c/c2c18cddc2f586a3fc16a8f0a56e99f7.jpg" RenderTransformOrigin="0.1,1">
            <Image.Triggers>
                <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                    <EventTrigger.Actions>
                        <BeginStoryboard>
                            <Storyboard Storyboard.TargetName="Spinner" Storyboard.TargetProperty="RenderTransform.(RotateTransform.Angle)">
                                <DoubleAnimation From="1" To="50" BeginTime="0:0:0" Duration="0:1:2" RepeatBehavior="Forever" />
                            </Storyboard>
                        </BeginStoryboard>
                    </EventTrigger.Actions>
                </EventTrigger>
            </Image.Triggers>
            <Image.RenderTransform>
                <RotateTransform Angle="1000" />
            </Image.RenderTransform>
            <Image.Style>
                <Style TargetType="Image">
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding IsBusy}" Value="False">
                            <Setter Property="Visibility" Value="Hidden"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </Image.Style>
        </Image>

</Grid> 

<Image Margin="-300,15,0,0" Width="100" Height="100">
    <Image.Source>
        <BitmapImage DecodePixelWidth="300" UriSource="https://pnggrid.com/wp-content/uploads/2021/06/Windows-11-Icon-Logo.png"/>
    </Image.Source>
</Image>


 <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Windows Admin TOOLs " Margin="224,37,0,0" Width="400" Height="43" FontSize="30" Foreground="#fff" FontWeight="Bold"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="By: Alaa Alzoubi - System Engineer @ Almamlakatv.com" Margin="226,84,0,0" Foreground="#fff"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Mobile: 00962776610843 " Margin="226,106,0,0" Foreground="#fff"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Email: alaaalzoubi1991@outlook.com" Margin="225,128,0,0" Foreground="#fff"/>


<Button Content="Exit" HorizontalAlignment="Left" VerticalAlignment="Top" Width="32" Margin="564,3,0,0" Name="exitt" Height="25" Foreground="#d0021b" Background="#ffffff" FontSize="15" FontWeight="SemiBold" BorderBrush="#ffffff"/>
</Grid></Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#Write your code here

function exitt{
  
  $winwinwin.visibility = "Hidden"
    
}
#endregion

#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$exitt.Add_Click({exitt $this $_})

$Window.ShowDialog()



    
}


function rps{ $Error.Clear()
   $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{
        
        
        
        
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="600" Height="320" ResizeMode="NoResize" WindowStartupLocation="CenterScreen" Background="#010008" Title="Send Message">
<Grid>
 
 <Grid HorizontalAlignment="Left" VerticalAlignment="Top" Width="1500" Height="1200" Margin="-500,-180,0,0" >

<Image Name="Spinner" Source="https://i.pinimg.com/originals/c2/c1/8c/c2c18cddc2f586a3fc16a8f0a56e99f7.jpg" RenderTransformOrigin="0.1,1">
            <Image.Triggers>
                <EventTrigger RoutedEvent="FrameworkElement.Loaded">
                    <EventTrigger.Actions>
                        <BeginStoryboard>
                            <Storyboard Storyboard.TargetName="Spinner" Storyboard.TargetProperty="RenderTransform.(RotateTransform.Angle)">
                                <DoubleAnimation From="1" To="50" BeginTime="0:0:0" Duration="0:1:2" RepeatBehavior="Forever" />
                            </Storyboard>
                        </BeginStoryboard>
                    </EventTrigger.Actions>
                </EventTrigger>
            </Image.Triggers>
            <Image.RenderTransform>
                <RotateTransform Angle="1000" />
            </Image.RenderTransform>
            <Image.Style>
                <Style TargetType="Image">
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding IsBusy}" Value="False">
                            <Setter Property="Visibility" Value="Hidden"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </Image.Style>
        </Image>

</Grid> 

<TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="152" Width="520" TextWrapping="Wrap" Margin="38,59,0,0" Name="msg" AllowDrop="True" AcceptsReturn="True" FontSize="24.5" BorderBrush="#0000" Background="#fff" Foreground="#010008" FontWeight="SemiBold" Opacity="0.75"/>
<Button Content="Send" HorizontalAlignment="Left" VerticalAlignment="Top" Width="214" Margin="343,218,0,0" Name="sendmsg" Height="29" Background="#2d7bcf" BorderBrush="#0000" FontSize="14" FontWeight="Bold" Foreground="#ffffff" Opacity="0.96"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="" Margin="38,220,0,0" Name="msgtext" Width="298" Height="24" FontSize="16" FontWeight="Bold" Foreground="#ffff"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Write Message:" Margin="38,32,0,0"  FontSize="16" FontWeight="Bold" Foreground="#ffff"/>
</Grid></Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#Write your code here



function sendmsg(){


$helloo = $msg.text

if ($comptxt.text -eq "" -or $msg.text -eq "") { $msgtext.text = "Please fill the empty text" }


else{
    
    
    Invoke-WmiMethod -Path Win32_Process -Name Create -ArgumentList "msg * $helloo
    
    

    from $env:username - computer: $env:computername" -ComputerName $comptxt.text
    
    if ($Error.Count -eq 0){
    
   
    $msg.text=""
    $msgtext.text = "The message has been sent"
    }

    if ($Error.Count -gt 0){ $msgtext.text = "You Don't Have permission to do that" }
}


}
#endregion

#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$sendmsg.Add_Click({sendmsg $this $_})

$msg.Focus()

$Window.ShowDialog()



        
        
        
        
        }




}

function sn{
    $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
    Invoke-Command -ComputerName $comp -ScriptBlock { Get-WmiObject -Class win32_bios } | Select-Object PSComputerName, Manufacturer, serialnumber | Out-GridView -Title "Serial Number" -ErrorAction SilentlyContinue
 }
}
    


function wun{
    $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
    Invoke-Command -ComputerName $comp -ScriptBlock { Get-WmiObject –Class Win32_ComputerSystem -ErrorAction SilentlyContinue } -ErrorAction SilentlyContinue | Select-Object name, UserName -ErrorAction SilentlyContinue | Out-GridView -Title "Who Using Now?" -ErrorAction SilentlyContinue
 }
    
    }

function wv{

     $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{  $comp = $comptxt.text
    Invoke-Command -ComputerName $comp -ScriptBlock { Get-ComputerInfo | select CsName, WindowsVersion -ErrorAction SilentlyContinue } -ErrorAction SilentlyContinue | Out-GridView -Title "Windows Version" -ErrorAction SilentlyContinue
 }
}

function lcm
{
  
  $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{  $comp = $comptxt.text

    start compmgmt.msc /computer=$comp }
  
}

function ocf
{
    
    $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
    explorer.exe \\$comp\c$ }
    
}



function vc
{
    
     $notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
    Start-Process "C:\Program Files\RealVNC\VNC Viewer\vncviewer.exe" -ArgumentList $comp }
  
}

function gpupdate
{

$notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
   $out = Invoke-Command -ComputerName $comp -ScriptBlock {gpupdate /force} | Write-Output
[System.Windows.MessageBox]::Show($out)  }

}

function runposh
{
 
$notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{  $comp = $comptxt.text
Start-Process powershell
$wshell = New-Object -ComObject wscript.shell;
$wshell.appactivate('powershell');
sleep -Milliseconds 200
$wshell.sendkeys('Enter-PSSession -ComputerName  ')
sleep -Milliseconds 200
$wshell.sendkeys($comp)

$wshell.sendkeys('{enter}')

$wshell.sendkeys('cls')
$wshell.sendkeys('{enter}')

sleep -Seconds 3  }
    
}

function rebootlist
{
    
$notenote.text=""
    
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{   $comp = $comptxt.text

Invoke-Command -ComputerName $comp -ScriptBlock  {


Get-WinEvent -FilterHashtable @{logname='System'; id=1074}  | ForEach-Object {
$rv = New-Object PSObject | Select-Object Date, User, Action
$rv.Date = $_.TimeCreated 
$rv.User = $_.Properties[6].Value 
$rv.Action = $_.Properties[4].Value 
$rv 

} | Select-Object Date, Action, User | Select-Object -First 10 } | Select-Object Date, Action, User,pscomputername | Out-GridView -Title "Reboot Event" -ErrorAction SilentlyContinue
    }

}
  


function softinstall
{
 
   if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{ $comp = $comptxt.text
  Invoke-Command -ComputerName $comp -ScriptBlock {Get-WmiObject -Class win32_product | Where-Object {$_.name -notmatch "microsoft"}} | select name, version | Out-GridView -Title "List of Installed Softwares"
    
     }

}

function gproc
{
    
 if($comptxt.text -eq ""){$notenote.text = "Please Insert The Computer Name in The BOX"}
        else{  $comp = $comptxt.text
  Invoke-Command -ComputerName $comp -ScriptBlock {Get-Process | Get-Unique} | Out-GridView -Title "Computer Process" }
}




#endregion

#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$restprintservice.Add_Click({rps $this $_})
$whousingnow.Add_Click({wun $this $_})
$windowsversion.Add_Click({wv $this $_})
$launchcomputermanagement.Add_Click({lcm $this $_})
$opencfolder.Add_Click({ocf $this $_})
$serialnumber.Add_Click({sn $this $_})
$vncconnect.Add_Click({vc $this $_})
$gpupdate.Add_Click({gpupdate $this $_})
$runposh.Add_Click({runposh $this $_})
$rebootlist.Add_Click({rebootlist $this $_})
$gproc.Add_Click({gproc $this $_})
$softinstall.Add_Click({softinstall $this $_})
$about.Add_Click({about $this $_})
$comptxt.Focus()


$Window.ShowDialog()



# SIG # Begin signature block
# MIIaxAYJKoZIhvcNAQcCoIIatTCCGrECAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUp7HKBzenjXNtvtQzJVBS1mkP
# a+ygghTOMIIGzzCCBLegAwIBAgITdQAAAsSHVrBwezQH0QAAAAACxDANBgkqhkiG
# 9w0BAQsFADBYMRMwEQYKCZImiZPyLGQBGRYDY29tMRswGQYKCZImiZPyLGQBGRYL
# YWxtYW1sYWthdHYxEzARBgoJkiaJk/IsZAEZFgNpbXMxDzANBgNVBAMTBklNUy1D
# QTAeFw0yMTA2MDgxMjIzMTBaFw0yMjA2MDgxMjIzMTBaMH8xEzARBgoJkiaJk/Is
# ZAEZFgNjb20xGzAZBgoJkiaJk/IsZAEZFgthbG1hbWxha2F0djETMBEGCgmSJomT
# 8ixkARkWA2ltczEOMAwGA1UECxMFQWRtaW4xDjAMBgNVBAsTBVVzZXJzMRYwFAYD
# VQQDEw1BIEFobWFkIEhpbmRpMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
# AQEA1nKDnHhpkjhJv5nriMxwMr3S4EZOgTJ48fpGgz87uWJ9hlcoWRHhJI4/+xUa
# Tsp2u9TwT9qhoCj+VXLaGIZvmoM13ShtTaUFeeqdnWs4nJs/EAUTNqotpTi1s6ei
# ablP5XkocfGejKcs+99Bv0vk16+Ur2c9P9PMndvshUzyHRubmSmsLQqyMV9iCQOg
# IziH/M4LsA5gOLRHd2b0+kTZKFHCEXlqE5cknqeUNUKQ1s1W5TCE5vJ397jBFhPW
# UqxI8apujZi9S//lIpa3yMsEY5PmDGn/RcIlyOeuIpcEqiVX9DJJUNox3ub93cZU
# 7ftK2MdT15vLTNReD19Yc55xFQIDAQABo4ICaTCCAmUwJQYJKwYBBAGCNxQCBBge
# FgBDAG8AZABlAFMAaQBnAG4AaQBuAGcwEwYDVR0lBAwwCgYIKwYBBQUHAwMwDgYD
# VR0PAQH/BAQDAgeAMB0GA1UdDgQWBBRWyS+6wfybZPuM09RSfmLT78VO0jAfBgNV
# HSMEGDAWgBSxpFHfeEh1Kf/NdCYjnmQxI19gkDCB1wYDVR0fBIHPMIHMMIHJoIHG
# oIHDhoHAbGRhcDovLy9DTj1JTVMtQ0EsQ049VlNWLUJFUy1BRENTMDFILENOPUNE
# UCxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25m
# aWd1cmF0aW9uLERDPWltcyxEQz1hbG1hbWxha2F0dixEQz1jb20/Y2VydGlmaWNh
# dGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlv
# blBvaW50MIHDBggrBgEFBQcBAQSBtjCBszCBsAYIKwYBBQUHMAKGgaNsZGFwOi8v
# L0NOPUlNUy1DQSxDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2VydmljZXMsQ049
# U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1pbXMsREM9YWxtYW1sYWthdHYs
# REM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0
# aW9uQXV0aG9yaXR5MDcGA1UdEQQwMC6gLAYKKwYBBAGCNxQCA6AeDBxhLmFoaW5k
# aUBpbXMuYWxtYW1sYWthdHYuY29tMA0GCSqGSIb3DQEBCwUAA4ICAQAN6XTX6/DA
# 8rTUMgUNcHfN9jjzBNNhUOBsF1zaIYcbfKj50iZ0cfx7OHp9myftbM+VgveWalqS
# bGnU61AoITBXhMtzZjPz3sMfknvf0fRzGYI/boms9T62csOOtPb4Jbh7tiFgJodV
# i/MfekT0BafRXfuHzpIaS6R5jhNHJJUeFkZWavTwUFmLEOa22ejtNXtehT8r1cQU
# zDvaB0SBommx2ZHGzYbOy1n2cEm1bAudlm7qppzYua8ZhpTl5vAGRiqd0cuWziqs
# cxp5ZwHOYa//DsYCqADy4AAuYv5ljVCxDponAIm6EtMntikW3xihQh8WZxPh9so0
# 1FAid8doNpWJhXnntKEGcyFFQkikeaxWZLrs7nA1tlHfE577LH+dmnHhZGh3LpOF
# B9eUB5mTblKKh4H/vZeGywAUbbaD2d/OnDd2M6gt4wFf3ZlOkTuIkjrJuNyct8aR
# bPESeK4I7i3rHN6wWo1NsCInyTvAYr+OAO15dJg1gvgL08hUhdEIjlXcAoGCvRxm
# xGn+Vqum+VYcf08xD1N/W5b+yyvFOJhCPGrNIlAI2BDD7bu9RsdDo+J1tfgZOSVw
# ij2EZPnZOrKMwG5k9shskGhVB2/oHwgot4WLc1CE2OKYhjpEQIPGwkzGhCoXgvhI
# 83kF+d7wAqaGQ/zjucVnpDmp4NoNZVqXUDCCBuwwggTUoAMCAQICEDAPb6zdZph0
# fKlGNqd4LbkwDQYJKoZIhvcNAQEMBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtKZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhl
# IFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYDVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRp
# ZmljYXRpb24gQXV0aG9yaXR5MB4XDTE5MDUwMjAwMDAwMFoXDTM4MDExODIzNTk1
# OVowfTELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQ
# MA4GA1UEBxMHU2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMSUwIwYD
# VQQDExxTZWN0aWdvIFJTQSBUaW1lIFN0YW1waW5nIENBMIICIjANBgkqhkiG9w0B
# AQEFAAOCAg8AMIICCgKCAgEAyBsBr9ksfoiZfQGYPyCQvZyAIVSTuc+gPlPvs1rA
# dtYaBKXOR4O168TMSTTL80VlufmnZBYmCfvVMlJ5LsljwhObtoY/AQWSZm8hq9Vx
# EHmH9EYqzcRaydvXXUlNclYP3MnjU5g6Kh78zlhJ07/zObu5pCNCrNAVw3+eolzX
# OPEWsnDTo8Tfs8VyrC4Kd/wNlFK3/B+VcyQ9ASi8Dw1Ps5EBjm6dJ3VV0Rc7NCF7
# lwGUr3+Az9ERCleEyX9W4L1GnIK+lJ2/tCCwYH64TfUNP9vQ6oWMilZx0S2UTMiM
# PNMUopy9Jv/TUyDHYGmbWApU9AXn/TGs+ciFF8e4KRmkKS9G493bkV+fPzY+DjBn
# K0a3Na+WvtpMYMyou58NFNQYxDCYdIIhz2JWtSFzEh79qsoIWId3pBXrGVX/0DlU
# LSbuRRo6b83XhPDX8CjFT2SDAtT74t7xvAIo9G3aJ4oG0paH3uhrDvBbfel2aZMg
# HEqXLHcZK5OVmJyXnuuOwXhWxkQl3wYSmgYtnwNe/YOiU2fKsfqNoWTJiJJZy6hG
# wMnypv99V9sSdvqKQSTUG/xypRSi1K1DHKRJi0E5FAMeKfobpSKupcNNgtCN2mu3
# 2/cYQFdz8HGj+0p9RTbB942C+rnJDVOAffq2OVgy728YUInXT50zvRq1naHelUF6
# p4MCAwEAAaOCAVowggFWMB8GA1UdIwQYMBaAFFN5v1qqK0rPVIDh2JvAnfKyA2bL
# MB0GA1UdDgQWBBQaofhhGSAPw0F3RSiO0TVfBhIEVTAOBgNVHQ8BAf8EBAMCAYYw
# EgYDVR0TAQH/BAgwBgEB/wIBADATBgNVHSUEDDAKBggrBgEFBQcDCDARBgNVHSAE
# CjAIMAYGBFUdIAAwUAYDVR0fBEkwRzBFoEOgQYY/aHR0cDovL2NybC51c2VydHJ1
# c3QuY29tL1VTRVJUcnVzdFJTQUNlcnRpZmljYXRpb25BdXRob3JpdHkuY3JsMHYG
# CCsGAQUFBwEBBGowaDA/BggrBgEFBQcwAoYzaHR0cDovL2NydC51c2VydHJ1c3Qu
# Y29tL1VTRVJUcnVzdFJTQUFkZFRydXN0Q0EuY3J0MCUGCCsGAQUFBzABhhlodHRw
# Oi8vb2NzcC51c2VydHJ1c3QuY29tMA0GCSqGSIb3DQEBDAUAA4ICAQBtVIGlM10W
# 4bVTgZF13wN6MgstJYQRsrDbKn0qBfW8Oyf0WqC5SVmQKWxhy7VQ2+J9+Z8A70DD
# rdPi5Fb5WEHP8ULlEH3/sHQfj8ZcCfkzXuqgHCZYXPO0EQ/V1cPivNVYeL9IduFE
# Z22PsEMQD43k+ThivxMBxYWjTMXMslMwlaTW9JZWCLjNXH8Blr5yUmo7Qjd8Fng5
# k5OUm7Hcsm1BbWfNyW+QPX9FcsEbI9bCVYRm5LPFZgb289ZLXq2jK0KKIZL+qG9a
# JXBigXNjXqC72NzXStM9r4MGOBIdJIct5PwC1j53BLwENrXnd8ucLo0jGLmjwkcd
# 8F3WoXNXBWiap8k3ZR2+6rzYQoNDBaWLpgn/0aGUpk6qPQn1BWy30mRa2Coiwkud
# 8TleTN5IPZs0lpoJX47997FSkc4/ifYcobWpdR9xv1tDXWU9UIFuq/DQ0/yysx+2
# mZYm9Dx5i1xkzM3uJ5rloMAMcofBbk1a0x7q8ETmMm8c6xdOlMN4ZSA7D0GqH+mh
# QZ3+sbigZSo04N6o+TzmwTC7wKBjLPxcFgCo0MR/6hGdHgbGpm0yXbQ4CStJB6r9
# 7DDa8acvz7f9+tCjhNknnvsBZne5VhDhIG7GrrH5trrINV0zdo7xfCAMKneutaIC
# hrop7rRaALGMq+P5CslUXdS5anSevUiumDCCBwcwggTvoAMCAQICEQCMd6AAj/TR
# sMY9nzpIg41rMA0GCSqGSIb3DQEBDAUAMH0xCzAJBgNVBAYTAkdCMRswGQYDVQQI
# ExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGDAWBgNVBAoT
# D1NlY3RpZ28gTGltaXRlZDElMCMGA1UEAxMcU2VjdGlnbyBSU0EgVGltZSBTdGFt
# cGluZyBDQTAeFw0yMDEwMjMwMDAwMDBaFw0zMjAxMjIyMzU5NTlaMIGEMQswCQYD
# VQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdT
# YWxmb3JkMRgwFgYDVQQKEw9TZWN0aWdvIExpbWl0ZWQxLDAqBgNVBAMMI1NlY3Rp
# Z28gUlNBIFRpbWUgU3RhbXBpbmcgU2lnbmVyICMyMIICIjANBgkqhkiG9w0BAQEF
# AAOCAg8AMIICCgKCAgEAkYdLLIvB8R6gntMHxgHKUrC+eXldCWYGLS81fbvA+yfa
# QmpZGyVM6u9A1pp+MshqgX20XD5WEIE1OiI2jPv4ICmHrHTQG2K8P2SHAl/vxYDv
# BhzcXk6Th7ia3kwHToXMcMUNe+zD2eOX6csZ21ZFbO5LIGzJPmz98JvxKPiRmar8
# WsGagiA6t+/n1rglScI5G4eBOcvDtzrNn1AEHxqZpIACTR0FqFXTbVKAg+ZuSKVf
# wYlYYIrv8azNh2MYjnTLhIdBaWOBvPYfqnzXwUHOrat2iyCA1C2VB43H9QsXHprl
# 1plpUcdOpp0pb+d5kw0yY1OuzMYpiiDBYMbyAizE+cgi3/kngqGDUcK8yYIaIYSy
# l7zUr0QcloIilSqFVK7x/T5JdHT8jq4/pXL0w1oBqlCli3aVG2br79rflC7ZGutM
# J31MBff4I13EV8gmBXr8gSNfVAk4KmLVqsrf7c9Tqx/2RJzVmVnFVmRb945SD2b8
# mD9EBhNkbunhFWBQpbHsz7joyQu+xYT33Qqd2rwpbD1W7b94Z7ZbyF4UHLmvhC13
# ovc5lTdvTn8cxjwE1jHFfu896FF+ca0kdBss3Pl8qu/CdkloYtWL9QPfvn2ODzZ1
# RluTdsSD7oK+LK43EvG8VsPkrUPDt2aWXpQy+qD2q4lQ+s6g8wiBGtFEp8z3uDEC
# AwEAAaOCAXgwggF0MB8GA1UdIwQYMBaAFBqh+GEZIA/DQXdFKI7RNV8GEgRVMB0G
# A1UdDgQWBBRpdTd7u501Qk6/V9Oa258B0a7e0DAOBgNVHQ8BAf8EBAMCBsAwDAYD
# VR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDBABgNVHSAEOTA3MDUG
# DCsGAQQBsjEBAgEDCDAlMCMGCCsGAQUFBwIBFhdodHRwczovL3NlY3RpZ28uY29t
# L0NQUzBEBgNVHR8EPTA7MDmgN6A1hjNodHRwOi8vY3JsLnNlY3RpZ28uY29tL1Nl
# Y3RpZ29SU0FUaW1lU3RhbXBpbmdDQS5jcmwwdAYIKwYBBQUHAQEEaDBmMD8GCCsG
# AQUFBzAChjNodHRwOi8vY3J0LnNlY3RpZ28uY29tL1NlY3RpZ29SU0FUaW1lU3Rh
# bXBpbmdDQS5jcnQwIwYIKwYBBQUHMAGGF2h0dHA6Ly9vY3NwLnNlY3RpZ28uY29t
# MA0GCSqGSIb3DQEBDAUAA4ICAQBKA3iQQjPsexqDCTYzmFW7nUAGMGtFavGUDhlQ
# /1slXjvhOcRbuumVkDc3vd/7ZOzlgreVzFdVcEtO9KiH3SKFple7uCEn1KAqMZSK
# ByGeir2nGvUCFctEUJmM7D66A3emggKQwi6Tqb4hNHVjueAtD88BN8uNovq4Wpqu
# oXqeE5MZVY8JkC7f6ogXFutp1uElvUUIl4DXVCAoT8p7s7Ol0gCwYDRlxOPFw6Xk
# uoWqemnbdaQ+eWiaNotDrjbUYXI8DoViDaBecNtkLwHHwaHHJJSjsjxusl6i0Pqo
# 0bglHBbmwNV/aBrEZSk1Ki2IvOqudNaC58CIuOFPePBcysBAXMKf1TIcLNo8rDb3
# BlKao0AwF7ApFpnJqreISffoCyUztT9tr59fClbfErHD7s6Rd+ggE+lcJMfqRAtK
# 5hOEHE3rDbW4hqAwp4uhn7QszMAWI8mR5UIDS4DO5E3mKgE+wF6FoCShF0DV29vn
# mBCk8eoZG4BU+keJ6JiBqXXADt/QaJR5oaCejra3QmbL2dlrL03Y3j4yHiDk7JxN
# Qo2dxzOZgjdE1CYpJkCOeC+57vov8fGP/lC4eN0Ult4cDnCwKoVqsWxo6SrkECtu
# If3TfJ035CoG1sPx12jjTwd5gQgT/rJkXumxPObQeCOyCSziJmK/O6mXUczHRDKB
# sq/P3zGCBWAwggVcAgEBMG8wWDETMBEGCgmSJomT8ixkARkWA2NvbTEbMBkGCgmS
# JomT8ixkARkWC2FsbWFtbGFrYXR2MRMwEQYKCZImiZPyLGQBGRYDaW1zMQ8wDQYD
# VQQDEwZJTVMtQ0ECE3UAAALEh1awcHs0B9EAAAAAAsQwCQYFKw4DAhoFAKB4MBgG
# CisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcC
# AQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYE
# FHh7B7A3bsV78qNf+gl+zPeZefOXMA0GCSqGSIb3DQEBAQUABIIBAGn/UKiyIJGr
# D7cQRp2bqeE9BKSUVShUmg6ZLRoXj9j6aWO/MPBcasWN1O5raF/2IUgX85lkNbCa
# ezxwOZDCjBR6q4wE9z69Y1w9wjmNBOOm1YE73RZ8+7pXyDVf+8M0RzueQdKB21No
# 5cVoSmgmICniGDwt1eaWKCWTL67S2hOpWs1OG87GTrDOxAXRDgl0LKEixyoqLBgz
# xhyfOdmj4qKg165Nx8JcvXcI1fIqzHP6/6tPzRH/1RZLAlrj9N0hlASMNoNSXTcf
# Wtz4tcBbiN0xE3lpzwP9aZrKkibz88OequJfOr9mlrWtTgOn/DFOMxWfjnQtjvzm
# QLpzXEiQ3QShggNMMIIDSAYJKoZIhvcNAQkGMYIDOTCCAzUCAQEwgZIwfTELMAkG
# A1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMH
# U2FsZm9yZDEYMBYGA1UEChMPU2VjdGlnbyBMaW1pdGVkMSUwIwYDVQQDExxTZWN0
# aWdvIFJTQSBUaW1lIFN0YW1waW5nIENBAhEAjHegAI/00bDGPZ86SIONazANBglg
# hkgBZQMEAgIFAKB5MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcN
# AQkFMQ8XDTIxMDYxMDE0MTYxNlowPwYJKoZIhvcNAQkEMTIEMEOAA+HoO4r0Zld9
# ytz8NyjNWiIh3MvIyRmq04zdfPYjn/beI8XKGE3jb2Y7WZHl0jANBgkqhkiG9w0B
# AQEFAASCAgAkiIdeqtG8QlOJcS9xXMAA6Bhx4i3zFZ54kaM7SMZu303wyQGF/j1I
# bralMrBjB9JWMOPD+LYNd+xl3NIk16vrjVVjR8Dro+fuYIWZBzVcOj7CHvNHvmm3
# E2ieGNCsChsaDpPo4jIau7RUTeNuNkGded2+zeTkymDHciWb5PLtmLiXS+1rA+Jf
# adz1p85OKWgFPSSphrqlfCamf4jLP4c1ZMbJSb9q5KG7NgtIea+RO9rXUWcfkrP8
# NUuWmopnJilmnbBlWCbRf1NiJCznI6WUPxNat5VDsjzU1950LUTRjJJ/4AlKQgSC
# N3rZSYmqIh85v4r7qYGTK6FFXUpEZ9ye9KQ/UyEPzKW5iApVRJJ9FaBYGal7iW/H
# CYa9mR7WOShQn2Oosu6btsy1XbmDWkxC7LuU6/zIJCpacuFuVxQrqUkLk4+FfAzF
# aizGBzYJv4pqmX65J2jqhkWshqIX0UD1L4wjSLuTl4t1mHRaBljvabaHbip2XOza
# LWbx0yWcJX3OWN0SSsW4SFfTnjcVvvRWGPyxIz7znDY1U/0WQqHHHx/jicwAgOcJ
# TmXN9zfemh6t1TCvWuZzg5fi52iDfapkRoPB/r4qtk5eMUWEe35mPl5twAO35+tT
# AfG4oPOAYeY66dE9dJoSjD/c3mLIaECtYWkh2vK7Kts0irfkZvdIoA==
# SIG # End signature block
