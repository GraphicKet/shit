function test()
    local DermaPanel = vgui.Create( "DFrame" )
    DermaPanel:SetSize( 2000, 1500 )
    DermaPanel:SetTitle( "New server" )
    DermaPanel:SetVisible( true )
    DermaPanel:SetDraggable(false)
    DermaPanel:ShowCloseButton(false)
    DermaPanel:MakePopup()
    DermaPanel:Center()
    DermaPanel.Paint = function()
       draw.RoundedBox(0, 0, 0, DermaPanel:GetWide(), DermaPanel:GetTall(), Color(65, 120, 65))
    end
     
    local DButton = vgui.Create( "DButton", Dermapanel )
    DButton:SetPos( ScrW() / 2, ScrH() / 2 )
    DButton:SetText( " " )
    DButton:SetSize( 120, 60 )
    DButton.DoClick = function()
            LocalPlayer():ConCommand("connect 5.231.196.72:27015")
    end
    DButton.Paint = function()
       draw.RoundedBox(0, 0, 0, DButton:GetWide(), DButton:GetTall(), Color(70, 120, 70))
       draw.SimpleText("We have moved to a new ip. Press this button to connect.", "HUDNumber5", DButton:GetWide() / 2, 25, color_white, TEXT_ALIGN_CENTER )
    end
end
net.Receive("joinnewip", test)
