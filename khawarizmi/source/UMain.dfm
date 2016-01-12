object KhwMainForm: TKhwMainForm
  Left = -3
  Top = 37
  AutoScroll = False
  BiDiMode = bdLeftToRight
  Caption = 'Khawarizmi'
  ClientHeight = 692
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 764
    Top = 29
    Height = 467
    Align = alRight
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 496
    Width = 1024
    Height = 4
    Cursor = crVSplit
    Align = alBottom
  end
  object pnl_left: TPanel
    Left = 767
    Top = 29
    Width = 257
    Height = 467
    Align = alRight
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    object Tableau: TStringGrid
      Left = 1
      Top = 25
      Width = 207
      Height = 441
      Align = alClient
      ColCount = 4
      DefaultColWidth = 80
      FixedCols = 0
      RowCount = 200
      ScrollBars = ssVertical
      TabOrder = 2
      ColWidths = (
        48
        80
        75
        80)
    end
    object pcInfos: TPageControl
      Left = 208
      Top = 25
      Width = 48
      Height = 441
      ActivePage = tsTableSymboles
      Align = alRight
      Enabled = False
      MultiLine = True
      TabOrder = 1
      TabPosition = tpRight
      OnChange = pcInfosChange
      object tsTableSymboles: TTabSheet
        Caption = 'Table des symboles'
        ImageIndex = 3
      end
      object tsChaineRef: TTabSheet
        Caption = 'Cha'#238'ne de r'#233'f'#233'rence'
        ImageIndex = 2
      end
      object tsMosReserves: TTabSheet
        Caption = 'Mots r'#233'serv'#233's'
        ImageIndex = 4
      end
      object tsOperateurs: TTabSheet
        Caption = 'Op'#233'rateurs'
        ImageIndex = 5
      end
      object tsSperateurs: TTabSheet
        Caption = 'S'#233'parateurs'
        ImageIndex = 6
      end
      object tsIdentif: TTabSheet
        Caption = 'Identificateurs'
      end
      object tsVars: TTabSheet
        Caption = 'Variables'
        ImageIndex = 8
      end
      object tsFixes: TTabSheet
        Caption = 'Fixes'
        ImageIndex = 9
      end
      object tsContantes: TTabSheet
        Caption = 'Constantes'
        ImageIndex = 1
      end
    end
    object pnlInfos_: TPanel
      Left = 1
      Top = 1
      Width = 255
      Height = 24
      Align = alTop
      BevelOuter = bvLowered
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cbInfos: TComboBox
      Left = 0
      Top = 2
      Width = 225
      Height = 24
      Style = csDropDownList
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = cbInfosChange
      Items.Strings = (
        'Table des symboles'
        'Cha'#238'ne de r'#233'f'#233'rence'
        'Mots r'#233'serv'#233's'
        'Op'#233'rateurs'
        'S'#233'parateurs'
        'Identificateurs'
        'Variables'
        'Fixes'
        'Constantes'
        'Arbre syntaxique')
    end
  end
  object pnlEditeur: TPanel
    Left = 41
    Top = 29
    Width = 723
    Height = 467
    Align = alClient
    TabOrder = 0
    object pcEditeur: TPageControl
      Left = 1
      Top = 1
      Width = 721
      Height = 465
      ActivePage = tsEditeur
      Align = alClient
      TabOrder = 0
      object tsEditeur: TTabSheet
        Caption = 'anonyme.khw'
        object Editor: TRichEdit
          Left = 0
          Top = 0
          Width = 713
          Height = 437
          Align = alClient
          BiDiMode = bdRightToLeft
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = PopupMenu1
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
          OnChange = EditorChange
          OnKeyUp = EditorKeyUp
          OnSelectionChange = EditorSelectionChange
        end
      end
    end
  end
  object pnlBas: TPanel
    Left = 0
    Top = 500
    Width = 1024
    Height = 168
    Align = alBottom
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 1022
      Height = 166
      Align = alClient
      Caption = 'Messages'
      TabOrder = 0
      object pcMsg: TPageControl
        Left = 2
        Top = 15
        Width = 1018
        Height = 149
        ActivePage = tsExecution
        Align = alClient
        TabOrder = 0
        object tsExecution: TTabSheet
          Caption = 'Execution'
          ImageIndex = 1
          object Memo_Execution: TMemo
            Left = 0
            Top = 0
            Width = 1010
            Height = 121
            Align = alClient
            BiDiMode = bdRightToLeft
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object tsErreurs: TTabSheet
          Caption = 'Erreurs'
          object lb_Erreurs: TListBox
            Left = 0
            Top = 0
            Width = 1010
            Height = 121
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 16
            TabOrder = 0
            OnClick = lb_ErreursClick
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1024
    Height = 29
    ButtonHeight = 24
    ButtonWidth = 35
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 1
    object ToolButton5: TToolButton
      Left = 0
      Top = 2
      Width = 41
      Caption = 'ToolButton5'
      ImageIndex = 16
      Style = tbsDivider
    end
    object ToolButton2: TToolButton
      Left = 41
      Top = 2
      Action = ActionNew
    end
    object ToolButton1: TToolButton
      Left = 76
      Top = 2
      Action = ActionOpen
    end
    object ToolButton3: TToolButton
      Left = 111
      Top = 2
      Action = ActionSave
    end
    object ToolButton4: TToolButton
      Left = 146
      Top = 2
      Action = ActionSaveAs
    end
    object ToolButton6: TToolButton
      Left = 181
      Top = 2
      Action = ActionPrint
    end
    object ToolButton13: TToolButton
      Left = 216
      Top = 2
      Action = ActionSearch
    end
    object ToolButton9: TToolButton
      Left = 251
      Top = 2
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 89
      Style = tbsDivider
    end
    object ToolButton10: TToolButton
      Left = 259
      Top = 2
      Action = ActionCut
    end
    object ToolButton11: TToolButton
      Left = 294
      Top = 2
      Action = ActionCopy
    end
    object ToolButton12: TToolButton
      Left = 329
      Top = 2
      Action = ActionPaste
    end
    object ToolButton23: TToolButton
      Left = 364
      Top = 2
      Width = 8
      Caption = 'ToolButton23'
      ImageIndex = 12
      Style = tbsDivider
    end
    object ToolButton20: TToolButton
      Left = 372
      Top = 2
      Action = ActionCompile
    end
    object ToolButton21: TToolButton
      Left = 407
      Top = 2
      Action = ActionInfos
    end
    object ToolButton17: TToolButton
      Left = 442
      Top = 2
      Width = 8
      Caption = 'ToolButton17'
      ImageIndex = 17
      Style = tbsDivider
    end
    object ToolButton18: TToolButton
      Left = 450
      Top = 2
      Action = ActionShortCuts
    end
    object ToolButton16: TToolButton
      Left = 485
      Top = 2
      Action = ActionAbout
    end
    object ToolButton19: TToolButton
      Left = 520
      Top = 2
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 17
      Style = tbsDivider
    end
    object ToolButton8: TToolButton
      Left = 528
      Top = 2
      Action = ActionQuit
    end
    object ToolButton7: TToolButton
      Left = 563
      Top = 2
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 89
      Style = tbsSeparator
    end
    object cbASCII: TComboBox
      Left = 571
      Top = 2
      Width = 49
      Height = 24
      Style = csDropDownList
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnCloseUp = cbASCIICloseUp
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 668
    Width = 1024
    Height = 24
    Panels = <
      item
        Width = 120
      end
      item
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 41
    Height = 467
    Align = alLeft
    TabOrder = 5
    object sgCommon: TStringGrid
      Left = 1
      Top = 1
      Width = 39
      Height = 464
      ColCount = 1
      DefaultColWidth = 35
      DefaultRowHeight = 19
      FixedCols = 0
      RowCount = 23
      FixedRows = 0
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnClick = sgCommonClick
    end
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    Images = ImageList1
    ParentBiDiMode = False
    Left = 752
    object Fichier1: TMenuItem
      Caption = '&Fichier'
      object New1: TMenuItem
        Action = ActionNew
      end
      object Ouvrir1: TMenuItem
        Action = ActionOpen
      end
      object Enregister1: TMenuItem
        Action = ActionSave
      end
      object Enregistersous1: TMenuItem
        Action = ActionSaveAs
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Imprimer1: TMenuItem
        Action = ActionPrint
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Quitter1: TMenuItem
        Action = ActionQuit
      end
    end
    object N1Edition1: TMenuItem
      Caption = '&Edition'
      object Annuler1: TMenuItem
        Action = ActionCancel
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Couper1: TMenuItem
        Action = ActionCut
      end
      object Copier1: TMenuItem
        Action = ActionCopy
      end
      object Coller1: TMenuItem
        Action = ActionPaste
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object SelectionnerTout1: TMenuItem
        Action = ActionSelectAll
      end
      object Font1: TMenuItem
        Action = ActionFont
      end
      object Couper3: TMenuItem
        Action = ActionSearch
      end
      object N55: TMenuItem
        Caption = '-'
      end
      object Motsrservs2: TMenuItem
        Caption = '&Mots r'#233'serv'#233's'
        object N56: TMenuItem
          Caption = #1576#1585#1606#1575#1605#1580
          OnClick = N30Click
        end
        object N57: TMenuItem
          Caption = #1579#1575#1576#1578
          OnClick = N30Click
        end
        object N58: TMenuItem
          Caption = #1605#1578#1594#1610#1585
          OnClick = N30Click
        end
        object N59: TMenuItem
          Caption = '-'
        end
        object N61: TMenuItem
          Caption = #1605#1606#1591#1602#1610
          OnClick = N30Click
        end
        object N60: TMenuItem
          Caption = #1591#1576#1610#1593#1610
          OnClick = N30Click
        end
        object N62: TMenuItem
          Caption = #1589#1581#1610#1581
          OnClick = N30Click
        end
        object N63: TMenuItem
          Caption = #1587#1604#1587#1604#1577
          OnClick = N30Click
        end
        object N64: TMenuItem
          Caption = #1585#1605#1586
          OnClick = N30Click
        end
        object N65: TMenuItem
          Caption = '-'
        end
        object N66: TMenuItem
          Caption = #1576#1610#1606#1605#1575
          OnClick = N30Click
        end
        object N67: TMenuItem
          Caption = #1602#1605
          OnClick = N30Click
        end
        object N68: TMenuItem
          Caption = '-'
        end
        object N69: TMenuItem
          Caption = #1575#1584#1575
          OnClick = N30Click
        end
        object N70: TMenuItem
          Caption = #1601#1575#1606
          OnClick = N30Click
        end
        object N71: TMenuItem
          Caption = #1608#1575#1604#1575
          OnClick = N30Click
        end
        object N72: TMenuItem
          Caption = '-'
        end
        object N73: TMenuItem
          Caption = #1606#1593#1605
          OnClick = N30Click
        end
        object N74: TMenuItem
          Caption = #1604#1575
          OnClick = N30Click
        end
        object N75: TMenuItem
          Caption = '-'
        end
        object N76: TMenuItem
          Caption = #1575#1602#1585#1575
          OnClick = N30Click
        end
        object N77: TMenuItem
          Caption = #1575#1591#1576#1593
          OnClick = N30Click
        end
      end
      object Sparateurs2: TMenuItem
        Caption = 'S'#233'&parateurs'
        object N78: TMenuItem
          Caption = '}'
          OnClick = N30Click
        end
        object N79: TMenuItem
          Caption = '{'
          OnClick = N30Click
        end
        object N85: TMenuItem
          Caption = '-'
        end
        object N80: TMenuItem
          Caption = ')'
          OnClick = N30Click
        end
        object N81: TMenuItem
          Caption = '('
          OnClick = N30Click
        end
        object N86: TMenuItem
          Caption = '-'
        end
        object N82: TMenuItem
          Caption = '?'
          OnClick = N30Click
        end
        object N83: TMenuItem
          Caption = '?'
          OnClick = N30Click
        end
        object N84: TMenuItem
          Caption = '.'
          OnClick = N30Click
        end
      end
      object Oprateurs2: TMenuItem
        Caption = '&Op'#233'rateurs'
        object N87: TMenuItem
          Caption = ' + '
          OnClick = N30Click
        end
        object N88: TMenuItem
          Caption = ' - '
          OnClick = N30Click
        end
        object N89: TMenuItem
          Caption = ' * '
          OnClick = N30Click
        end
        object I1: TMenuItem
          Caption = ' '#247' '
          OnClick = N30Click
        end
        object N91: TMenuItem
          Caption = ' % '
          OnClick = N30Click
        end
        object N90: TMenuItem
          Caption = '-'
        end
        object N100: TMenuItem
          Caption = ' '#187' '
          OnClick = N30Click
        end
        object N101: TMenuItem
          Caption = ' '#171' '
          OnClick = N30Click
        end
        object N92: TMenuItem
          Caption = ' < '
          OnClick = N30Click
        end
        object N93: TMenuItem
          Caption = ' > '
          OnClick = N30Click
        end
        object N99: TMenuItem
          Caption = ' ~ '
          OnClick = N30Click
        end
        object N94: TMenuItem
          Caption = ' # '
          OnClick = N30Click
        end
        object N98: TMenuItem
          Caption = '-'
        end
        object N95: TMenuItem
          Caption = ' | '
          OnClick = N30Click
        end
        object N96: TMenuItem
          Caption = ' && '
          OnClick = N30Click
        end
        object N97: TMenuItem
          Caption = ' ! '
          OnClick = N30Click
        end
        object N109: TMenuItem
          Caption = '-'
        end
        object N106: TMenuItem
          Caption = '/'
          OnClick = N30Click
        end
        object N107: TMenuItem
          Caption = '-'
        end
        object N108: TMenuItem
          Caption = '\'
          OnClick = N30Click
        end
      end
    end
    object Compiler1: TMenuItem
      Caption = '&Projet'
      object Compiler2: TMenuItem
        Action = ActionCompile
      end
      object Informations1: TMenuItem
        Action = ActionInfos
      end
      object AnalyseLexicale1: TMenuItem
        Action = ActionLexicale
      end
      object AnalyseSyntaxiqueetSmantique1: TMenuItem
        Action = ActionSyntaxe
      end
      object Intialise1: TMenuItem
        Action = ActionInitialise
      end
    end
    object Messagesderreur1: TMenuItem
      Caption = '&Messages'
      object Enregister2: TMenuItem
        Action = ActionSaveMsg
      end
      object Effacer1: TMenuItem
        Action = ActionClear
      end
    end
    object Aide1: TMenuItem
      Caption = '&Aide'
      object Apropos1: TMenuItem
        Action = ActionAbout
      end
      object Racourcis1: TMenuItem
        Action = ActionShortCuts
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Prsentation1: TMenuItem
        Action = ActionPresent
      end
      object Rapport1: TMenuItem
        Action = ActionRapport
      end
      object Codesource1: TMenuItem
        Action = ActionCode
      end
      object Exemples1: TMenuItem
        Action = ActionDemos
      end
    end
  end
  object OD: TOpenDialog
    DefaultExt = '.khw'
    Filter = 
      'Khawarismi File (*.khw)|*.khw|Text File (*.txt)|*.txt|All files ' +
      '(*.*)|*.*'
    Left = 864
  end
  object SD: TSaveDialog
    DefaultExt = '.khw'
    Filter = 
      'Khawarismi File (*.khw)|*.khw|Text File (*.txt)|*.txt|All Filles' +
      ' (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 624
  end
  object FD: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 688
  end
  object PD: TPrintDialog
    Left = 656
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 720
    object ActionNew: TAction
      Category = 'File'
      Caption = '&Nouveau'
      ImageIndex = 121
      ShortCut = 16462
      OnExecute = ActionNewExecute
    end
    object ActionQuit: TAction
      Category = 'File'
      Caption = '&Quitter'
      ImageIndex = 88
      ShortCut = 16465
      OnExecute = ActionQuitExecute
    end
    object ActionOpen: TAction
      Category = 'File'
      Caption = '&Ouvrir'
      ImageIndex = 123
      ShortCut = 16463
      OnExecute = ActionOpenExecute
    end
    object ActionSave: TAction
      Category = 'File'
      Caption = '&Enregister'
      ImageIndex = 8
      ShortCut = 16467
      OnExecute = ActionSaveExecute
    end
    object ActionSaveAs: TAction
      Category = 'File'
      Caption = 'Enregister &sous'
      ImageIndex = 15
      OnExecute = ActionSaveAsExecute
    end
    object ActionAbout: TAction
      Category = 'Help'
      Caption = '&A propos de'
      ImageIndex = 16
      ShortCut = 112
      OnExecute = ActionAboutExecute
    end
    object ActionShortCuts: TAction
      Category = 'Help'
      Caption = 'Ra&courcis'
      ImageIndex = 11
      ShortCut = 113
      OnExecute = ActionShortCutsExecute
    end
    object ActionPresent: TAction
      Category = 'Help'
      Caption = '&Pr'#233'sentation'
      ShortCut = 114
      OnExecute = ActionPresentExecute
    end
    object ActionRapport: TAction
      Category = 'Help'
      Caption = '&Rapport'
      ShortCut = 115
      OnExecute = ActionRapportExecute
    end
    object ActionSaveMsg: TAction
      Category = 'Messages'
      Caption = 'E&nregister'
      OnExecute = ActionSaveMsgExecute
    end
    object ActionClear: TAction
      Category = 'Messages'
      Caption = 'E&ffacer'
      OnExecute = ActionClearExecute
    end
    object ActionCompile: TAction
      Category = 'Projet'
      Caption = '&Compiler'
      ImageIndex = 24
      ShortCut = 120
      OnExecute = ActionCompileExecute
    end
    object ActionInfos: TAction
      Category = 'Projet'
      Caption = '&Informations'
      ImageIndex = 10
      ShortCut = 121
      OnExecute = ActionInfosExecute
    end
    object ActionCancel: TAction
      Category = 'Edition'
      Caption = '&Annuler'
      ImageIndex = 3
      ShortCut = 16474
      OnExecute = ActionCancelExecute
    end
    object ActionCopy: TAction
      Category = 'Edition'
      Caption = '&Copier'
      ImageIndex = 1
      ShortCut = 16451
      OnExecute = ActionCopyExecute
    end
    object ActionPaste: TAction
      Category = 'Edition'
      Caption = 'Co&ller'
      ImageIndex = 2
      ShortCut = 16470
      OnExecute = ActionPasteExecute
    end
    object ActionCut: TAction
      Category = 'Edition'
      Caption = 'C&ouper'
      ImageIndex = 0
      ShortCut = 16472
      OnExecute = ActionCutExecute
    end
    object ActionFont: TAction
      Category = 'Edition'
      Caption = '&Font ...'
      ShortCut = 16468
      OnExecute = ActionFontExecute
    end
    object ActionSelectAll: TAction
      Category = 'Edition'
      Caption = '&Selectionner Tout'
      ShortCut = 16449
      OnExecute = ActionSelectAllExecute
    end
    object ActionPrint: TAction
      Category = 'File'
      Caption = '&Imprimer'
      ImageIndex = 14
      ShortCut = 16464
      OnExecute = ActionPrintExecute
    end
    object ActionCode: TAction
      Category = 'Help'
      Caption = '&Code source'
      ShortCut = 116
      OnExecute = ActionCodeExecute
    end
    object ActionSearch: TAction
      Category = 'Edition'
      Caption = '&Recherche'
      ImageIndex = 12
      ShortCut = 16454
      OnExecute = ActionSearchExecute
    end
    object ActionDemos: TAction
      Category = 'Help'
      Caption = '&Exemples'
      ShortCut = 117
      OnExecute = ActionDemosExecute
    end
    object ActionLexicale: TAction
      Category = 'Projet'
      Caption = 'Analyse Lexicale'
      ShortCut = 117
      OnExecute = ActionLexicaleExecute
    end
    object ActionInitialise: TAction
      Category = 'Projet'
      Caption = 'I&nitialise'
      Enabled = False
      ShortCut = 119
      OnExecute = ActionInitialiseExecute
    end
    object ActionSyntaxe: TAction
      Category = 'Projet'
      Caption = 'Analyse Syntaxique et && S'#233'mantique'
      Enabled = False
      ShortCut = 118
      OnExecute = ActionSyntaxeExecute
    end
  end
  object ImageList1: TImageList
    Left = 784
    Bitmap = {
      494C01017D008100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001002000001002000000000000010
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B0000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100C5C5C500C1C1C100B4B4
      B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4
      B4004B4B4B00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100DADADA00CDCDCD00CDCD
      CD00C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C1C1C100B4B4
      B4004B4B4B00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081818100E6E6E600E6E6E600CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00001FFF00CDCDCD0000BF0000B4B4
      B40059595900FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00E6E6E600E6E6E600E6E6E600DADADA00CDCD
      CD0000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A00A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001FFF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001FFF00FF00FF00FF00FF00FF00
      FF00A8A8A8004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B00A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001FFF00FF00FF00FF00FF00001F
      FF009A9A9A0099F8FF0099F8FF0099F8FF0055DFFF00AADFD50055DFFF0055DF
      FF00AADFD50055DFFF0055C0D4004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00001FFF00FF00FF00FF00
      FF00001FFF00A9FFFF00A9FFFF00A9FFFF0099F7FF00A9FFFF0098F7FF0098F7
      FF0054DFFF00AADFD50055DFFF004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00001FFF00001F
      FF00001FFF00001FFF00A9FFFF00A9FFFF00A9FFFF0099F8FF0099F8FF0055DF
      FF0098F7FF0055DFFF00AADFD5004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00001FFF00FF00FF00A9FFFF00A9FFFF00A9FFFF00A9FFFF0099F7FF0099F7
      FF0055DFFF0099F8FF0055DFFF00595959000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00001F
      FF00C1C1C100FF00FF00FF00FF00FF00FF00A9FFFF009A9A9A009A9A9A009A9A
      9A0055BFD30054BFD30055BFD300737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00A7A7A700B4B4B4009A9A9A009A9A9A009A9A9A0055DFFF0055DFFF0055DF
      FF0055DFFF0055DFFF0054BFD300818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00B4B4B400A9FFFF0000F2FF0000F1FF0055BFD3008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D00B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00C1C1C1009B9B9B008D8D8D008D8D8D009B9B9B00B4B4B400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80073737300553F2A00553F2A00553F2A00553F2A00553F2A00553F
      2A00553F2A00553F2A00553F2A00A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F6E1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000303030003030300030303000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092929200AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00553F2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081610000FF9F2A008F6F1D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000303030003030300000A0AB0000A0AB0000A0AB00303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      000091919100AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF00553F2A008181810059595900595959005959
      5900595959005959590059595900595959005959590059595900595959005959
      590059595900595959004B4B4B0081818100A8A8A80073737300553F2A00553F
      2A003D3D3D003D3D3D00B4B4B40080610000FF9F2A00D9A77D00FF9F2A008F6F
      1C0073737300747474003D3D3D00A7A7A7000000000000000000000000003030
      30003030300000A0AB0000A0AB0000F2FF0000F2FF0000F2FF0000A0AB003030
      3000000000000000000000000000000000000000000000000000000000000000
      000091919100AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00553F2A004B4B4B00D9A77D00CB8C4400CB8C
      4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C
      4400CB8C4400CB8C4400CB8C44004B4B4B0091919100A9FFFF0099F8FF0099F8
      FF0055DFFF0055BFD30080610000D9A77D00D9A77D00D9A77D00D9A77D00FF9F
      2A008F6F1D0055DFFF0055C0D4003D3D3D0000000000303030003030300000A0
      AB0000A0AB0000F2FF0000F2FF00633600006336000000A0AB0000F2FF0000A0
      AB00303030000000000000000000000000000000000000000000000000000000
      000090909000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF00AAFFFF0099F8FF00AAFFFF00767676007F5B0000FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B0091919100A9FFFF00A9FFFF00A9FF
      FF00A9FFFF0080610000D9A77D00FFFFC300FFFFC300D9A77D00D9A77D00D9A7
      7D00FF9F2A008F6F1D0055DFFF003D3D3D006336000000A0AB0000A0AB0000F2
      FF0000F2FF00633600007F5B0000D9A77D00D9A77D006336000000A0AB0000F2
      FF0000A0AB003030300000000000000000000000000000000000000000000000
      000091919100AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00808080007F5B0000FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B0091919100A9FFFF00A9FFFF00A9FF
      FF00E1BE78008F6F1C008F6F1C008F6E1C00FFFFC300FFFFC400D9A77D008F6F
      1D008F6F1C008F6F1C00E1BE7800737373006336000000F2FF0000F2FF006336
      00007F5B0000BC720000BC720000BC720000BC720000D9A77D006336000000A0
      AB0000F2FF0000A0AB0030303000000000000000000000000000000000000000
      00009191910098F7FF00AAFFFF0099F8FF00AAFFFF0099F8FF00AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF008D8D8D007F5B0000FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B0090909000A9FFFF00A9FFFF00A9FF
      FF00A9FFFF00A9FFFF00A9FFFF009D7C3000FFFFC300FFFFC300FFF1AB009D7C
      3000B4B4B40099F8FF0055DFFF003D3D3D00633600006336000063360000BC72
      0000BC720000BC72000000F2FF00BC720000BC720000BC720000D9A77D006336
      000000A0AB0000F2FF0000A0AB00303030000000000000000000000000000000
      0000C1C1C100C1C1C10098F7FF00AAFFFF0099F8FF00AAFFFF0099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF009B9B9B007F5B0000FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B009191910000000000A9FFFF00A9FF
      FF00A9FFFF00A9FFFF00A9FFFF00AB8A4000FFFFC300FFFFC300D9A77D00FBD7
      910098F7FF0055DFFF00AADFD5003D3D3D00633600007F5B0000A3760000BC72
      0000BC720000BC72000068F5FF00BC720000BC720000BC720000BC720000D9A7
      7D006336000000A0AB0030303000000000000000000000000000EFAD0000A377
      00007F5B0000EFAD0000C1C1C10098F7FF0098F7FF0098F7FF0098F7FF0098F7
      FF0098F7FF0098F7FF0098F7FF00A7A7A7007F5B0000FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B0091919100A9FFFF00A9FFFF00A9FF
      FF00A9FFFF00A9FFFF00B9974F00D9A77D00FFF0AA00FFFFC300AB8A400099F7
      FF0099F7FF0099F8FF0055DFFF00595959000000000063360000FF9F2A00D9A7
      7D00BC720000BC720000BC720000BC72000000F2FF0000F2FF00BC720000BC72
      0000D9A77D0063360000303030000000000000000000000000007F5B0000D9A7
      7D00D9A77D007F5B0000C1C1C100C1C1C10098F7FF0098F7FF0098F7FF0098F7
      FF0055DFFF0055DFFF0054BFD300737373007F5B000000000000D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D00CB8C44004B4B4B00A8A8A80000000000A9FFFF000000
      0000A9FFFF00A8FEFF00B9974E00FFE49E00FFF0AA00E1BE7700FBD79000A9FF
      FF00A9FFFF00A9FFFF00A9FFFF0066666600000000000000000063360000FF9F
      2A00D9A77D00BC720000BC720000BC720000BC72000068F5FF0000F2FF0000F2
      FF00BC720000D9A77D003030300000000000EFAD0000A2760000A2760000D9A7
      7D00D9A77D00A37700007F5B0000EFAD0000C1C1C10098F7FF0098F7FF00B4B4
      B400A0A0A0007373730073737300B4B4B4007F5B00000000000000000000FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00D9A77D004B4B4B00B4B4B400A9FFFF0000000000A9FF
      FF00A8FEFF00AB893F00D9A77D00FBD79000E1BE7800A9FFFF00A9FFFF00A9FF
      FF00A9FFFF00A9FFFF00A9FFFF00737373000000000000000000000000006336
      0000FFFF7F00D9A77D00BC72000068F5FF00BC720000BC72000000F2FF0000F2
      FF00BC720000BC720000D9A77D0030303000AA7F0000F6CF6D00D9A77D00D9A7
      7D00D9A77D00D9A77D00FF9F2A007F5B0000C1C1C10098F7FF0098F7FF00A1A1
      A100E6E6E600DADADA00DADADA00B4B4B4007F5B0000A3760000A3760000A376
      0000A3760000A3760000A3760000A3760000A3760000A3760000A3760000A376
      0000A3760000A3760000A37600004B4B4B00C1C1C10000000000A9FFFF000000
      0000D4B16A00D4B26B00D4B26B00D4B26B00EECB8400C6C6C600C6C6C600AADF
      D50055BFD30054BFD30055BFD300818181000000000000000000000000000000
      000063360000FFFF7F00D9A77D00BC72000068F5FF0000F2FF0000F2FF00BC72
      0000D9A77D00FF9F2A007F5B000063360000AA7F0000FFFFCB00FFFFCB00F6CF
      6D00D9A77D00F6CF6D00F6CF6D00A3770000C1C1C10098F7FF0098F7FF00A7A7
      A700AAFFFF00E7E7E700B4B4B400000000007F5B0000AA9F000000000000A376
      00009DA900009DA90000AA9F00009DA900009DA900009DA90000A37600000000
      0000A376000000000000A37600004B4B4B00CCCCCC00B5B5B500B4B4B400B4B4
      B400CBCBCB00AADFD500AADFD50055DFFF0055DFFF0055DFFF0055DFFF0055DF
      FF0055DFFF0055DFFF0054BFD300C1C1C1000000000000000000000000000000
      00000000000063360000FFFF7F00D9A77D00BC720000BC720000D9A77D00FF9F
      2A007F5B0000633600000000000000000000F7D06C00E5B72600E2B62900FFFF
      6600F6CF6D00AA7F0000AA7F0000F7CF6C0000000000AAFFFF00E6E6E6008D8D
      8D0000000000B4B4B40000000000000000007F5B0000AA9F0000AA9F0000AA9F
      0000AA9F0000AA9F0000AA9F0000AA9F0000AA9F0000AA9F0000AA9F0000AA9F
      0000AA9F0000AA9F0000AA9F00004B4B4B0000000000DADADA0000F2FF0000F2
      FF0000F1FF0000F1FF0055BFD300E6E6E6008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D00000000000000000000000000000000000000
      0000000000000000000063360000FFFF7F00FFFF7F00FFFF7F007F5B00006336
      0000000000000000000000000000000000000000000000000000F1BF2B00FFFF
      9900FFFF9900AA7F0000B4B4B400CDCDCD00C1C1C100B4B4B4008D8D8D008D8D
      8D00C1C1C100000000000000000000000000A37600007F5B00007F5B00007F5B
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      00007F5B00007F5B00004B4B4B0081818100000000009B9B9B0054FFFF0067F4
      FF0067F4FF0067F4FF0000F1FF00B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000633600006336000063360000000000000000
      0000000000000000000000000000000000000000000000000000F8D06D00FFC8
      2D00FDC83100F7CF6C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9B008D8D
      8D008D8D8D008D8D8D009B9B9B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300553F2A00553F
      2A00553F2A00553F2A00553F2A00553F2A00553F2A00A7A7A700FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      AA000000000000000000A8A8A80073737300553F2A00553F2A00553F2A00553F
      2A00553F2A00553F2A00553F2A00A7A7A7000000000059595900595959005959
      590059595900595959005959590059595900595959004B4B4B0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000A7A7A700737373007373
      7300595959004B4B4B004B4B4B003D3D3D00303030003030300030303000A7A7
      A7000000000000000000000000000000000092929200AAFFFF00AAFFFF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00AAFFFF0099F8FF00553F2A00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000AA000000
      0000000000000000000073737300AAFFFF00AAFFFF00AAFFFF0099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00553F2A004B4B4B00D9A77D00CB8C4400CB8C
      4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C4400CB8C44004B4B4B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00A7A7A70059595900CDCDCD00E6E6
      E600C1C1C100CDCDCD00F0F0F000EDEDED00E6E6E600A7A7A700333333003030
      3000A7A7A70000000000000000000000000091919100AAFFFF00AAFFFF00AAFF
      FF00AAFFFF0099F8FF00AAFFFF0099F8FF00AAFFFF00553F2A00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000AA000000
      0000000000000000000073737300AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF00553F2A0073737300FFFF9900D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C44004B4B4B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF004B4B4B0059595900DADADA00E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600DADADA00737373002929
      29003030300000000000000000000000000091919100AAFFFF00AAFFFF00AAFF
      FF00AAFFFF00AAFFFF0099F8FF00AAFFFF0099F8FF00553F2A00A7A7A7007373
      7300553F2A00553F2A00553F2A00A7A7A700000000000000AA000000AA000000
      AA00000000000000000073737300AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00553F2A0073737300FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C44004B4B4B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF004B4B4B0059595900D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00737373003636
      3600303030009A9A9A00A7A7A7000000000091919100AAFFFF00AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF0099F8FF00AAFFFF00553F2A0099F8FF0098F7
      FF0099F8FF00AAFFFF0099F8FF00553F2A0000000000000000000000AA000000
      0000000000000000000073737300AAFFFF00AAFFFF0099F8FF00AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF008D8D8D0073737300FF00FF00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C44004B4B4B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF004B4B4B0059595900D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00737373004A4A
      4A00303030007373730030303000A7A7A70091919100AAFFFF00AAFFFF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00AAFFFF0099F8FF0073737300AAFFFF0098F7
      FF00AAFFFF0099F8FF00AAFFFF00737373000000000000000000000000000000
      000000000000000000007373730000000000AAFFFF0098F7FF0098F7FF0098F7
      FF0099F8FF0099F8FF0099F8FF00A7A7A70073737300FF00FF00D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C44004B4B4B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF005959590059595900D9A77D007373
      7300737373007373730073737300737373007373730073737300737373005353
      53004B4B4B0073737300292929003030300092929200FF00FF00AAFFFF0098F7
      FF0098F7FF0098F7FF0099F8FF0099F8FF0099F8FF0073737300AAFFFF0098F7
      FF0099F8FF00AAFFFF0099F8FF00553F2A007373730073737300737373007373
      730081818100C1C1C1007373730000000000AAFFFF0098F7FF0098F7FF0098F7
      FF0055DFFF0055DFFF0054BFD3007373730073737300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FFFFCC00FFFF9900D9A77D004B4B4B00C1C1
      C10059595900595959004B4B4B00000000005959590059595900D9A77D00AAFF
      FF00AAFFFF00AAFFFF00AAFFFF0099F8FF0099F8FF0099F8FF009A9A9A005656
      56004B4B4B0073737300595959003030300090909000FF00FF00AAFFFF0098F7
      FF0098F7FF0098F7FF0055DFFF0055DFFF0054BFD30073737300AAFFFF0098F7
      FF00AAFFFF0099F8FF00AAFFFF008D8D8D0073737300D9A77D00CB8C4400CB8C
      4400CB8C4400CB8C44008181810000000000AAFFFF0098F7FF0098F7FF00B4B4
      B400A0A0A0007373730073737300B4B4B40073737300A3760000A3760000A376
      0000A3760000A3760000A3760000A3760000A3760000A37600004B4B4B00AA9F
      2A00AABF2A009DA900009DA900004B4B4B006666660059595900AAFFFF00AAFF
      FF00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700AAFFFF0099F8FF007171
      71005959590073737300595959003D3D3D0091919100FF00FF00AAFFFF0098F7
      FF0098F7FF00B4B4B400A0A0A0007373730073737300B4B4B40099F8FF0098F7
      FF0099F8FF00AAFFFF0099F8FF009B9B9B0073737300FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D008E8E8E0000000000AAFFFF00AAFFFF0098F7FF00A1A1
      A100E6E6E600DADADA00DADADA00B4B4B40073737300A3760000A3760000A376
      0000A3760000A3760000A3760000A3760000A3760000A37600004B4B4B00AA9F
      2A00D9A77D00D9A77D009DA900004B4B4B007373730098989800AAFFFF00AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8FF009898
      98005959590073737300595959004B4B4B0090909000FF00FF00AAFFFF00AAFF
      FF0098F7FF00A1A1A100E6E6E600DADADA00DADADA00A1A1A10098F7FF0098F7
      FF0099F8FF0099F8FF0099F8FF00A7A7A70073737300FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D009A9A9A0000000000AAFFFF00AAFFFF0098F7FF00A7A7
      A700AAFFFF00E7E7E700B4B4B400000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B4B4B0000000000AA9F
      2A00D9A77D00D9A77D009DA900004B4B4B0073737300A6A6A60000000000AAFF
      FF00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A70099F8FF00AAFFFF00A6A6
      A600666666008E8E8E00595959004B4B4B0091919100FF00FF00AAFFFF00AAFF
      FF0098F7FF00A7A7A700AAFFFF00E7E7E700A1A1A10098F7FF0098F7FF0098F7
      FF0055DFFF0055DFFF0054BFD3007373730073737300FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00A7A7A700000000000000000000000000AAFFFF008D8D
      8D0000000000B4B4B4000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C1C1C100D9A77D00C8CC7A00C8CC7A00C8CC7A00C8CC7A00D9A7
      7D00D9A77D00D9A77D009DA900004B4B4B0073737300B1B1B100000000000000
      0000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00B1B1
      B100737373008E8E8E00666666004B4B4B0091919100FF00FF00FF00FF00FF00
      FF00AAFFFF008D8D8D00FF00FF00A1A1A100AAFFFF0098F7FF0098F7FF00B4B4
      B400A0A0A0007373730073737300B4B4B40073737300FFFFCC00D9A77D00D9A7
      7D00D9A77D00D9A77D00C1C1C100737373007373730073737300737373008D8D
      8D00C1C1C10000000000000000000000AA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0073737300FFFFCC00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D009DA900004B4B4B00A7A7A70081818100595959005959
      5900595959005959590059595900595959005959590059595900666666008181
      8100A7A7A7008E8E8E007373730059595900B4B4B400B4B4B400A7A7A700A7A7
      A7008D8D8D008D8D8D00A1A1A100FF00FF00AAFFFF0099F8FF0098F7FF00A1A1
      A100E6E6E600DADADA00DADADA00B4B4B40073737300FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00AADF7F00C1C1C1000000
      00000000AA0000000000000000000000AA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0073737300FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00AABF2A004B4B4B0000000000A7A7A7008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E009A9A
      9A00DADADA008E8E8E008181810066666600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C1C1C100FF00FF0099F8FF0099F8FF0098F7FF00A7A7
      A700AAFFFF00E7E7E700B4B4B400FF00FF0073737300A3760000A3760000A376
      0000A3760000A3760000A3760000A3760000A3760000A3760000C1C1C1000000
      AA000000AA000000AA000000AA0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0073737300A3760000A3760000A3760000A3760000A3760000A376
      0000A3760000A3760000A37600004B4B4B00000000000000000000000000C1C1
      C100B1B1B100DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00B1B1B10073737300FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF008D8D8D00AAFFFF00AAFFFF00AAFFFF00AAFFFF008D8D
      8D00FF00FF00B4B4B400FF00FF00FF00FF0073737300A3760000A3760000A376
      0000A3760000A3760000A3760000A3760000A3760000A3760000818181000000
      00000000AA00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0073737300A3760000A3760000A3760000A3760000A3760000A376
      0000A3760000A3760000A37600004B4B4B00000000000000000000000000A7A7
      A70081818100C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100C1C1
      C100C1C1C100C1C1C10081818100A7A7A700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00B4B4B4008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D00C1C1C100FF00FF00FF00FF00FF00FF008181810081818100818181008181
      8100818181008181810081818100818181008181810081818100818181000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300000000000000000000000000000000000000
      0000A7A7A7008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840000000000000000000000000000000000BDBDBD007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      00000000000084848400FFFFFF000000000000000000BDBDBD00BDBDBD007B7B
      7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B
      7B007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000084848400848484008484840000000000BDBDBD00BDBDBD007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000848484000000FF000000FF0084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000084848400000000000000000000000000BDBDBD00BDBDBD007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B
      7B007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000084848400FFFFFF000000000000000000BDBDBD00BDBDBD007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000FFFFFF00FFFFFF0000000000000000000000
      00000000000084848400848484008484840000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00FFFFFF000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF00FFFF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF000000000000000000000000000000000000000000BDBDBD007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF000000
      8400000000000000000000000000000000000000000000000000848484008484
      84008484840000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF00FF000000FFFFFF007B7B7B00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000626262000000000000000000000000000000000000000000D9A77D000000
      0000D9A77D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B00000000003D3D3D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3D00000000000000000000000000000000000000
      000062626200626262000000000000000000FFFF9900D9A77D00D9A77D000000
      0000D9A77D00D9A77D00FFFF990000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848484008484840084848400848484008484840084848400848484008484
      84008484840084848400848484004B4B4B0000000000B1B1B100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1B1B10000000000000000000000000062626200626262006262
      620062626200626262006262620000000000D9A77D00FFFF9900D9A77D000000
      0000D9A77D00FFFF9900D9A77D00000000000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B000000000000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B00000000000000000000000000000000000000000062626200000000000000
      0000626262006262620000000000D9A77D00D9A77D00D9A77D00FFFF99000000
      0000FFFF9900D9A77D00D9A77D00D9A77D00000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B0000000000000000004B4B4B00DDC9
      B800DDC9B800DDC9B800DDC9B800DDC9B800DDC9B800DDC9B800DDC9B800DDC9
      B8004B4B4B000000000000000000000000000000000062626200000000000000
      0000626262000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B0000000000000000004B4B4B00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D004B4B4B000000000000000000000000000000000062626200000000000000
      0000000000000000000000000000D9A77D00D9A77D00D9A77D00FFFF99000000
      0000FFFF9900D9A77D00D9A77D00D9A77D00000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000000000004B4B4B00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D004B4B4B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9A77D00FFFF9900D9A77D000000
      0000D9A77D00FFFF9900D9A77D00000000000000000000FFFF000000000000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B4B4B00D9A7
      7D00737373007373730073737300737373007373730073737300737373007373
      73004B4B4B000000000000000000000000006262620062626200626262006262
      620062626200626262006262620062626200FFFF9900D9A77D00D9A77D000000
      0000D9A77D00D9A77D00FFFF990000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF00000000008484840000FF
      000000FF0000000000000000000000000000000000004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B000000000000000000000000000000
      0000000000004B4B4B0000000000000000003D3D3D0000000000B1B1B100D9A7
      7D00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8FF0099F8FF0099F8FF009A9A
      9A00B1B1B10000000000B1B1B1003D3D3D0062626200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00626262000000000000000000D9A77D000000
      0000D9A77D000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000000000848484008484840000FF
      000000FF00000000000000000000000000004B4B4B00DFFFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00DFFFFF004B4B4B0000000000000000000000
      00004B4B4B004B4B4B004B4B4B000000000000000000000000004B4B4B00AAFF
      FF00AAFFFF00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700AAFFFF0099F8
      FF004B4B4B0000000000000000000000000062626200FFFFFF00626262006262
      62006262620062626200FFFFFF00626262000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000004B4B4B0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0060DFDF0080FFFF004B4B4B0000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B0000000000000000004B4B4B00AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8
      FF004B4B4B0000000000000000000000000062626200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00626262000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000004B4B4B0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF004B4B4B0000000000000000000000
      0000000000004B4B4B00000000000000000000000000000000004B4B4B00FFFF
      FF00AAFFFF00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A70099F8FF00AAFF
      FF004B4B4B0000000000000000000000000062626200FFFFFF00626262006262
      62006262620062626200FFFFFF00626262000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00848484008484840000FF
      000000FF00000000000000000000000000004B4B4B0000FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF004B4B4B0000000000000000000000
      0000000000004B4B4B00000000000000000000000000000000004B4B4B00FFFF
      FF00FFFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF004B4B4B0000000000000000000000000062626200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00626262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008484840000FF
      000000FF00000000000000000000000000004B4B4B004B4B4B004B4B4B004B4B
      4B0010BFCF0080FFFF0080FFFF00DFFFFF004B4B4B0000000000000000000000
      0000000000004B4B4B0000000000000000000000000000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B000000000000000000000000000000000062626200FFFFFF0062626200FFFF
      FF00626262006262620062626200626262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000004B4B4B0000FFFF00FFFFFF0000CF
      CF004B4B4B004B4B4B004B4B4B004B4B4B00000000004B4B4B004B4B4B004B4B
      4B004B4B4B0084848400000000000000000000000000B1B1B100000000000000
      0000000000000000000000000000B1B1B1000000000000000000000000000000
      000000000000B1B1B100000000000000000062626200FFFFFF00FFFFFF00FFFF
      FF0062626200FFFFFF0062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B4B4B004B4B4B004B4B
      4B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D0000000000000000000000
      00000000000000000000000000003D3D3D000000000000000000000000000000
      000000000000000000003D3D3D00000000006262620062626200626262006262
      6200626262006262620000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000626262006262620062626200626262006262620062626200626262006262
      620062626200626262000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF006262620000000000000000000000000000FFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      620062626200FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF006262620000000000000000000000000000FFFF000000
      0000000000008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      62006262620000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0062626200000000000000000000FFFF000000000000FF
      FF0084848400FFFFFF0084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000006262
      620000CFCF006262620000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0062626200000000000000000000FFFF000000
      000000FFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840084848400000000000000000000000000000000000000
      000000000000000000008484840084848400848484008484840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000000000008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200FFFFFF00D9A77D0062626200626262006262620062626200626262006262
      6200626262006262620062626200626262000000000000FFFF000000000000FF
      FF0000FFFF0000FFFF0084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00848484008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      620000FFFF00D9A77D00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF
      9900FFFF9900D9A77D000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF0000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      00000000000000000000000000000000000084848400000000008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200FFFFFF00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D0000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF0084848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      620000FFFF00BBF3F30000FFFF00FFFFFF0000FFFF00FFFFFF003535F100FFFF
      FF00626262000E0ED9000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00848484008484
      84008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200BBF3F30000FFFF00B3EBEB00626262006262620062626200626262003535
      F100000000000E0ED900000000003535F1000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF0084848400FFFF
      FF0000FFFF008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      620000FFFF00ABE3E30000FFFF00626262000000000000000000000000000000
      0000000000000E0ED9000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF008484
      840084848400FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000626262006262620062626200000000000000000000000000000000000E0E
      D9000E0ED900000000000E0ED9000E0ED9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000084848400848484008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0ED90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      F100000000000E0ED900000000003535F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003535F1000000
      0000000000000E0ED900000000000000000000000000FF00FF00FF00FF00FF00
      FF0000000000FF00FF00000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
      FF0000000000FF00FF0000000000FF00FF000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000C6C6
      C6000000000000000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
      FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
      FF0000000000FF00FF0000000000FF00FF000000000000000000000000000000
      00000000000000000000000000008484840000000000FFFF0000FFFF0000FFFF
      FF00FFFF0000FF000000000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
      FF0000000000FF00FF0000000000FF00FF000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00008484
      8400FF000000FFFF0000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF000000000084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
      FF0000000000FF00FF00000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000FF00FF000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF000084848400C6C6
      C60084848400FF000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400FFFF0000FFFF
      FF00FFFF00008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF000000000084848400000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000000000000000000000000000FFFFFF00000000008400
      0000840000008400000084000000840000008400000000000000FFFFFF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FF00FF0000000000000000000000
      FF00000084000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF00000000008484840000000000FFFF
      FF0000000000FFFFFF000000000000000000FF00FF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      FF00000084000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF0084000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0084848400FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF0084000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0084848400C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF0000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF00848484008484840000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000840000000000FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF00FF00FF0000000000FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000000000000000000000000000
      000084000000840000000000000000000000FF00FF0084000000FF00FF00FF00
      FF0084000000FF00FF00FF00FF0084848400FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF0000000000FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF00FF00FF0000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF00000084000000000000000000000000000000
      000084000000840000000000000000000000FF00FF00FF00FF0084000000FF00
      FF008400000084000000FF00FF0084848400C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000000000FFFF
      FF0000000000FFFFFF000000000000000000FF00FF0000000000FFFFFF000000
      FF000000FF000000FF000000FF0000000000FF00FF00FF00FF00840000008400
      00008400000084000000840000008400000000000000FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000000000000000840000008400
      000084000000840000008400000084000000FF00FF00FF00FF00FF00FF008400
      0000840000008400000084000000848484008484840084848400848484008484
      840084848400848484008484840084848400FF00FF00FF00FF00FF00FF008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00840000008400
      0000840000008400000084000000840000000000000000000000FFFFFF000000
      FF000000FF000000FF000000FF00000000000000000000000000840000008400
      000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF0084848400FFFFFF0084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FF00FF00FF00FF00FF00FF008484
      8400840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000084000000840000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0084000000FF00FF00FF00FF00848484008484840084848400848484008484
      840084848400848484008484840084848400FF00FF00FF00FF00FF00FF008484
      8400FFFFFF008400000084000000840000008400000084000000840000008400
      0000FFFFFF0084000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF008400000084000000FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000840000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000084840000FFFF000084840000FFFF000084840000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000084
      840000FFFF000084840000FFFF00FFFFFF0000000000FFFFFF0000FFFF000084
      840000FFFF000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000084
      840000FFFF00FFFFFF0000FFFF0000000000000000000000000000FFFF00FFFF
      FF0000FFFF000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF000000000000000000C6C6C600FFFFFF000000
      0000FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6008484840000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      00008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C600000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      00008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C60000000000FFFF
      FF00000000000000000084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000008400000084000000848484008484840084848400840000008400
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000008400000084000000000000000000
      00008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000848484008484840084848400FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF000000000000000000C6C6C600FFFFFF000000
      0000FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C60000000000FFFF
      FF00000000000000000084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484008484840084848400FFFFFF008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      84000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000084848400FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400FFFFFF000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400FFFFFF008484
      8400848484008484840084848400000000000000000084848400840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF008484840000000000000000000000000084848400FFFFFF008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0084000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840000000000C6C6
      C60084848400C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000A37600007F5B00007F5B00007F5B
      00004B4B4B004B4B4B00848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF007F5B00007F5B00007F5B0000A3760000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000084848400FFFF
      FF0084000000840000008400000084000000C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A37600004B4B4B004B4B4B0084848400FFFFFF00FFFFFF00FFFF
      FF007F5B0000000000000000000000000000C6C6C60084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF008484000084840000848400008484000084840000848400008484
      0000FFFFFF00C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F5B0000000000000000000000000000C6C6C6008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00C6C6C600000000000000000084848400FFFFFF0084848400FFFF
      FF0084000000840000008400000084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F5B0000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF008484000084840000848400008484000084840000848400008484
      0000FFFFFF00C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFFDF00FFFF8000F7EF7000FFFF
      00007F5B0000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600000000000000000084848400FFFFFF0084848400FFFF
      FF0084000000840000008400000084000000C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFF8000FFFF8000FFFF8000FFFF
      80007F5B0000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FF000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF008484000084840000848400008484000084840000848400008484
      0000FFFFFF00C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFF8000FFFF8000FFFF8000FFFF
      80007F5B0000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FF000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600000000000000000084848400FFFFFF00848484008484
      84008484840084848400848484008484840084848400C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000007F5B
      0000A3760000A3760000A37600004B4B4B00FFFF0000FFFF8000FFFF8000FFFF
      DF007F5B0000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FF000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000008484840000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF008484000084840000848400008484000084840000848400008484
      0000FFFFFF00C6C6C6000000000000000000000000000000000000000000A376
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      0000A3760000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF008484000084840000848400008484000084840000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006F6F6F004B4B4B004B4B4B004B4B4B004B4B4B006F6F6F000000
      000000000000000000000000000000000000C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C60000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C60000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6
      C600FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000004B4B4B0000DF000000DF000000DF000000DF00004B4B4B000000
      000000000000000000000000000000000000C6C6C60084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400C6C6C60000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000006F6F6F004B4B4B004B4B4B004B4B4B004B4B4B006F6F6F000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000000000000000000000000000007F5B0000000000007F5B
      00007F5B0000000000007F5B00007F5B0000000000007F5B00007F5B00000000
      00007F5B00007F5B00007F5B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000FF000000FF000000FF00000000007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F5B0000000000007F5B0000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000007F000000000000000000000000000000000000000000000000
      00007F5B00007F5B00007F5B0000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      840000000000000000000000FF0000000000000000007F5B0000000000000000
      000000000000007F0000007F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      8400000000000000FF000000FF000000FF00000000007F5B0000000000000000
      000000000000007F000000FF0000007F00000000000000000000000000000000
      0000848484007F5B000084848400000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      840000000000000000000000FF0000000000000000007F5B0000000000000000
      000000000000007F000000DF000000FF0000007F000000000000000000000000
      00007F5B00007F5B00007F5B0000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      840000000000000000000000FF00000000000000000000000000000000000000
      000000000000007F000000FF000000DF000000FF0000007F0000000000000000
      0000000000007F5B000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FFFFFF00000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      840000000000000000000000000000000000000000007F5B0000000000000000
      000000000000007F000000DF000000FF000000DF0000007F0000000000000000
      0000000000007F5B000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000008484
      840000000000000000000000FF0000000000000000007F5B0000000000000000
      000000000000007F000000FF000000DF0000007F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000008484
      8400000000000000000000000000000000007F5B00007F5B00007F5B00000000
      000000000000007F000000FF0000007F00000000000000000000000000000000
      0000000000007F5B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000000000FF0000000000848484007F5B0000848484000000
      000000000000007F0000007F0000000000000000000000000000000000000000
      0000000000007F5B000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000007F5B00007F5B00007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F5B0000000000007F5B00000000
      00007F5B00007F5B0000000000007F5B00007F5B0000000000007F5B00007F5B
      0000000000007F5B000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F5B00007F5B00007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000081818100818181008181
      8100818181008181810081818100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FF000000FF00000000000000000000000000
      000000000000FF0000000000000000000000818181007F5B00007F5B00007F5B
      00007F5B00007F5B000081818100818181000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000008484840084848400FF000000FF000000000000000000
      0000FF000000FF00000000000000000000007F5B0000FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC007F5B0000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF000000FF000000FF00
      0000FF0000000000000000000000000000007F5B0000FFFFCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFCC007F5B0000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000007F5B0000FFFFCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFCC007F5B0000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000084848400848484008484840000000000FF000000FF00
      0000FF0000000000000000000000000000007F5B0000FFFFCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFCC007F5B0000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF0000000000
      0000FF000000FF00000000000000000000007F5B0000FFFFCC00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC007F5B0000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840084848400848484008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FF000000000000000000
      000000000000FF000000FF00000000000000818181007F5B00007F5B00007F5B
      00007F5B00007F5B000081818100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000848484008484840084848400000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F5B
      000000000000000000000000000000000000000000007F5B00007F5B00000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000084848400000000000000000084000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000000000007F5B0000000000007F5B00007F5B00007F5B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000848484000000000084848400000000008400000084000000840000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B00007F5B00000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007F0000007F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      00004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007F000000FF
      2A00007F00000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840084848400848484008484840084848400848484008484
      840084848400848484004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007F000000DF
      000000FF2A00007F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007F000000FF
      2A0000DF000000FF2A00007F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007F000000DF
      000000FF2A0000DF000000FF2A00007F00000000000000000000000000000000
      00000000000000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000FF000000FF00
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6004B4B4B0000000000818181004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B0081818100000000000000000000000000007F000000FF
      2A0000DF000000FF2A00007F0000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000FF000000FFFF
      FF0084000000C6C6C60084000000840000008400000084000000840000008400
      000084000000000000000000000000000000848484004B4B4B004B4B4B004B4B
      4B004B4B4B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4B4B00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D004B4B4B00000000000000000000000000007F000000FF
      2A0000FF2A00007F000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000004B4B4B00D9A77D00D9A77D00D9A7
      7D00D9A77D004B4B4B0000000000000000000000000000000000000000000000
      0000000000004B4B4B0000000000000000004B4B4B00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D004B4B4B004B4B4B008181810000000000007F000000FF
      2A00007F000000000000000000000000000000000000C6C6C60000FFFF000000
      000000FFFF000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      0000000000000000000000000000000000004B4B4B00D9A77D00D9A77D00D9A7
      7D00D9A77D004B4B4B004B4B4B00848484000000000000000000000000000000
      00004B4B4B004B4B4B004B4B4B00000000004B4B4B00D9A77D00D9A77D00D9A7
      7D00D9A77D00D9A77D004B4B4B00D9A77D004B4B4B0000000000007F0000007F
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF00C6C6C60000FFFF00C6C6C600000000000000000000FFFF00000000000000
      0000000000000000000000000000000000008400000084000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      0000000000000000000000000000000000004B4B4B00A3760000A3760000A376
      0000A37600004B4B4B00D9A77D004B4B4B000000000000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B007F5B00007F5B00007F5B
      00007F5B00007F5B00004B4B4B00D9A77D004B4B4B004B4B4B00007F00000000
      00000000000000000000000000000000000000000000C6C6C60000FFFF00C6C6
      C60000FFFF008400000000FFFF000000000000000000C6C6C600000000000000
      00000000000000000000000000000000000084000000C6C6C600FF000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000840000008400000084000000840000004B4B4B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004B4B4B00D9A77D004B4B4B004B4B4B0084848400000000000000
      0000000000004B4B4B0000000000000000004B4B4B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004B4B4B00D9A77D004B4B4B00D9A77D004B4B4B000000
      0000000000000000000000000000000000000000000000FFFF00C6C6C60000FF
      FF008400000000FFFF00C6C6C600000000000000000000FFFF00000000000000
      00000000000000000000000000000000000084000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000084000000840000008400000000000000848484004B4B4B004B4B4B004B4B
      4B004B4B4B0084848400A37600004B4B4B00D9A77D004B4B4B00000000000000
      0000000000004B4B4B000000000000000000818181004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B00818181007F5B00004B4B4B00D9A77D004B4B4B000000
      00000000000000000000000000000000000000000000C6C6C60000FFFF008400
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C600000000000000
      00000000000000000000000000000000000084000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C6008400000000000000000000000000
      00008400000084000000840000008484840000000000000000004B4B4B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004B4B4B00D9A77D004B4B4B00000000000000
      0000000000004B4B4B00000000000000000000000000000000004B4B4B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4B4B00D9A77D004B4B4B000000
      0000000000000000000000000000000000000000000000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00000000000000
      00000000000000000000000000000000000084000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF008400000000000000000000000000
      0000840000000000000000000000840000000000000000000000848484004B4B
      4B004B4B4B004B4B4B004B4B4B0084848400A37600004B4B4B00000000004B4B
      4B004B4B4B004B4B4B0000000000000000000000000000000000818181004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B00818181007F5B00004B4B4B000000
      00000000000000000000000000000000000000000000C6C6C60000FFFF008484
      8400000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084848400840000000000000000000000000000000000
      00004B4B4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4B4B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004B4B4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B4B4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000848484004B4B4B004B4B4B004B4B4B004B4B4B0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000818181004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B00818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484000000
      0000848484008484840084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00848484000000000000000000000000008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840084848400C6C6C600848484008484
      84008484840084848400C6C6C600848484000000000000000000000000000000
      000084848400FFFFFF008484840000000000FF000000FF000000FF0000000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      000084848400FFFFFF0000000000FF000000FFFFFF00FF000000FF000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000008484840084848400000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      000084848400FFFFFF0000000000FFFFFF00FF000000FF000000FF000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084848400000000008484
      8400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000008484840000000000000000000000
      000084848400FFFFFF008484840000000000FFFFFF00FF000000FF0000000000
      000084848400FFFFFF00000000000000000000000000FF000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF00FFFFFF000000000000000000C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00848484000000000000000000000000008484
      8400FFFFFF00FFFFFF00000000000000000000000000FF000000FF000000FF00
      00000000000000FFFF0000FFFF0000FFFF000000000000000000840000008400
      0000000000000000000084000000840000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF000000FF00
      00000000000000FFFF0000FFFF0000FFFF000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000084848400000000008484
      8400C6C6C600000000000000000084848400FFFFFF00FFFFFF00FFFFFF008484
      8400848484008484840000000000000000000000000000000000FF000000FF00
      00000000000000FFFF0000FFFF00000000000000000000000000000000008400
      000084000000840000008400000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400848484008484
      840000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000840000008400000084000000840000000000FF000000
      FF000000FF000000FF000000000000000000000000000000FF00FFFFFF000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000840000008400000084000000840000000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000848484000000
      000084848400C6C6C60000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008400000084000000840000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00FFFFFF000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00840000008400000084000000840000008400
      0000FFFFFF00C6C6C60000000000000000000000000084848400000000008484
      8400C6C6C6000000000000000000FFFFFF008484000000000000000000008484
      8400000000000000000084848400000000000000000000000000000000000000
      00000000000084848400000000000000000000000000848484000000FF000000
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000848484000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C6000000000000000000000000008484840000000000C6C6
      C600848484000000000084848400FFFFFF008484000084840000848400000000
      0000848484008484840000000000848484000000000000000000000000000000
      00008484840000000000FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00FFFFFF00C6C6C600FFFFFF00000000008484840000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000FFFFFF00C6C6C60000000000000000000000000000000000000000008484
      84000000000084848400FFFFFF0084840000FFFF0000FFFF0000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000000000008484840000FF
      FF0000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000FFFFFF0084840000FFFF00008484000084840000FFFF0000FFFF
      0000848400008484000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600FFFFFF00C6C6C600FFFFFF000000000000000000FFFFFF00000000008484
      840000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600000000008484
      840000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00840000008400000084000000840000008400
      0000FFFFFF00C6C6C6000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFF0000FFFFFF00FFFF000084840000FFFF0000848400008484
      0000FFFF0000FFFF000000000000848484000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484008484840084848400848484000000000000FFFF000000000000FF
      FF008484840000000000C6C6C600FFFFFF00C6C6C600000000008484840000FF
      FF0084848400000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000FFFF000084848400FFFFFF00FFFFFF00FFFF000084840000FFFF
      000084840000FFFF000000000000848484000000000000000000000000000000
      00000000FF000000000000000000FFFFFF00FFFFFF0000000000848484000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      000000FFFF00848484000000000000000000000000008484840000FFFF008484
      840000FFFF00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00840000008400000084000000840000008400
      0000FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000FFFF0000848484008484840084848400FFFFFF00FFFF0000FFFF
      0000FFFF00000000000084848400FFFFFF000000000000000000000000000000
      FF00FFFFFF000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF000000
      00008484840000FFFF008484840000FFFF008484840000FFFF008484840000FF
      FF008484840000FFFF000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000FFFF00008484840000000000000000000000000000000000FFFF
      0000000000008484840084848400FFFFFF0000000000000000000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000000000000000000000008484840000FFFF008484840000FFFF008484
      840000FFFF00848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF008400000084000000840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400000000000000000000000000000000000000
      00008484840084848400FFFFFF0000000000000000000000FF00FFFFFF000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6
      C600FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000FFFF000084848400000000000000000000000000848484000000
      000084848400FFFFFF00000000000000000000000000FFFFFF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF00008484840000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000084840000FFFF000084840000FFFF000084840000FFFF000084
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00000084000000FF000000
      84000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000084000000000000000000000000000000000000000084
      840000FFFF000084840000FFFF00FFFFFF0000000000FFFFFF0000FFFF000084
      840000FFFF00008484000000000000000000000000000000000000000000C6C6
      C600C6C6C60000000000C6C6C600C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000000000000840000008400000000000000000000000000000000FFFF000084
      840000FFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF000084840000FFFF0000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000000000000840000008400000000000000000000000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008400000084000000000000000000000000000000840000008400
      000000000000000000000000000084848400000000000000000000000000C6C6
      C600C6C6C60000000000C6C6C600C6C6C60000000000C6C6C600000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008400
      0000840000000000000000000000848484008484840084848400000000000000
      000084000000840000000000000084848400000000000000000000000000C6C6
      C6000000000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000840000008400000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF0000848484008484840084848400FFFF0000FFFF
      000000000000000000008484840000000000000000000000000000000000C6C6
      C600C6C6C60000000000C6C6C600C6C6C60000000000C6C6C600000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008400
      0000840000000000000000000000000000008400000084000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFFFF00FFFFFF008484840000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0084000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000084848400C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C6008400000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      000000FFFF00C6C6C6000000000000000000000000008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF008484840000000000000000000000
      00000000000000000000C6C6C600C6C6C6008400000084000000000000000000
      0000FFFFFF0084848400848484008484840084848400FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000848484000000
      000000000000FFFFFF00C6C6C60000FFFF00C6C6C60000FFFF000000000000FF
      FF00C6C6C60000FFFF000000000000000000000000008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF008484840000000000848484000000
      0000000000000000000000000000848484008400000084000000840000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000FFFF00C6C6C60000FFFF00C6C6C60000000000C6C6
      C60000FFFF00C6C6C6000000000000000000000000008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF008484840000000000000000008484
      8400000000000000000084848400000000008400000084000000840000000000
      00000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00C6C6C60000FFFF00C6C6C600000000000000000000FF
      FF00C6C6C60000FFFF000000000000000000000000008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000000000000840000000000000000000000848484000000000000000000FFFF
      FF0000000000FFFFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000FFFFFF008484840084848400FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000FFFF0000000000000000000000000000FFFF00C6C6C60000FFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      FF00000084000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000FF000000FF000000
      FF000000FF000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      000084848400000000000000000000000000FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C6C6C6000000
      00000000000000000000C6C6C60000FFFF00C6C6C60000FFFF00000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000848484000000000000000000FFFFFF000000FF000000FF000000
      FF000000FF000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000008484840000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000848484000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000084848400FFFFFF00FFFF00008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF000000000084848400FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000008400000084000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFF0000FFFFFF008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000000000000000000000000000084848400FFFF000000000000000000000000
      00000000000000000000FFFF0000000000008400000084000000840000000000
      000084848400FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000084848400FFFFFF00FFFF00008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000084848400000000000000000084848400FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000008400000084000000840000000000
      000084848400FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000084848400FFFF0000FFFFFF008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C60084848400FFFF000000000000000000000000
      00000000000000000000FFFF0000000000008400000084000000000000000000
      000084848400FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFF00008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF0084848400FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00000000008400000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFF0000FFFFFF008484
      8400848484008484840084848400848484008484840000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C60084848400FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF0084848400FFFFFF00FFFF0000FFFFFF00FFFF
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFF0000FFFFFF00FFFF
      0000FFFFFF0000000000000000000000000000000000000000000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C60084848400FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      84008484840084848400000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00C6C6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848484008484840084848400848484008484840084848400848484008484
      84008484840084848400848484004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00000000000000000000FF
      FF00FFFFFF00000000000000000000FFFF000000000000000000000000000000
      000000000000FFFFFF0084000000FFFFFF0084000000FFFFFF00848484000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00848484000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00848484000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00848484000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00848484000000
      0000000000000000FF000000FF0000000000000000004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B000000000000000000000000000000
      0000000000004B4B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF008400000000000000000000000000
      000000000000FFFFFF0084000000FFFFFF0084000000FFFFFF00848484000000
      0000000000000000FF000000FF00000000004B4B4B00DFFFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00DFFFFF004B4B4B0000000000000000000000
      00004B4B4B004B4B4B004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400000084000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000004B4B4B0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0060DFDF0080FFFF004B4B4B0000000000000000004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF008400000084000000840000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000FF000000FF00000000004B4B4B0080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF004B4B4B0000000000000000000000
      0000000000004B4B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4B4B0000FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF004B4B4B0000000000000000000000
      0000000000004B4B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000004B4B4B004B4B4B004B4B4B004B4B
      4B0010BFCF0080FFFF0080FFFF00DFFFFF004B4B4B0000000000000000000000
      0000000000004B4B4B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4B4B0000FFFF00FFFFFF0000CF
      CF004B4B4B004B4B4B004B4B4B004B4B4B00000000004B4B4B004B4B4B004B4B
      4B004B4B4B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000004B4B4B004B4B4B004B4B
      4B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000008484840000FFFF000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000848484000000000000000000C6C6C60000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      84000000000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C60000FFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000084848400000000000000
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF00000000000000000000848484000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      FF00FF000000FFFF0000FF000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000008484840000FFFF000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF0000FF000000FFFF0000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      FF00FF000000FFFF0000FF000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF0000FF000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000FF008484840084848400FFFFFF0084848400848484000000
      FF00FF000000FFFF0000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      0000848484000000FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000
      FF0084848400FF000000FFFF0000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFF00000000FF00FFFF0000FFFFFF00FFFF00000000FF00FFFF
      0000FFFFFF008484840084848400000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF00000000FF000000FF000000FF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084848400000000000000
      0000FFFFFF00FFFF00000000FF00FFFFFF00FFFF0000FFFFFF000000FF00FFFF
      0000FFFFFF000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF0084000000FFFFFF00000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      000000000000848484000000000000000000FFFF000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008484840000000000848484000000000000FFFF0000000000848484000000
      000084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0084000000840000008400000084000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C6000000000000FFFF00848484000000000000FFFF00000000008484840000FF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000848484000000000084848400000000008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000848484000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000000000000084848400FFFFFF0084848400FFFF
      FF0084000000840000008400000084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000FFFFFF008484
      8400000000000000000000FFFF0084848400000000008484840000FFFF000000
      00000000000084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF0000000000FFFFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000848484008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000FFFFFF000000
      000000FFFF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF00000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF0000FFFF000000
      000000FFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000084848400FFFFFF0084848400FFFF
      FF0084000000840000008400000084000000C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C600000000000000000000000000FFFFFF008484
      8400000000000000000000FFFF0084848400000000008484840000FFFF000000
      00000000000084848400FFFFFF00000000000000000000000000000000008400
      0000FFFF0000FFFF00000000FF00FFFF0000FFFF000084000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00848484008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      840084848400FFFFFF00FFFFFF00000000000000000000000000000000008400
      0000FFFF0000FFFF00000000FF00FFFF0000FFFF000084000000000000000000
      0000000000000000FF000000FF00000000008484840000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00848484008484
      84008484840084848400848484008484840084848400C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C600000000000000000000000000FFFFFF00FFFF
      FF000000000000FFFF00848484000000000000FFFF00000000008484840000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000008400
      0000FFFF0000FFFF00000000FF00FFFF0000FFFF000084000000000000000000
      FF000000FF000000FF0084848400000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFF
      FF008484840000000000848484000000000000FFFF0000000000848484000000
      000084848400FFFFFF00FFFFFF00000000000000000000000000000000008400
      0000FFFF0000FFFF00000000FF00FFFF0000FFFF000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000084848400840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000008484840084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      000000000000848484000000000000000000C6C6C60000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000FF00000000FF
      FF00FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      84008484840084848400FFFFFF00848484000000000000000000000000008484
      84000000000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000084848400000000000000
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF00000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000FF00000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF000000FF00C6C6C600FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      FF00FF000000FFFF0000FF00000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF0000FF000000FFFF000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000
      FF00FF000000FFFF0000FF00000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF000000FF000000FF000000FF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000FFFF00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000
      FF00FFFF0000FF000000FFFF000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000FFFF00000000FF008484840084848400FFFFFF0084848400848484000000
      00000000000000000000FF00000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF000000FF00FFFFFF000000
      FF00FFFFFF0084848400FFFFFF00848484000000000000000000FFFF0000FFFF
      0000848484000000FF00FFFF0000FFFFFF00FFFF0000FFFFFF008484840000FF
      000000FF000000000000FFFF000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C6000000FF00C6C6
      C600FFFFFF008484840084848400848484000000000000000000848484008484
      8400FFFFFF00FFFF00000000FF00FFFF0000FFFFFF00848484008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF00000000FF008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000000000008484840000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000FFFFFF008484840084848400848484008484
      8400848484008484840000000000000000000000000084848400000000000000
      0000FFFFFF00FFFF00000000FF00FFFFFF008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFF000084848400848484008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484000000000000000000FFFF0000000000008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000FFFF0084848400C6C6C600FFFFFF00C6C6
      C60000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF000000
      0000FFFFFF000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600FFFFFF00C6C6
      C60000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000084848400FFFFFF00C6C6C6000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600FFFFFF000000
      0000FFFFFF000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00000000000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF000000
      000000000000000000000000000000FFFF0084848400C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C6000000000000000000000000000000000000000000FFFF
      FF0084000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0084000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF00FF000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000626262000000000000000000000000000000000000000000D9A77D000000
      0000D9A77D000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000062626200626262000000000000000000FFFF9900D9A77D00D9A77D000000
      0000D9A77D00D9A77D00FFFF990000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200626262006262
      620062626200626262006262620000000000D9A77D00FFFF9900D9A77D000000
      0000D9A77D00FFFF9900D9A77D0000000000000000000000000084848400FFFF
      FF008484840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6008484840084848400C6C6C600000000000000000000000000000000008484
      840000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200000000000000
      0000626262006262620000000000D9A77D00D9A77D00D9A77D00FFFF99000000
      0000FFFF9900D9A77D00D9A77D00D9A77D00000000000000000084848400FFFF
      FF008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000008484
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200000000000000
      0000626262000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000062626200000000000000
      0000000000000000000000000000D9A77D00D9A77D00D9A77D00FFFF99000000
      0000FFFF9900D9A77D00D9A77D00D9A77D00000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF0000FFFF00000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9A77D00FFFF9900D9A77D000000
      0000D9A77D00FFFF9900D9A77D0000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF9900D9A77D00D9A77D000000
      0000D9A77D00D9A77D00FFFF9900000000000000000084000000C6C6C6008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000008484
      840000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000008484840000000000FFFFFF00FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000008484840062626200626262006262
      6200626262006262620062626200626262008484840000000000D9A77D000000
      0000D9A77D000000000000000000000000008400000084000000840000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0084840000FFFF
      0000FFFF0000FFFF000084848400000000000000000000000000000000000000
      00000000000000000000000000000000000062626200DFFFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF00DFFFFF006262620000000000000000000000
      0000000000000000000000000000000000008400000000000000840000008400
      0000000000000000000000000000848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484000084840000FFFF
      0000FFFF0000FFFF000084848400FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000006262620080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0060DFDF0080FFFF006262620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000FFFFFF00FFFF
      0000FFFF0000FFFF000084848400848484008484840084848400848484000000
      0000000000000000000000000000000000006262620080FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF006262620000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848400008484
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000848484000000
      0000000000000000000000000000000000006262620000FFFF0080FFFF0080FF
      FF0080FFFF0080FFFF0080FFFF0080FFFF006262620000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000008484840000000000848400008484
      0000FFFFFF00FFFF0000FFFF0000FFFF00000000000084848400000000000000
      0000000000000000000000000000000000006262620062626200626262006262
      620029D8E80080FFFF0080FFFF00DFFFFF006262620000000000000000000000
      0000000000000000000000000000000000008400000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000008484840000000000FFFF
      FF00848400008484000000000000000000008484840000000000000000000000
      0000000000000000000084848400000000006262620000FFFF00FFFFFF0019E8
      E800626262006262620062626200626262008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200626262006262
      6200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000FF00000084000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00000000000000000000C6C6C600C6C6C600C6C6C6000000000000000000C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C6000000000000000000FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF0084848400000000000000000000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00000000000000
      00000000000084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF0084848400848484008484840000FF
      FF00FFFFFF008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      000084848400FFFFFF000000FF000000FF000000FF0000000000FFFFFF0000FF
      FF00FFFFFF0084848400848484008484840000000000FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000840000008400000084000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A77D00A376
      0000A3760000A3760000D9A77D000000000000000000D9A77D00A3760000A376
      0000A3760000D9A77D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004B4B4B004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3760000D9A7
      7D00CB8C4400CB8C4400A37600000000000000000000A3760000FF9F7F00CB8C
      4400CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000CB8C4400A65400006336000063360000A65400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CB8C4400A65400006336000063360000A654000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000000DF000000BF2A004B4B4B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FF9F
      7F00D9A77D00CB8C4400A37600000000000000000000AA7F5500FF9F7F00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000A3760000D9A77D00CB8C4400CB8C4400CB8C44006336
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3760000D9A77D00CB8C4400CB8C4400CB8C440063360000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000000DF000000DF000000BF2A004B4B4B0000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000A3760000D9A77D00D9A77D00CB8C4400CB8C4400A376
      0000A65400000000000000000000000000000000000000000000000000000000
      0000A3760000D9A77D00D9A77D00CB8C4400CB8C4400A3760000A65400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000000DF000000DF000000DF000000BF2A004B4B4B00000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000A3760000D9A77D00D9A77D00D9A77D00CB8C4400A376
      0000A65400000000000000000000000000000000000000000000000000000000
      0000A3760000D9A77D00D9A77D00D9A77D00CB8C4400A3760000A65400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000000DF000000FF090000DF000000DF000000BF2A004B4B4B000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000A3760000D9A77D00D9A77D00D9A77D00D9A77D00A376
      0000A65400000000000000000000000000000000000000000000000000000000
      0000A3760000D9A77D00D9A77D00D9A77D00D9A77D00A3760000A65400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000000FF2A0000DF000000FF090000DF000000DF000000BF2A004B4B
      4B00000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      0000000000000000000000000000A3760000FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00A37600000000000000000000000000000000000000000000000000000000
      000000000000A3760000FFFFCC00FFFFCC00FFFFCC00FFFFCC00A37600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000055FF000000FF2A0000DF000000FF090000DF000000DF000000BF
      2A004B4B4B000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3760000A3760000A3760000A376
      0000CB8C44000000000000000000000000000000000000000000000000000000
      00000000000000000000A3760000A3760000A3760000A3760000CB8C44000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F000055FFAA0000FF090000FF2A0000DF000000FF090000DF000000DF
      0000007F00000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001FFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001FFF000000000000000000000000000000000000000000000000000000
      0000007F000055FFAA0000FF090000FF090000FF2A0000DF000055FFAA00007F
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001FFF00001FFF00001F
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001F
      FF00001FFF00001FFF0000000000000000000000000000000000000000000000
      0000007F0000AAFF2A0000FF090000FF090000FF090000FF2A00007F00000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001FFF00001FFF00001FFF00001F
      FF00001FFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001FFF00001F
      FF00001FFF00001FFF00001FFF00000000000000000000000000000000000000
      0000007F0000AAFF2A0000FF090000FF0900AAFF2A00007F0000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001FFF000000
      00000000000000000000000000000000000000000000001FFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001FFF000000000000000000000000000000000000000000000000000000
      0000007F0000AAFFAA0000FF0900AAFF2A00007F000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F0000AAFFAA00AAFFAA00007F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001FFF00000000000000
      0000000000000000000000000000000000000000000000000000001FFF000000
      000000000000000000000000000000000000000000000000000000000000001F
      FF00000000000000000000000000000000000000000000000000000000000000
      0000007F0000AAFFAA00007F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FFFF
      CC00FFFFCC00D9A77D00A37600000000000000000000AA7F5500FFFFCC00FFFF
      CC00FF9F7F00A376000000000000000000000000000000000000000000000000
      000000000000001FFF0000000000001FFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001FFF000000000000000000001FFF0000000000001FFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A77D00AA7F
      5500AA7F5500AA7F5500D9A77D000000000000000000D9A77D00AA7F5500AA7F
      5500AA7F5500D9A77D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6C600C6C6
      C60000000000FF00FF00FF00FF00FF00FF000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00C6C6
      C600000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00C6C6
      C60000000000C6C6C600C6C6C600000000000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00C6C6
      C60000000000FFFFFF00C6C6C600000000000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6
      C600000000000000000000000000000000008484840000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00C6C6
      C60000000000FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C6000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6
      C60000000000FFFFFF00C6C6C600000000000000000084848400840000008400
      000084000000840000008400000084000000840000008400000000000000C6C6
      C60000000000C6C6C600000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00C6C6
      C60000000000FFFFFF00C6C6C600000000000000000084848400848484008484
      840084848400848484008484840084848400848484008484840000000000C6C6
      C60000000000C6C6C600000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400FFFFFF00000000000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00C6C6C600000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C6C6C600000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      000000000000C6C6C600000000000000000084848400FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60084848400848484008484840084848400848484008484
      84008484840000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000C6C6C600000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008484840084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF00FF000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0084000000FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FF00FF00FF00FF000000000000000000000000000000
      0000000000008484840084000000840000008400000084000000840000008400
      0000840000008400000000000000000000008484840084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000666666003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D00A7A7A700FF00FF00FF00FF0000000000666666003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D00A7A7A700FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000303030003030300030303000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660055DFD4003D3D3D0055DF
      FF0055DFFF0055DFFF0055DFFF0055DFFF0055DFD40055DFFF0055DFD40055DF
      FF0055C0D4003D3D3D00FF00FF00FF00FF006666660055DFD4003D3D3D0055DF
      FF0055DFFF0055DFFF0055DFFF0055DFFF0055DFD40055DFFF0055DFD40055DF
      FF0055C0D4003D3D3D00FF00FF00FF00FF000000000000000000000000000000
      000000000000303030003030300000A0AB0000A0AB0000A0AB00303030000000
      000000000000000000000000000000000000C6C6C60084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000006666660000F2FF0055DFD4003D3D
      3D00A9FFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DF
      D40055DFFF0055DFD4003D3D3D00FF00FF006666660000F2FF0055DFD4003D3D
      3D00A9FFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DFFF0055DF
      D40055DFFF0055DFD4003D3D3D00FF00FF000000000000000000000000003030
      30003030300000A0AB0000A0AB0000F2FF0000F2FF0000F2FF0000A0AB003030
      300000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000007373730054FFFF0000F2FF0055DF
      D4003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D007373730054FFFF0000F2FF0055DF
      D4003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D0000000000303030003030300000A0
      AB0000A0AB0000F2FF0000F2FF00633600006336000000A0AB0000F2FF0000A0
      AB0030303000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400000000000000000000000000000000007373730054FFFF0054FFFF0000F2
      FF0055DFD40000F2FF0055DFD40099F8FF0099F8FF0099F8FF0099F8FF0099F8
      FF0099F8FF0099F8FF00B4B4B400FF00FF007373730054FFFF0054FFFF0000F2
      FF0055DFD40000F2FF0055DFD400FFFFFF0098F7FF0099F7FF0098F7FF0098F7
      FF0098F7FF0098F7FF0098F7FF00B4B4B4006336000000A0AB0000A0AB0000F2
      FF0000F2FF00633600007F5B0000D9A77D00D9A77D006336000000A0AB0000F2
      FF0000A0AB00303030000000000000000000FFFFFF00C6C6C6000000FF000000
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      84000000000000000000000000000000000081818100A9FFFF0054FFFF0054FF
      FF0000F2FF00EFAD00007F5B0000EFAD0000AAFFFF0099F8FF00AAFFFF0099F8
      FF00AAFFFF0099F8FF0076767600FF00FF0081818100A9FFFF0054FFFF0054FF
      FF0000F2FF0055DFD400B4B4B400FFFFFF0099F8FF00AAFFFF0099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF00B4B4B4006336000000F2FF0000F2FF006336
      00007F5B0000BC720000BC720000BC720000BC720000D9A77D006336000000A0
      AB0000F2FF0000A0AB003030300000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000008181810054FFFF00A9FFFF0054FF
      FF0054FFFF007F5B0000D9A77D007F5B0000FFFFFF00AAFFFF0099F8FF00AAFF
      FF0099F8FF00AAFFFF0076767600FF00FF008181810054FFFF00A9FFFF008181
      8100737373005959590059595900595959005959590073737300AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF0076767600633600006336000063360000BC72
      0000BC720000BC72000000F2FF00BC720000BC720000BC720000D9A77D006336
      000000A0AB0000F2FF0000A0AB00303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A00A9FFFF0054FFFF00EFAD
      0000A2760000A2760000D9A77D00A37700007F5B0000EFAD0000AAFFFF0099F8
      FF00AAFFFF0099F8FF0076767600FF00FF009A9A9A00A9FFFF0054FFFF008181
      8100005FFF00001FFF00001FFF00001FFF00001FFF005959590099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF0076767600633600007F5B0000A3760000BC72
      0000BC720000BC72000068F5FF00BC720000BC720000BC720000BC720000D9A7
      7D006336000000A0AB0030303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A0054FFFF00A9FFFF00AA7F
      0000FFFFCC00D9A77D00D9A77D00D9A77D00D9A77D007F5B0000AAFFFF00AAFF
      FF0099F8FF00AAFFFF0081818100FF00FF009A9A9A0054FFFF00A9FFFF008181
      81001D94F7001D94F700005FFF00001FFF00001FFF0059595900AAFFFF0099F8
      FF00AAFFFF0099F8FF00AAFFFF00818181000000000063360000FF9F2A00D9A7
      7D00BC720000BC720000BC720000BC72000000F2FF0000F2FF00BC720000BC72
      0000D9A77D006336000030303000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000A7A7A700A7A7A70055C0D400F7D0
      6C00E5B72600E2B62900F6CF6D00AA7F0000AA7F0000F7CF6C00AAFFFF0099F8
      FF00AAFFFF0099F8FF008E8E8E00FF00FF00A7A7A700A7A7A70000F2FF00A7A7
      A7009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A00A7A7A70099F8FF00AAFF
      FF0099F8FF00AAFFFF0099F8FF008E8E8E00000000000000000063360000FF9F
      2A00D9A77D00BC720000BC720000BC720000BC72000068F5FF0000F2FF0000F2
      FF00BC720000D9A77D0030303000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00A7A7A70000F2FF0000F2
      FF0000F1FF00F1BF2B00FFFFCC00AA7F0000AAFFFF00AAFFFF00AAFFFF0055DF
      FF0055DFFF0055C0D4009A9A9A00FF00FF00FF00FF00A7A7A70000F2FF0000F2
      FF0000F2FF0000F2FF00B4B4B400FFFFFF00AAFFFF00AAFFFF00AAFFFF0099F8
      FF0055DFFF0055DFFF0055C0D4009A9A9A000000000000000000000000006336
      0000FFFF7F00D9A77D00BC72000068F5FF00BC720000BC72000000F2FF0000F2
      FF00BC720000BC720000D9A77D00303030000000000000000000848484000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF009B9B9B0054FFFF0067F4
      FF0067F4FF00F8D06D00FDC83100F7CF6C00AAFFFF00AAFFFF00B4B4B400A0A0
      A0008D8D8D0081818100A7A7A700FF00FF00FF00FF009B9B9B0054FFFF0067F4
      FF0067F4FF0067F4FF0091919100FFFFFF00AAFFFF00AAFFFF00AAFFFF00B4B4
      B400A0A0A0008D8D8D0081818100A7A7A7000000000000000000000000000000
      000063360000FFFF7F00D9A77D00BC72000068F5FF0000F2FF0000F2FF00BC72
      0000D9A77D00FF9F2A007F5B0000633600008484840000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF009B9B9B008D8D
      8D008D8D8D00B4B4B40090909000FFFFFF00AAFFFF00FFFFFF00A1A1A100E6E6
      E600DADADA00DADADA00B4B4B400FF00FF00FF00FF00FF00FF009B9B9B008D8D
      8D008D8D8D00B4B4B40090909000FFFFFF00FFFFFF00AAFFFF00AAFFFF00A1A1
      A100E6E6E600DADADA00DADADA00B4B4B4000000000000000000000000000000
      00000000000063360000FFFF7F00D9A77D00BC720000BC720000D9A77D00FF9F
      2A007F5B00006336000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0091919100FFFFFF00FFFFFF00AAFFFF00A7A7A700FFFF
      FF00E7E7E700B4B4B400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0091919100FFFFFF00AAFFFF00FFFFFF00AAFFFF00A7A7
      A700FFFFFF00E7E7E700B4B4B400FF00FF000000000000000000000000000000
      0000000000000000000063360000FFFF7F00FFFF7F00FFFF7F007F5B00006336
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0091919100FFFFFF00FFFFFF00FFFFFF008D8D8D00FFFF
      FF00B4B4B400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0091919100FFFFFF00FFFFFF00AAFFFF00FFFFFF008D8D
      8D00FFFFFF00B4B4B400FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000633600006336000063360000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00B4B4B4009A9A9A009A9A9A008E8E8E0081818100C1C1
      C100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00B4B4B400A7A7A700A7A7A7009A9A9A008E8E8E008181
      8100C1C1C100FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700737373007373
      7300595959004B4B4B004B4B4B003D3D3D00303030003030300030303000A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      00000000000000000000000000000000000000000000000000007F5B00007F5B
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      00007F5B0000000000000000000000000000A7A7A70059595900CDCDCD00E6E6
      E600C1C1C100CDCDCD00F0F0F000EDEDED00E6E6E600A7A7A700333333003030
      3000A7A7A7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      000000000000000000000000000000000000000000007F5B0000E3C1A400E3C1
      A400E3C1A400E3C1A400E3C1A400E3C1A400E3C1A400E3C1A400E3C1A4007F5B
      0000D9A77D007F5B000000000000000000004B4B4B0059595900DADADA00E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600DADADA00737373002929
      2900303030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000007F5B00007F5B00007F5B00007F5B
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      00007F5B0000D9A77D007F5B0000000000004B4B4B0059595900D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00737373003636
      3600303030009A9A9A00A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000840000008400
      000084000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF008484840000000000840000000000000000000000000000000000
      0000000084000000000000000000000000007F5B0000E3C1A400E3C1A400E3C1
      A400E3C1A400E3C1A400E3C1A400FFFF9900FFFF9900FFFF9900E3C1A400E3C1
      A4007F5B00007F5B00007F5B0000000000004B4B4B0059595900D9A77D00D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00737373004A4A
      4A00303030007373730030303000A7A7A7000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600FFFFFF008484840084000000840000008400
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      8400000084000000000000000000000000007F5B0000E3C1A400E3C1A400E3C1
      A400E3C1A400E3C1A400E3C1A400D9A77D00D9A77D00D9A77D00E3C1A400E3C1
      A4007F5B0000D9A77D007F5B0000000000005959590059595900D9A77D007373
      7300737373007373730073737300737373007373730073737300737373005353
      53004B4B4B00737373002929290030303000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF0084848400000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000084000000
      8400000084000000840000008400000000007F5B00007F5B00007F5B00007F5B
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      00007F5B0000E3C1A400D9A77D007F5B00005959590059595900D9A77D00AAFF
      FF00AAFFFF00AAFFFF00AAFFFF0099F8FF0099F8FF0099F8FF009A9A9A005656
      56004B4B4B007373730059595900303030000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      8400000084000000000000000000000084007F5B0000E3C1A400E3C1A400E3C1
      A400E3C1A400E3C1A400E3C1A400E3C1A400E3C1A400E3C1A400D9A77D00E3C1
      A4007F5B00007F5B0000E3C1A4007F5B00006666660059595900AAFFFF00AAFF
      FF00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700AAFFFF0099F8FF007171
      71005959590073737300595959003D3D3D0000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      000000008400000000000000000000008400000000007F5B00007F5B00007F5B
      00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B0000D9A7
      7D00E3C1A4007F5B00007F5B00007F5B00007373730098989800AAFFFF00AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0099F8FF009898
      98005959590073737300595959004B4B4B0000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000840000000000000000007F5B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F5B
      0000D9A77D00E3C1A400D9A77D007F5B000073737300A6A6A60000000000AAFF
      FF00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A70099F8FF00AAFFFF00A6A6
      A600666666008E8E8E00595959004B4B4B0000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000007F5B
      0000FFFFFF007F5B00007F5B00007F5B00007F5B00007F5B0000FFFFFF007F5B
      00007F5B00007F5B00007F5B00000000000073737300B1B1B100000000000000
      0000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00B1B1
      B100737373008E8E8E00666666004B4B4B0000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000000000000000000000000000000000000000000000007F5B
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F5B0000000000000000000000000000A7A7A70081818100595959005959
      5900595959005959590059595900595959005959590059595900666666008181
      8100A7A7A7008E8E8E0073737300595959000000000000000000FFFFFF00FFFF
      FF00FFFF0000FFFF0000C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      00007F5B0000FFFFFF007F5B00007F5B00007F5B00007F5B00007F5B0000FFFF
      FF007F5B000000000000000000000000000000000000A7A7A7008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E009A9A
      9A00DADADA008E8E8E008181810066666600000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      00007F5B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F5B00000000000000000000000000000000000000000000C1C1
      C100B1B1B100DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00B1B1B100737373000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000007F5B00007F5B00007F5B00007F5B00007F5B00007F5B00007F5B
      00007F5B00007F5B00000000000000000000000000000000000000000000A7A7
      A70081818100C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100C1C1
      C100C1C1C100C1C1C10081818100A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A7008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7007373
      73007373730059595900595959004B4B4B004B4B4B003D3D3D00303030003030
      300030303000A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A70063360000CDCD
      CD00E6E6E600C1C1C100C1C1C100CDCDCD00F0F0F000EDEDED00E6E6E600A7A7
      A7003333330030303000A7A7A7000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000633600006336000063360000DADA
      DA00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600DADA
      DA00CB8C440063360000303030003030300000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000000000000000000000000000063360000CB8C440063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C4400CB8C
      4400CB8C4400633600007F5B00003030300000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000000000000000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C
      4400CB8C440063360000CB8C44003030300000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF00008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C
      4400CB8C440063360000CB8C44003D3D3D0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000000000000000000000000000063360000D9A77D0063360000AA3F
      2A00633600006336000063360000633600006336000063360000633600006336
      0000CB8C440063360000CB8C44004B4B4B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000000000000000000000000000063360000D9A77D00633600009A9A
      9A00AAFFFF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8
      FF006336000063360000CB8C44004B4B4B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6C6008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      00008400000084000000000000000000000063360000D9A77D0063360000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF0063360000CB8C44004B4B4B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000840000000000000063360000D9A77D007F5B0000AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF007F5B0000CB8C44004B4B4B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      00000000000084000000840000008400000063360000D9A77D007F5B0000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF007F5B0000CB8C44004B4B4B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      00000000000084000000840000008400000063360000D9A77D0098989800AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF0098989800CB8C44005959590000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      00000000000084000000840000008400000063360000D9A77D00A6A6A6000000
      0000CDCDCD00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF00A6A6A600D9A77D006666660000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000000000000A7A7A700633600007F5B00000000
      000000000000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF00AAFFFF007F5B000063360000A7A7A70000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000A7A7A7006336
      0000633600006336000063360000633600006336000063360000633600006336
      0000633600009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000005B7000005B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B6000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B700000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000006D7000005
      BA000005B7000005B700000000000000000000000000000000000005B7000005
      B70000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B7000005B600000000000005B6000005B7000005B7000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000005B6000006C7000006C7000006CE000005B400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000000000000006C1000005C1000006DA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000005B6000006D7000006CE000006DA000006E900000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      00000006E5000006DA000006D30000000000000000000006E5000006EF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000006
      F8000006DA000006EF00000000000000000000000000000000000006F8000006
      F60000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000006F6000006
      F6000006F8000000000000000000000000000000000000000000000000000006
      F6000006F600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000006F6000006F6000006
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000006F6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F6000006F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097300200A338
      0100A03601009A32020000000000000000000000000097300200A03601009D35
      0100952E02000000000000000000000000000000000000000000000000000000
      000000000000A0756E0074434200744342007443420074434200744342007443
      4200744342007443420074434200000000000000000000000000000000001B88
      CC001B88CC008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E3501000000
      000000000000932D0200952D020000000000952D020099300200000000000000
      0000972F02000000000000000000000000000000000000000000000000000000
      000000000000A0756E00FFF8E500F7EDD900F7EBD500F4E9D100F4E9D000F4E7
      CF00F6EAD000EEDDC400754443000000000000000000000000001B88CC0074C7
      E90067C5EB00BAB7AA00FBE7D300F8EEDC00F6EDD700F4E9D300F4E9D000F4E7
      D000F4E6CF00F6E7CE008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E3501000000
      00000000000000000000952D020000000000952E020000000000000000000000
      0000962E02000000000000000000000000000000000000000000000000000000
      000000000000A0756E00F7EDDC00F2D9BF00F2D7BB00F0D5BA00EFD4B500EED3
      B200EED9BF00E5D0BA007544430000000000000000001B88CC008CE1F6007FEF
      FF0072EEFF00BAB7AA00F3DCCF00F3DDC500F3D5B600F2D4B500F0D3B200F0D1
      AD00EED4B600EBDAC2008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E350100912C
      02000000000000000000932D020000000000952E020000000000000000008A27
      0300962F02000000000000000000000000000000000000000000000000000000
      000000000000A0756E00FAEFDE00FCC59100FCC59100FCC59100FCC59100FCC5
      9100FCC59100E3D1BC007544430000000000000000001B88CC008AE0F6007AE7
      FF006BE6FF00BAB7AA00F6E1D500F7DCC000F7D0AB00F7D0AB00F7D0AB00F6CE
      A500F2D3B100EBDCC5008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A138
      01009C330200A13601009F330100000000009D3201009F350100962F0200952E
      02000000000000000000000000000000000000000000A0756E00744342007443
      420074434200A0756E00FCF4E700F6D9BA00F7D7B600F6D4B500F6D4B200F4D1
      AD00F0DCC200E6D3C00081524C0000000000000000001B88CC0097E2F6008BED
      FF007DEBFF00BAB7AA00F7E5DC00F7DEC600F7D3B100F7D4B100F6D3B000F4D0
      AB00F2D5B600EEDECA008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099310100A02F0000882F0500692D1500882D06009F2E0000972F02000000
      00000000000000000000000000000000000000000000A0756E00FFF8E500F7ED
      D900F7EBD500A0756E00FEF6EB00F8DABC00F8D9B800F8D8B700F7D5B600F7D4
      B200F3DEC700E7D7C50081524D0000000000000000001B88CC00A1E5F6009AEF
      FF008CEEFF00BAB7AA00F8EAE200F8E7D400F8DDC200F7DDC100F7DABF00F6D8
      BB00F2DCC200EFE1D0008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000006848390098868700952E020000000000000000000000
      00000000000000000000000000000000000000000000A0756E00F7EDDC00F2D9
      BF00F2D7BB00A0756E00FEFAF200FCC59100FCC59100FCC59100FCC59100FCC5
      9100FCC59100EBDDCF008F5F5A0000000000000000001B88CC00ADE6F600ACF2
      FF009CF0FF00BAB7AA00FBF0EB00FBE1C500FBD0A900FAD1AA00F8D0A900F8CE
      A400F6D8B800F4E9DA008E5D5900000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000004B3F3500B19D9C00BDA3A1006E59510055433900000000000000
      00000000000000000000000000000000000000000000A0756E00FAEFDE00FCC5
      9100FCC59100A0756E00FFFCFA00FCE3CC00FBE0C700FADEC600F8DEC400FCE2
      C600FCF0DE00E1D7CE008F5E590000000000000000001B88CC00B7E9F600BCF4
      FF00ACF3FF00BAB7AA00FEF4F000FEF4EB00FAEBDD00FAEADA00F8E7D700F8E9
      D800F7EBDD00E1DAD3008E5D5900000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000088766E00E6D4D70077635900AC8F8C00997B77004B3B30000000
      00000000000000000000000000000000000000000000A0756E00FCF4E700F6D9
      BA00F7D7B600A0756E00FFFFFF00FEFFFF00FBFBFB00FAF8F700FAFAF600E5D5
      D000C6B1AF00A79395009E675A0000000000000000001B88CC00C0EAF600D0FA
      FF00BFF7FF00BAB7AA00FEF6F200FFFFFF00FEFFFE00FBF8F700FAFAF700EBE0
      D900C7ADA300B59A8B008E5D5900000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000055413500E2D9D800AD9D98004B372A00A0868000C6A4A500664F44000000
      00000000000000000000000000000000000000000000A0756E00FEF6EB00F8DA
      BC00F8D9B800A0756E00FFFFFF00FFFFFF00FFFEFE00FFFCF800FFFEFA00A075
      6E00A0756E00A0756E00A0756E0000000000000000001B88CC00C7EBF600E2FC
      FF00D0FAFF00BAB7AA00FFF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4BB
      B500D7925500F47A410000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000009175
      6F0090827900E7E5E2005D4A3D00000000005E4A3E00C0A09F0091756F009175
      6F000000000000000000000000000000000000000000A0756E00FEFAF200FCC5
      9100FCC59100A0756E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A075
      6E00E5A15400B6735D000000000000000000000000001B88CC00CFEDF600F6FF
      FF00E2FEFF00BAB7AA00FBEBE200FBF2ED00FBF0EB00FAEFEB00FAF0ED00DAB4
      A700B79A6F001B88CC0000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000005642
      3600CCC5C10097898000000000000000000000000000826B6300B29592005642
      36000000000000000000000000000000000000000000A0756E00FFFCFA00FCE3
      CC00FBE0C700A0756E00A0756E00A0756E00A0756E00A0756E00A0756E00A075
      6E00AA6D6800000000000000000000000000000000001B88CC00D0EBF600FFFF
      FF00F2FFFF00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7AA00BAB7
      AA006BB4CF001B88CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000006B59
      4D00B0A59E00513E3100000000000000000000000000513E3100997F7A006D57
      4D000000000000000000000000000000000000000000A0756E00FFFFFF00FEFF
      FF00FBFBFB00FAF8F700FAFAF600E5D5D000C6B1AF00A79395009E675A000000
      000000000000000000000000000000000000000000001B88CC00D3EDF700F4F2
      F0009CB7BC0093B4BC0091B4BB0090B4BB008FB4BB008BB1B8009FC4CA00D5FC
      FE006FCEF2001B88CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C5B
      4E00705F530000000000000000000000000000000000000000006B5449006C56
      4B000000000000000000000000000000000000000000A0756E00FFFFFF00FFFF
      FF00FFFEFE00FFFCF800FFFEFA00A0756E00A0756E00A0756E00A0756E000000
      000000000000000000000000000000000000000000001B88CC00DCF6FF00D5BC
      B100A98C8000C1B0AA00C1B0A900C1B0A900C1B0A900C0ACA400A6877900DEE1
      DA0078D0F4001B88CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005441
      3300000000000000000000000000000000000000000000000000000000005541
      35000000000000000000000000000000000000000000A0756E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A0756E00E5A15400B6735D00000000000000
      00000000000000000000000000000000000000000000000000001B88CC00A0C5
      D8007E878800D9CCC600F8F7F600F7F6F400F7F6F400C2B5AD006A868F0073C1
      E0001B88CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0756E00A0756E00A075
      6E00A0756E00A0756E00A0756E00A0756E00AA6D680000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B88
      CC001B88CC0088786F0088786F0088786F0088786F0088786F001B88CC001B88
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100200000100010000000000801000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080080000000000000000000000000000
      0000000000000000000000000000000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF000FFFFFFBFFE3FF000FFFFFF1F
      F81FF00000000000E00FF000000000008007F000000000000003F00000000000
      0001F000000000000000F000000040000001C000000000008001C00040005000
      C001000060002000E000000000005000F000000120140000F803008B00008001
      FC0FC007000080FFFE3FC3FFFFFFC1FF8000EC008020800F0000DC0000000007
      0000DC000000000700008C00000000010000DC00000000000000FD0000000000
      00000100000100000000010000000000000001000000000000000101FFA02000
      000001CB0000300000000006000000000000001600008000000000010000E000
      000000170000E0000000001F07FDF001FF7FFFFFFFFF8FFFFF47FFFFFE7F400F
      FF078000FC3F400FFF478000FC3F400FFF788000FE7F400FF8208000FFFF800F
      F0288000FE7FC00FF00F8000FC3FC00FF0088000FC3FC00FF0008000FC3FC007
      E0288000FC3FC00BC0478000FC3FC00D83078000FC3FFFBE07C78000FC3FFFDE
      0FFF8000FE7FFFEE9FFFFFFFFFFFFFF1FFFFFFFFFFFFF7D7C07FE0017FFDF311
      953FE000BFFB81112A9FF000E00FB210555FF000C007B7FF2A9FF000C007BE10
      555FFFFDC007FF112A83FFFFC0070011554380FB400400D700010071C00700FF
      00000060C00700FF0000007BC00700FF8001007BC00700FFC043007BE00F00FF
      FFE70083BEFB01FFFFFF8FFF7EFD03FFFFFFFC00EDB6FFFFC07FFC00EAAAF003
      9531FC00EAAAE0032000FC00EDB6E0015000FC00FFFFE0012001FC00C01FE000
      5000FC00C01FE0002000FC01C019E0035551FE3F0010E003001FFFF30019E003
      001FFFE10019E00A001F00730039E0FB803F3F730061F1E4C07F3947007FFFFB
      FFFF007F00FFFFEAFFFF007F9FFFFFDB8000FFC7FFF08000C000FF018010FF80
      E000FE0080108080C000FE00801080808000FE00801080800000FE00FFF08080
      0000FF01A05080940000E383FFF080AA000080EF00008094000080FF0000802A
      0000007300008094000000730000FF2A0000004000000000000080C000000000
      000080F3000000000000E3F300000000AC00F000FFFFF80F07FFF0008001E003
      AFFFF0008001C00107FF70008001C001AFFF30008001C001FFFF10008001C001
      C7C710008001C001C7C730008001E003C38770008001B80FC007F00080011E3F
      C007F00080014FFFC007F0008001E7FFC007F0018001BFFFC007F00380031FFF
      F39FF00780074FFFF39FFFFF800FE7FFFFFFFFFFB6E7FFFFC0018001B76BFE49
      C00180018427FE49C0018001B76BFFFFC0018001CEE7FFFFC0018001FFFFC7C7
      C0018001C7C7C7C7C0018001C7C7C387C0018001C387C007C0018001C007C007
      C0018001C007C007C0018001C007C007C0018001C007C007C0038001C007F39F
      C0078001F39FF39FC00FFFFFF39FF39FFFFFFFFFFFFFFFFF0022FFFFC03FC001
      0000FFFFC03FC00100000003003FC001E00700030000C001E00700030000C001
      E00700030000C001E00700030000C001E00700030000C001E00700030000C001
      E00700030000C001E00700030000C001FFFF0003C000C001F81F0003C000C003
      F81F0003C000C007F81F0003C000C00FFFFFE00FFFFFFFFF8001EFEFA491F00F
      8001EFE8BFF5F0088001E92FFBF1F00F8001EEEDB9FFF00D8001EEE8B8F1F008
      8001EEEDB871F00D8001EEEDF83BF00D8001EEEFB83BF00F8001EEEDB87FF00D
      8001E92F18FBD00F80016FED19FBCFFD8001200FFBFFC7FF80011FFD1FFBCFFD
      C0FF3FFF524BDFFFFFFF7FFF1FFFFFFFF00081FFFFFFFFFFF67A00FF8001C001
      F43200FFBFFDDFFDF48600FFB24DD80DF7CE00FFB24DDFFDF44600FFBFFDC001
      F41200FFB24DD861F7B801FFB24DDFE3F7FEDFFFBFFDC007F000FFFFA005FFFF
      83FFDFFFA005FE31E3FFFFBFA005F400C3FFEF9FA005ED8C8BFFFA8FBFFDEC84
      1BFFFF9F8001E8003FFFFFBFFFFFF3F9FFFFFFFFFFFFFFCFF8F8F007F003FFC7
      F8F8F007F001FFC3F870F007F801FFC1F800F007F801FFC0F800C007FFF901C1
      F800C00703FF01C30000C00703FB00470000C01F00F1004F0013001F00E0001F
      00130010003B001F00130011003B001F001F0070C03BC01F001F0076C023C01F
      001F007CF03FF01F8FFF007DF03FF01FFFFFF001FFF3FFFFFFFFF001FFF3FFFF
      FE11F001FFFF07C1F000F001FFF307C1EE00F001FFF307C1D001F001FFF10101
      900380013E780001B0030001007C0001B0032001004C0001A003F00100408003
      8FE780010061C107FFFF0003007FC107FFFF2007007FE38FFFFFF18F007FE38F
      FFFFF8FF007FE38FFFFFFDFFC1FFFFFFF83F9FFFFFFFFDFFF83F0FFFC001F0FF
      F80307FFC001E07FF80783FFC001C03FF800C03FC001800DF800E01FC0018000
      F000000FC0018000F0000007C0018000F0000007C001C000F0000003C001F800
      E01F0003C001F800C03F0001C001F98083FF0001C001F98107FF0003C003F9C3
      0FFF000FC007F9E79FFF000FC00FF9FFC001FFFFFFFFFE3FC001FFFFFF93F80F
      C001FF07F339E003C001FE03E7398000C0017C01E7398000C0013800E7398000
      C0011800C3938000C0010800E7FF8000C0011800FFFF8000C0013800F27FC001
      C0017C01E73FC001C001FE03E73FE003C001FF07E73FE003C001FFFFE73FF007
      C001FFFFF27FF007FFFFFFFFFFFFF80FFFFFF001E1C0E01FAAAAF001C0F0601F
      FFFFF0018070201FBFC2C0018040001FFFE3C00180610010BFC2C0018073201F
      FFCB0001C0FF6019803E0001E187E010803F0007FF03E039803E0007CE01E079
      803F00078601FFF9803E001F0201FFFF803F001FCE01FFF9802A001FCF03FFFF
      FFFF8FFFC387FFF9FFFFFFFFFFFFFFFFFFF9E00FFFFFF000FFF8E00FC3FFF000
      FFD1E00FE3FFF0004941000FC20070007FC0000F8A003000F0C1000FBE001000
      70C3000FB000100070C7001FF0003000F0CF003FF00070007FDF007DF000F000
      43FF00FDF001F000C3FF01D1F003F00043DF03C3F007F00143DFFFC7F00FF003
      FFFFFFC3F01FF007249FFFFFF03FFFFFF01FFFFFFFFFF800F01FE001FFFFF800
      F01FE000FFFFF800F010F000FFDDF800F01FF000FFCDF800F019F0008001F800
      F010FFFDFFCDF800F019FFFFFFDDF000F01980FBBBFFF00070190071B3FFE000
      301F00608001E0001019007BB3FFC07F101F007BBBFF81FF3FF9007BFFFF07FF
      7FFF0083FFFF0FFFFFF98FFFFFFF9FFF8000FE3FFFFFB0008000F80FFE1FB000
      8000E003FC5F800080008000FC7FB00080008000FC3F800080008000FC3FF800
      80008000FC3FF80080008000FE1FF00080008000FF1FF00080008000FD1FE000
      80008000FC1FE00080008000FFFFC07F80008000FE1F81FF8000E003FE1F07FF
      8000F80FFE1F0FFFFFFFFE3FFFFF9FFFEDB6FFFFFFFF8000EAAAFFFFC03F8000
      EAAAFFFFC03F8000EDB6FFFF003F8000FFFF83F100008000FFF903F100008000
      FFF0000000008000E039000000008000E039000000008000E03903FF00008000
      E02183FF00008000E03FFFFF00008000C03FFFFFC00080009FFFFFFFC0008001
      3FFFFFFFC00080037FFFFFFFC0008007FFFFF800FF00FE3FFFFFF800FF00F80F
      FCF9F800FC00E003FDFDF800FC008000BDFDF800FC0080009D55F800FC008000
      8DFDF800FC00800085FDF000FC0080008DFDF000FC0080009DFDE000FC008000
      BDFDE000FC008000FDFDC07FE0038000FCF981FFF0038000FFFF07FFE1FFE001
      FFFF0FFFC5FFF803FFFF9FFF0FFFFE27FFFFC003F800F8000001C003F800F800
      0001C003F800F8000001C003F800F8000001C003F800F8000001C003F800F800
      0001C003F800F8000001C003F000F0000001C003F000F0000001C003E000E000
      0001C003E000E0000001C003C07FC07F0001C00381FF81FF0001C00307FF07FF
      0001C0030FFF0FFFFFFFC0039FFF9FFFEDB6F7D7C000FFFFEAAAF311C000CE01
      EAAA8111C000E601EDB6B210C000E601FFFFB7FFC000CE01F07FBE10C000FFFF
      C03FFF11C000C601801FFF118000CE01001F00571C0FF6010019007F4E1FCE01
      0010007FE7FFFFFF0019007FB3FFEE010019007F1FFFEE010039007F4FFFEE01
      8061007FE7FFEE01C1FF8FFFF3FFFFFFE0FFFFFFF800EDB6C07FFC01F800EAAA
      803FC801F800EAAA001FD801F800EDB6001FD801F800FFFF001FD001F800FFFF
      001FC7F3F800E01F001FFFFFF000E01F803FFFFFF000E01FC07FFFFFE0000019
      E0F3FFF3E0000010FFF3FFF3C07F0019FFC0FFC081FF0019FFC0FFC007FF00F9
      FFF3FFF30FFF00E1FFF3FFF39FFF00FFFFFFC183FFFFFFFFF9FFC183FC1FF07F
      F0FFC183FC0FF03FF07FC183FC07F01FF03FC183FC07F01FF01FC183FC07F01F
      F00FC183FE07F81FF007C183FF07FC1FF007C183FFDFFFF7F00FC183FF8FFFE3
      F01FC183FF07FFC1F03FC183FFDFBFF7F07FC183FFFFFFFFF0FFC183FFBFDFEF
      F1FFC183FAFFF6BFFBFFC183FFFFFFFF8000FFFFFC00FFFF8000801FEC00FFFF
      8000801FDC0000018000801FDC000001800080078C00000180008007DC000001
      8000800700000001800080010000000180008001000000018200800100010001
      8200E00100030001FE40E001000700011040E001001E00011FC8F801001A0001
      0208F8010011000103F8F801001BFFFFFFFFFFFF80008000FE3F000700000000
      F81F000700000000E00F00070000000080070007000000000003000700000000
      0001000F000000000000FFFF0000000000013F010000000080013E0000000000
      C001360000000000E000120000000000F000000000000000F803F20000000000
      FC0FF60100000000FE3FFF1F00000000FFF3FFFFFFFF800FFFE9FF3FC0070007
      FFD1FE3F80030007FFA3C07F00010001F04780F700010000C00F00E700010000
      801F00C100000000801F00E600000000000F00F680000000000F81FEC0002000
      000FC3BFE0013000000FFFB7E0070000801FFFB3F0078000801FFFC1F003E000
      C03FFFF3F803E000F0FFFFF7FFFFF001FFFFFFFFFFFFFFFFC003000C000FF9FF
      80010008000FF9FF00000001000FF3C700000003000F73C700000003000F27FF
      00000003000F07C700000003000F00C700000003000F01E300000007000403F1
      0000000F000006380000000F00000E380000000FF8001E381000001FFC003F01
      1800003FFE047F83C003007FFFFFFFFFFFFFFFFCFFFFFFFFFFFF9FF9FFFFFFFF
      FFFF8FF3C007001FFFFF87E7C007000FFFFFC3CFC0070007EFFFF11FC0070003
      EF83F83FC0070001DFC3FC7FC0070000DFE3F83FC007001FDFD3F19FC007001F
      EF3BE3CFC007001FF0FFC7E7C0078FF1FFFF8FFBC00FFFF9FFFF1FFFC01FFF75
      FFFF3FFFC03FFF8FFFFFFFFFFFFFFFFFC387F801E001FFFFD937F801C001FFFF
      DD77F8018001FFFFCD67F8018001FFFFE10F80018001FFFFF01F80018001FFF7
      FC7F80018001C1F7F83F80018001C3FBF81F80018001C7FBF01F80018003CBFB
      E10F80038003DCF7E38F80078003FF0FE38F801F8003FFFFE7CF801F8003FFFF
      EFEF803FC007FFFFFFFF807FE00FFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 813
    Top = 65534
    object Annuler2: TMenuItem
      Action = ActionCancel
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Couper2: TMenuItem
      Action = ActionCut
    end
    object Copier2: TMenuItem
      Action = ActionCopy
    end
    object Coller2: TMenuItem
      Action = ActionPaste
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Font2: TMenuItem
      Action = ActionFont
    end
    object SelectionnerTout2: TMenuItem
      Action = ActionSelectAll
    end
    object Recherche1: TMenuItem
      Action = ActionSearch
    end
    object N54: TMenuItem
      Caption = '-'
    end
    object Motsrservs1: TMenuItem
      Caption = '&Mots r'#233'serv'#233's'
      object N30: TMenuItem
        Caption = #1576#1585#1606#1575#1605#1580
        OnClick = N30Click
      end
      object N31: TMenuItem
        Caption = #1579#1575#1576#1578
        OnClick = N30Click
      end
      object N32: TMenuItem
        Caption = #1605#1578#1594#1610#1585
        OnClick = N30Click
      end
      object N51: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Caption = #1605#1606#1591#1602#1610
        OnClick = N30Click
      end
      object N34: TMenuItem
        Caption = #1589#1581#1610#1581
        OnClick = N30Click
      end
      object N35: TMenuItem
        Caption = #1591#1576#1610#1593#1610
        OnClick = N30Click
      end
      object N36: TMenuItem
        Caption = #1587#1604#1587#1604#1577
        OnClick = N30Click
      end
      object N37: TMenuItem
        Caption = #1585#1605#1586
        OnClick = N30Click
      end
      object N49: TMenuItem
        Caption = '-'
      end
      object N38: TMenuItem
        Caption = #1576#1610#1606#1605#1575
        OnClick = N30Click
      end
      object N39: TMenuItem
        Caption = #1602#1605
        OnClick = N30Click
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object N40: TMenuItem
        Caption = #1575#1584#1575
        OnClick = N30Click
      end
      object N41: TMenuItem
        Caption = #1601#1575#1606
        OnClick = N30Click
      end
      object N42: TMenuItem
        Caption = #1608#1575#1604#1575
        OnClick = N30Click
      end
      object N48: TMenuItem
        Caption = '-'
      end
      object N43: TMenuItem
        Caption = #1606#1593#1605
        OnClick = N30Click
      end
      object N44: TMenuItem
        Caption = #1604#1575
        OnClick = N30Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object N45: TMenuItem
        Caption = #1575#1602#1585#1575
        OnClick = N30Click
      end
      object N46: TMenuItem
        Caption = #1575#1591#1576#1593
        OnClick = N30Click
      end
    end
    object Oprateurs1: TMenuItem
      Caption = 'S'#233'&parateurs'
      object N23: TMenuItem
        Caption = '}'
        OnClick = N30Click
      end
      object N24: TMenuItem
        Caption = '{'
        OnClick = N30Click
      end
      object N52: TMenuItem
        Caption = '-'
      end
      object N25: TMenuItem
        Caption = ')'
        OnClick = N30Click
      end
      object N26: TMenuItem
        Caption = '('
        OnClick = N30Click
      end
      object N53: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Caption = '?'
        OnClick = N30Click
      end
      object N28: TMenuItem
        Caption = '?'
        OnClick = N30Click
      end
      object N29: TMenuItem
        Caption = '.'
        OnClick = N30Click
      end
    end
    object Sparateurs1: TMenuItem
      Caption = '&Op'#233'rateurs'
      object N22: TMenuItem
        Caption = ' + '
        OnClick = N30Click
      end
      object N21: TMenuItem
        Caption = ' - '
        OnClick = N30Click
      end
      object N20: TMenuItem
        Caption = ' * '
        OnClick = N30Click
      end
      object N19: TMenuItem
        Caption = ' '#247' '
        OnClick = N30Click
      end
      object N18: TMenuItem
        Caption = ' % '
        OnClick = N30Click
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = ' '#187' '
        OnClick = N30Click
      end
      object N9: TMenuItem
        Caption = ' '#171' '
        OnClick = N30Click
      end
      object objectBitBtn19TBitBtn1: TMenuItem
        Caption = ' > '
        OnClick = N30Click
      end
      object N10: TMenuItem
        Caption = ' < '
        OnClick = N30Click
      end
      object N11: TMenuItem
        Caption = ' # '
        OnClick = N30Click
      end
      object N12: TMenuItem
        Caption = ' ~ '
        OnClick = N30Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = ' ! '
        OnClick = N30Click
      end
      object N15: TMenuItem
        Caption = ' | '
        OnClick = N30Click
      end
      object N16: TMenuItem
        Caption = ' && '
        OnClick = N30Click
      end
      object N102: TMenuItem
        Caption = '-'
      end
      object N103: TMenuItem
        Caption = '/'
        OnClick = N30Click
      end
      object N105: TMenuItem
        Caption = '-'
      end
      object N104: TMenuItem
        Caption = '\'
        OnClick = N30Click
      end
    end
  end
  object FindD: TFindDialog
    OnFind = FindDFind
    Left = 841
    Top = 65533
  end
end
