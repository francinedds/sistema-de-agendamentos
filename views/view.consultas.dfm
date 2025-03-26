object ViewConsultas: TViewConsultas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'ViewConsultas'
  ClientHeight = 720
  ClientWidth = 1116
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnlHeader: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1112
    Height = 41
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 14869189
    ParentBackground = False
    TabOrder = 0
    object pnlLogo: TPanel
      Left = 0
      Top = 0
      Width = 193
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object imgLogo: TImage
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 35
        Height = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
          0064080600000070E29554000000097048597300000B1300000B1301009A9C18
          000002F54944415478DAED9DB16ED350148671940C0815157646C45A3177451D
          58100BBC421427916064472C28439C870009B1417790608297800D8686D2D1E6
          7433496ED2728F7DFF84EF93AC9BDA393EE79E4F3776DD56CDAE34C06834BA5D
          55D50BDBEE6559B6573F66FB7ED9F0BED7EB3D994C26DF9BC8BFCDF5674D4CA6
          2CCBCF36919BEBDE6713FB61933A509392BA7E7721C3E1F08D0D0F2FF8F657D3
          E9F4B1770DDB5CBFBB903CCFE78BCB7C0D2736A17DEF1AB6B9FE26564855FFDA
          0ACE2E733C35A9EB478858FD0811AB1F2162F5AF3CD96030B8DBE9749EDBADDD
          A15DE0AEC524D8342175BCEBB79EFEB6E1838DCF66B3D997C5E34B42CE659884
          8FB65D559C50DB3458FF996D8776FEAFF59D4B422CE1B10D475B30A15668B27E
          5B25EF8AA2B85FDFB724C4EEC34F633FA6DA9A501B345CFFA99DFFAFEF7956AD
          10D78621E472E74748E2FA1122563F42C4EA6F5D08AC07216220440C84888110
          3110220642C440881808110321626C140269418818081103216270514F0C7759
          6220440C848881103110220642C4408818081103216220440C848891FC574943
          FCEB9F8AA58EF3EE0F4222E3BCFB8390C838EFFE202432CEBB3F08898CF3EE0F
          4222E3BCFB8390C838EFFE202432CEBB3F08898CF3EE0F4222E3BCFBC3A393C4
          20440C848881103176FEA2DE769DDE791192285F282F4212E50BE54548A27CA1
          BC0849942F94172189F285F2222451BE505E8424CA17CA8B9044F94279119228
          5F282F8F4E1283103110220642C4D8F98BFAB6DC4484F2222432CEBB3F08898C
          F3EE0F4222E3BCFB8390C838EFFE202432CEBB3F08898CF3EE0F4222E3BCFB83
          90C838EFFE202432CEBB3F3C3A490C42C4408818081103216220440C84888110
          3110220642C4408818081163A3903CCFE75996ED5DFC9410C18909D9AFEF58B5
          42DEDAF02075A5FF035555BD2E8AE2517DDF9290F1787CA72CCB4FF6F246EA82
          779C9FB61DD80AF956DFB9F26700FD7EFF56B7DB7D69068FECE3EB7AEACA7709
          EBE9DC8663EBEBD34519E7F02F8FC44088180811032162FC012B63FA923AEC25
          080000000049454E44AE426082}
        Stretch = True
      end
      object lblLogo: TLabel
        Left = 49
        Top = 15
        Width = 55
        Height = 13
        Caption = 'Consultas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlUsuarioLogado: TPanel
      Left = 906
      Top = 0
      Width = 206
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnClose: TSpeedButton
        Left = 182
        Top = 0
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Caption = #10006
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnCloseClick
      end
    end
  end
  object pnlFooter: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 691
    Width = 1112
    Height = 27
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = 14869446
    ParentBackground = False
    TabOrder = 1
  end
  object pnlContent: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 45
    Width = 1112
    Height = 646
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object lblNomeCompleto: TLabel
      Left = 8
      Top = 8
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid: TDBGrid
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 1092
      Height = 626
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = PopupMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clGrayText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CON_CODIGO'
          Title.Caption = 'C'#211'DIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_CLIENTE'
          Title.Caption = 'CLIENTE'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_PROFISSIONAL'
          Title.Caption = 'PROFISSIONAL'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_DATA'
          Title.Caption = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_HORA'
          Title.Caption = 'HORA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_TELEFONE'
          Title.Caption = 'TELEFONE'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_EMAIL'
          Title.Caption = 'E-MAIL'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CON_OBSERVACAO'
          Title.Caption = 'OBSERVA'#199#195'O'
          Width = 200
          Visible = True
        end>
    end
  end
  object DataSource: TDataSource
    DataSet = ServiceConexao.FDQuery_Consultas
    Left = 1050
    Top = 109
  end
  object PopupMenu: TPopupMenu
    Left = 1050
    Top = 173
    object Deletar: TMenuItem
      Caption = 'Deletar'
      OnClick = DeletarClick
    end
  end
end
