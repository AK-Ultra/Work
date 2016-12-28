#Cyber Success Tool
#Written by: Allen Keef

#Copy Visual Studio XAML code and paste it between the @" "@
$inputXML = @"
<Window x:Class="CST.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:CST"
        mc:Ignorable="d"
        Title="CST" Height="300" Width="750" HorizontalAlignment="Center" VerticalAlignment="Center">
    <Grid>
        <Image x:Name="Image" Margin="10,10,0,0" HorizontalAlignment="Left" Height="168.667" VerticalAlignment="Top" Width="168" Source="\\bigshare.colorado.edu\Temp-Files\Public\CST\Resources\CyberSuccess.jpg"/>
        <Rectangle Fill="#FFEDEDED" Height="66" Margin="187,10,10,0" Stroke="Black" VerticalAlignment="Top"/>
        <Rectangle x:Name="Rectagle_Bottom" Fill="#FFEDEDED" Height="65" Margin="10,186,10,0" Stroke="Black" VerticalAlignment="Top"/>
        <TextBlock x:Name="Title" HorizontalAlignment="Left" Margin="192,22,0,0" TextWrapping="Wrap" Text="CYBER SUCCESS TOOL" VerticalAlignment="Top" FontSize="40" FontWeight="Bold" FontFamily="OCR A Std" Width="546" Height="43">
            <TextBlock.Effect>
                <DropShadowEffect Color="#FF008E34" Direction="235" Opacity="0.85" ShadowDepth="3" BlurRadius="3"/>
            </TextBlock.Effect>
        </TextBlock>

        <!-- Start Text Box -->
        <TextBox x:Name="textBox_PCStart" Margin="296,81.001,368,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" ToolTip="1-99" MaxLength="4" MaxLines="1" TabIndex="1"/>
        <TextBlock IsHitTestVisible="False" Text=" Start" Margin="296,81,368,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray" TextAlignment="Left">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding Text, ElementName=textBox_PCStart}" Value="">
                            <Setter Property="Visibility" Value="Visible"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <!-- End Text Box -->
        <TextBox x:Name="textBox_PCEnd" Margin="543.333,81,127,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" TextAlignment="Left" ToolTip="1-99" MaxLength="4" MaxLines="1" TabIndex="2"/>
        <TextBlock IsHitTestVisible="False" Text=" End" Margin="543.333,81,127,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray" TextAlignment="Left">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding Text, ElementName=textBox_PCEnd}" Value="">
                            <Setter Property="Visibility" Value="Visible"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <!-- Lab Name Text Box -->
        <TextBox x:Name="textBox_LabName" Margin="296,115,127,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" TabIndex="3"/>
        <TextBlock IsHitTestVisible="False" Text=" Example: MATHLIBR" Margin="296,115,127,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <DataTrigger Binding="{Binding Text, ElementName=textBox_LabName}" Value="">
                            <Setter Property="Visibility" Value="Visible"/>
                        </DataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <!-- Source/Path Text Box -->
        <TextBox x:Name="textBox_SourcePath" Margin="131.667,186.334,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" TabIndex="5"/>
        <TextBlock x:Name="textBlock_SourcePathCopy" IsHitTestVisible="False" Text=" Example: \\bigshare.colorado.edu\Temp-Files\test.txt" Margin="131.667,186.334,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_SourcePath}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Copy File" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <TextBlock x:Name="textBlock_SourcePathDeleteMove" IsHitTestVisible="False" Text=" Example: C:\Users\Public\Desktop\Test.txt" Margin="131.667,186.334,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_SourcePath}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Move File" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>

                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_SourcePath}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Delete File" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <TextBlock x:Name="textBlock_SourcePathAppv" IsHitTestVisible="False" Text=" Example: 7-Zip 9.20" Margin="131.667,186.334,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_SourcePath}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Cache AppV Package" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>

                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_SourcePath}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Remove AppV Package" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <!-- Destination Text Box -->
        <TextBox x:Name="textBox_Destination" Height="29" Margin="131.667,220.667,10,0" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="18" TabIndex="6"/>
        <TextBlock x:Name="textBlock_DestinationCopy" IsHitTestVisible="False" Text=" Example: Users\Public\Desktop (LEAVE OUT DRIVE LETTER)" Margin="131.667,220.667,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_Destination}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Copy File" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <TextBlock x:Name="textBlock_DestinationMove" IsHitTestVisible="False" Text=" Example: C:\Users\Public\Desktop\Department Applications" Margin="131.667,220.667,10,0" TextWrapping="Wrap" Height="29" VerticalAlignment="Top" FontSize="18" Foreground="DarkGray">
            <TextBlock.Style>
                <Style TargetType="{x:Type TextBlock}">
                    <Setter Property="Visibility" Value="Collapsed"/>
                    <Style.Triggers>
                        <MultiDataTrigger>
                            <MultiDataTrigger.Conditions>
                                <Condition Binding="{Binding Text, ElementName=textBox_Destination}" Value="" />
                                <Condition Binding="{Binding Text, ElementName=dropDown_Command}" Value="Move File" />
                            </MultiDataTrigger.Conditions>
                            <Setter Property="Visibility" Value="Visible"/>
                        </MultiDataTrigger>
                    </Style.Triggers>
                </Style>
            </TextBlock.Style>
        </TextBlock>

        <ComboBox x:Name="dropDown_Command" Margin="296,149,127,82" FontSize="18" VerticalAlignment="Top" TabIndex="4" Height="29"/>
        <TextBlock x:Name="textBlock_PCRange" HorizontalAlignment="Right" Margin="0,80.668,203.667,0" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="18" FontWeight="Bold" TextAlignment="Center" Height="29" Width="159.333" Text="&lt;&lt; PC Range &gt;&gt;"/>
        <TextBlock x:Name="textBlock_LabName" Margin="190,115,0,0" TextWrapping="Wrap" Text="Lab Name:" HorizontalAlignment="Left" Width="104" FontWeight="Bold" FontSize="18" Height="29" VerticalAlignment="Top"/>
        <TextBlock x:Name="textBlock_Command" Margin="190,149,448,0" Height="29" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="18" FontWeight="Bold" Text="Command:"/>
        <TextBlock x:Name="textBlock_Name" Height="29" Margin="10,186.334,620,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="117" FontSize="18" FontWeight="Bold" Text="Name:" IsEnabled="False"/>
        <TextBlock x:Name="textBlock_SourcePath"  Height="29" Margin="10,186.334,620,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="116.667" FontSize="18" FontWeight="Bold" Text="Source/Path:"/>
        <TextBlock x:Name="textBlock_Destination" Height="29"  Margin="10,220.667,620,20" TextWrapping="Wrap" VerticalAlignment="Top" Width="116.667" FontSize="18" FontWeight="Bold" Text="Destination:"/>
        <TextBlock x:Name="Title_Bottom" HorizontalAlignment="Left" Margin="394,226,0,0" TextWrapping="Wrap" Text="Written by: Allen Keef" VerticalAlignment="Top" FontSize="20" FontWeight="Bold" FontFamily="OCR A Std" Width="327" Height="25" TextAlignment="Center"/>
        <Button x:Name="runButton" Content="Run" Margin="612,115,10,0" Width="110" FontWeight="Bold" VerticalAlignment="Top" FontSize="18" TabIndex="7" Height="63.667"/>
        <Button x:Name="button_browse" Content="Browse..." FontWeight="Bold" Margin="656,222,11,13"/>
    </Grid>
</Window>

"@       
 
$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N'  -replace '^<Win.*', '<Window'
 
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML
 
    $reader=(New-Object System.Xml.XmlNodeReader $xaml)
  try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."}
 
#===========================================================================
# Load XAML Objects In PowerShell
#===========================================================================
 
$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name)}
 
Function Get-FormVariables{
if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
get-variable WPF*
}
 
Get-FormVariables
 
#===========================================================================
# Actually make the objects work
#===========================================================================

#FUNCTION: Build Computer Array
Function Build-Array
{
    for($i = 0; $i -lt $Total; $i++){
        if ($WPFtextBox_LabName.text -eq 'ECCRNAC'){
            $Computers[$i] = $WPFtextBox_LabName.text+'-PC'+($Start+$i)
        }
        elseif ($WPFtextBox_LabName.text -ne 'ECCRNAC')
        {
            if ($i -lt 10 -And $Start -lt 10){
                $Computers[$i] = $WPFtextBox_LabName.text+'-'+0+($Start+$i)
            }
            else{
                $Computers[$i] = $WPFtextBox_LabName.text+'-'+($Start+$i)
            }
        }
    }
}

#FUNCTION: Browse Button Tree
Function Get-FileName($initialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "AppV (*.appv)| *.appv"
    $OpenFileDialog.ShowDialog() | Out-Null
    $WPFtextBox_SourcePath.text = $OpenFileDialog.filename
}

#FUNCTION: Check logged on lab computers
Function Logged-On
{  
    $session = query session /server:$Computer
    $activeflag = $false
    $numlines = 0

    foreach ($line in $session){
        $numlines++
        if ($line -like '*Active*'){
            Write-Host $Computer -ForegroundColor 'Red'
            Write-Host $line
            $activeflag = $true
        }
        if ($numlines -eq $session.length){
            if ($activeflag -eq $false){
                Write-Host $Computer -ForegroundColor 'Green'
            }
        }
    }
}

#FUNCTION: Run Command on Computer Array
Function Run-Command
{
	$Source = $WPFtextBox_SourcePath.Text
	$Dest = $WPFtextBox_Destination.Text
	$Path = $WPFtextBox_SourcePath.Text

	while ($Path.Indexof("\", $index) -ne -1){$index=($Path.IndexOf("\", $index) + 1)}
	$Name = ($Path.substring($index)).TrimEnd(".appv")

    Foreach ($Computer in $Computers) 
    {
        if ($WPFdropDown_Command.text -eq 'Restart'){
        #Restart-Computer -ComputerName $Computer
        Invoke-Command -ComputerName $Computer -ScriptBlock {Shutdown -r -t 0} -AsJob
        }

        elseif ($WPFdropDown_Command.text -eq 'Check Logged-On'){
        Logged-On
        }

        elseif ($WPFdropDown_Command.text -eq 'Install SCCM'){
        invoke-command -computername $Computer -scriptblock {cmd.exe /C C:\ITS\SCCM2012\ccmsetup.exe /mp:ucbsccm-ps1.colorado.edu SMSSITECODE=PS1 FSP=ucbsccm-PS1.colorado.edu SMSMP=ucbsccm-PS1.colorado.edu SMSCACHESIZE=10240} -AsJob
        }

        elseif ($WPFdropDown_Command.text -eq 'Copy File'){
        Copy-Item -Path $Source -Destination "\\$($Computer)\c$\$($Dest)"
        #invoke-command -computername $Computer -scriptblock {Copy-Item -Path "$($args[0])" -Destination "$($args[1])" -force} -Argumentlist $Source,$Dest
        }

        elseif ($WPFdropDown_Command.text -eq 'Move File'){
        #Move-Item -Path "\\$($Computer)\c$\$($Source)" -Destination "\\$($Computer)\c$\$($Dest)"
        invoke-command -computername $Computer -scriptblock {Move-Item -Path "$($args[0])" -Destination "$($args[1])" -force} -Argumentlist $Source,$Dest
        }

        elseif ($WPFdropDown_Command.text -eq 'Delete File'){
        #Remove-Item -Path "\\$($Computer)\c$\$($Source)"
        invoke-command -computername $Computer -scriptblock {Remove-Item -Path "$($args[0])" -recurse} -Argumentlist $Source -AsJob
        }

        elseif ($WPFdropDown_Command.text -eq 'Add AppV Package'){
        invoke-command -computername $Computer -scriptblock {Add-appvclientpackage -Path $($args[0]) ; Publish-appvclientpackage -Name $($args[1]) -Global} -Argumentlist $Path,$Name -AsJob
	}

        elseif ($WPFdropDown_Command.text -eq 'Cache AppV Package'){
        invoke-command -computername $Computer -scriptblock {Mount-appvclientpackage -Name $args[0]} -Argumentlist $Source -AsJob
        }

        elseif ($WPFdropDown_Command.text -eq 'Remove AppV Package'){
        invoke-command -computername $Computer -scriptblock {Remove-AppvClientPackage -Name $Args[0]} -Argumentlist $Source -AsJob
        }

    }
}

# Look up WPFobject Methods
#$WPFTextBox_SourcePath | Get-member Add* -MemberType Method -force

#Hide UI Elements
$WPFtextBox_SourcePath.Visibility = 'Hidden'
$WPFtextBox_Destination.Visibility = 'Hidden'
$WPFtextBlock_SourcePath.Visibility = 'Hidden'
$WPFtextBlock_Destination.Visibility = 'Hidden'
$WPFtextBlock_Name.Visibility = 'Hidden'

#Drop-down Array
$DropDown = ("Restart","Check Logged-On","Install SCCM","Copy File","Move File","Delete File","Add AppV Package","Cache AppV Package","Remove AppV Package")

#Add each command from Drop-down Array to the dropDown_Command list
foreach ($command in $DropDown){
    $WPFdropDown_Command.Items.Add($command)
    }

#Drop-Down Features
$WPFdropDown_Command.add_LayoutUpdated({

    #Write-host "The drop down has changed selection to $($WPFdropDown_Command.Text)"
    $WPFbutton_browse.Visibility = 'Hidden'
    $WPFtextBox_SourcePath.Visibility = 'Hidden'
    $WPFtextBox_Destination.Visibility = 'Hidden'
    $WPFtextBlock_SourcePath.Visibility = 'Hidden'
    $WPFtextBlock_Destination.Visibility = 'Hidden'
    $WPFtextBlock_Name.Visibility = 'Hidden'
    $WPFTitle_Bottom.Visibility = 'Visible'
    $WPFRectagle_Bottom.Visibility = 'Visible'
     
    if ($WPFdropDown_Command.Text -eq 'Copy File'){
        $WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBox_Destination.Visibility = 'Visible'
        $WPFtextBlock_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_Destination.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
        }

    if ($WPFdropDown_Command.Text -eq 'Move File'){
        $WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBox_Destination.Visibility = 'Visible'
        $WPFtextBlock_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_Destination.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
		}
    elseif ($WPFdropDown_Command.Text -eq 'Delete File'){
        $WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_SourcePath.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
        }

    elseif ($WPFdropDown_Command.Text -eq 'Add AppV Package'){
        $WPFbutton_browse.Visibility = 'Visible'
	$WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_SourcePath.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
        }

    elseif ($WPFdropDown_Command.Text -eq 'Cache AppV Package'){
        $WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_Name.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
        }
    elseif ($WPFdropDown_Command.Text -eq 'Remove AppV Package'){
        $WPFtextBox_SourcePath.Visibility = 'Visible'
        $WPFtextBlock_Name.Visibility = 'Visible'
        $WPFTitle_Bottom.Visibility = 'Hidden'
        $WPFRectagle_Bottom.Visibility = 'Hidden'
        }
})

#Clear Start Text Box
$WPFtextBox_PCStart.Add_GotFocus({
    $WPFtextBox_PCStart.Clear()
})

#Clear End Text Box
$WPFtextBox_PCEnd.Add_GotFocus({
    $WPFtextBox_PCEnd.Clear()
})

#SelectAll Lab Name Text Box
$WPFtextBox_LabName.Add_GotFocus({
    $WPFtextBox_LabName.Clear()
})

#SelectAll Source/Path & Name Text Box
$WPFtextBox_SourcePath.Add_GotFocus({
    $WPFtextBox_SourcePath.Clear()
})

#SelectAll Destination Text Box
$WPFtextBox_Destination.Add_GotFocus({
    $WPFtextBox_Destination.Clear()
})

#Browse Button Features
$WPFbutton_Browse.Add_Click({$inputfile = Get-FileName "\\bigshare.colorado.edu\App-V\Version-5"})

#Run Button Features
$WPFrunButton.Add_Click({
    [int]$Start = $WPFtextBox_PCStart.text
    [int]$End = $WPFtextBox_PCEnd.text
    [int]$Total = ($End - $Start + 1)
    $Computers = New-Object string[] $Total
    Build-Array
    start-sleep -Milliseconds 840
    Run-Command
})

#===========================================================================
# Launch form
#===========================================================================
$Form.ShowDialog() | out-null