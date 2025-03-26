object ViewLogin: TViewLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'ViewLogin'
  ClientHeight = 241
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlHeader: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 459
    Height = 41
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 14869189
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -668
    ExplicitTop = 0
    ExplicitWidth = 1118
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
        Left = 8
        Top = 5
        Width = 34
        Height = 31
        Margins.Left = 8
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
          001E08060000003B30AEA2000000097048597300000B1300000B1301009A9C18
          000004104944415478DAED955948945114C7FD1CA7192BA785884AA98768B385
          B6878AA26CA1858C8A26C22473D72903292A28041F8C16CA16726C1C150B89B2
          823629C81668A7052B2A028B08A68CCA94725C66C67EA73E651A67C66C8A5EBA
          70BE73BF73EF3DFFB3DC73AE12F48F86F21FD8DF48494919EF72B9D6331D05BD
          669E5B54547405F954E6EB908D805EB4B4B4EC282C2CBCFB4780939393A7A0B0
          82A9DE4D8CA8E5247CB1A228216E7227F285805F0818382929E9126C160AB736
          3636EE0D0D0D9D85978701EC81BC09320507071F45B69C7991786EB55A87FF09
          E01AF104657DDC6463C510C84CC82BDCE40F60E330A4A7C562A90D14F8390083
          F17028E0AF7CED8B8B8BEBA9D56AAB98EA6A6B6B7B9495953903024E4848D880
          07BB983E6B6E6E9E595252F2CE738FC964EA4E1ACA316E1A461E20C7EB020EB5
          D168D4180C8653285D84D2E70E8723CA1D1CC3C25813D0A9ACDFD1E974B3F3F2
          F2BE040C2C83B2D172798E335D8C72299B28726B8B8D8DEDA6D7EBCF219F01DD
          27D473CC66738D3F5D9D6E2002EE743A8FE1D912018747C32DF0E9BF0AFA5BC0
          9E9E43727934D02DBBDD3EAFB4B4B4EE5774FC76CBF4F0FC664343C37C5FA0EC
          1D2C9CD2AA0A18B8151CD0E980DF4469BDE73A176E186B56B970AAA83C2C2C6C
          596E6EAEDD2B30B5D88F5C65A2743EBF43396867FE92F943E6C23F41AE36EB15
          E5634848C865F7DC52F72B3993CF5A777E1F41D25223A12DF4816DED803920A1
          2B565BA10C2999AE90A183007C22EF7331E02929D8CFF9C4A01F3D3B3B222222
          C766B34D627E033A417D1B7F024E4C4C8C8595A85EECA351EC6CAD550C8A808D
          840672B8976A4CEB833188FD2BE04FD47F79BD6CC8620A0A0AAE4963696A6A3A
          866C81B4588073DA80C987F4D6DB2CB05F31128ED39D48B782D11F392706C993
          759154ADCACFCF7FAF1A7C061AA7369EC938F3595173AA2744F7383892451316
          997D01A0280B3EC0433E048AE2AC039E456877646767BB706622CE9C56F75760
          8CB1F51E286A1837C1B643E7F1345A8CF6869A9E9EDE8B905563A0D6730DD02A
          8D46B39ADB7D5D4DDB52D811F64A4A2C18B096B5E6360F54E0231C5CCAC131EE
          B5E66DA4A6A60EE1120DF200AD090F0FAFC44B870ABA199603A838B01167F6B4
          0B9D7C32333343EBEAEA0C84B8BA13796D377848BAF0901C027035C6C8031183
          CEB35E73D69132092F1762048A1A09D757446FBD3DEEF1F1F19144EC30D309D0
          1B4A2ABAB8B8B8D2975E9FC0191919BAFAFAFADD589FCC6F178FE5AF1822E5F2
          1EFE21E84759CDE05F07BF8A813118F7D69F433E81C993556D02D528BFC25C1E
          82DE507F4872DCCD7DBFE4199645680F06F9B89C1D02D3834773812A51F60E9A
          286FAEB714F030F4A70CBF1BC06D7F4C7D367404E81798FA8B225C1580AEF153
          D3010D9FA14E4B4BEB2B9DE76F80FA05FEDBE31BFB12103D1CA500B000000000
          49454E44AE426082}
        Stretch = True
        ExplicitLeft = 5
      end
      object lblLogo: TLabel
        Left = 51
        Top = 15
        Width = 30
        Height = 13
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlUsuarioLogado: TPanel
      Left = 253
      Top = 0
      Width = 206
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 260
      ExplicitTop = -6
      object btnClose: TSpeedButton
        Left = 183
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
  object pnlContent: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 46
    Width = 459
    Height = 192
    Margins.Top = 2
    Align = alClient
    BevelOuter = bvNone
    Color = 14934983
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 34
    ExplicitTop = 48
    ExplicitWidth = 462
    ExplicitHeight = 175
    object lblUsuario: TLabel
      Left = 108
      Top = 23
      Width = 101
      Height = 13
      Caption = 'Digite seu usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSenha: TLabel
      Left = 108
      Top = 73
      Width = 93
      Height = 13
      Caption = 'Digite sua senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUsuario: TEdit
      Left = 108
      Top = 42
      Width = 256
      Height = 23
      TabOrder = 0
    end
    object edtSenha: TEdit
      Left = 108
      Top = 92
      Width = 256
      Height = 23
      TabOrder = 1
    end
    object pnlBtnEntrar: TPanel
      Left = 235
      Top = 134
      Width = 129
      Height = 34
      BevelOuter = bvNone
      Color = 13816485
      ParentBackground = False
      TabOrder = 2
      object btnEntrar: TSpeedButton
        Left = 0
        Top = 0
        Width = 129
        Height = 34
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Entrar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnEntrarClick
        ExplicitLeft = 40
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
end
