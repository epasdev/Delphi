object Form_Con_Colaboradores: TForm_Con_Colaboradores
  Left = 0
  Top = 0
  Caption = 'Colaboradores'
  ClientHeight = 256
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 537
    Height = 217
    DataSource = DS_Colab
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Title.Caption = 'Data de Nascimento'
        Visible = True
      end>
  end
  object btn_Excluir: TButton
    Left = 458
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btn_ExcluirClick
  end
  object btn_Alterar: TButton
    Left = 377
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = btn_AlterarClick
  end
  object btn_Cadastrar: TBitBtn
    Left = 296
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btn_CadastrarClick
  end
  object SQL_Colab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from colaboradores order by codigo')
    SQLConnection = Form_Principal.SQLConnection1
    Left = 16
    Top = 64
  end
  object DS_Colab: TDataSource
    DataSet = CDS_Colab
    Left = 16
    Top = 208
  end
  object DSP_Colab: TDataSetProvider
    DataSet = SQL_Colab
    Left = 16
    Top = 112
  end
  object CDS_Colab: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Colab'
    Left = 16
    Top = 160
  end
  object SSP_Colaboradores: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 1
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 100
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 100
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 300
        Name = 'COMPLEMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 9
        Name = 'CEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 11
        Name = 'CPF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'RG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 11
        Name = 'FONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 11
        Name = 'CELULAR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'DATA_NASCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 100
        Name = 'EMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'SALARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = Form_Principal.SQLConnection1
    StoredProcName = 'PROC_COLABORADORES'
    Left = 424
    Top = 120
  end
end
