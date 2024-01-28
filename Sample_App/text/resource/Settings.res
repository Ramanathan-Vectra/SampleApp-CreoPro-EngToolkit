(Dialog Settings
    (Components
        (SubLayout Layout1)
    )
    (Resources
        (.Label "Settings")
        (.ResourceHints "Version:Creo4")
        (.Resizeable False)
        (.MinColumns 5)
        (.MinRows 30)
        (.Layout
            (Grid
                (Rows 0)
                (Cols 1)
                Layout1
            )
        )
    )
)
(Layout Layout1
    (Components
        (SubLayout Layout3)
        (SubLayout Layout5)
        (SubLayout Layout6)
        (PushButton btnOk)
        (PushButton btnCancel)
        (SubLayout Layout6_copy1)
        (SubLayout Layout7)
    )
    (Resources
        (btnOk.Label "OK")
        (btnOk.TopOffset 10)
        (btnOk.BottomOffset 10)
        (btnOk.LeftOffset 40)
        (btnOk.RightOffset 0)
        (btnOk.ResourceHints "Template:OKCancelDialog.CommitOK")
        (btnCancel.Label "Cancel")
        (btnCancel.TopOffset 10)
        (btnCancel.BottomOffset 10)
        (btnCancel.LeftOffset 8)
        (btnCancel.RightOffset 10)
        (btnCancel.ResourceHints "Template:OKCancelDialog.CommitCancel")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.ResourceHints "@Subgrid0x5.Template:OKCancelDialog.CommitBar")
        (.BottomOffset 5)
        (.LeftOffset 5)
        (.RightOffset 5)
        (.TopOffset 5)
        (.Layout
            (Grid
                (Rows 1 0 0 0 0 0)
                (Cols 1)
                Layout3 Layout5 Layout6 Layout6_copy1 Layout7
                (Grid
                    (Rows 1)
                    (Cols 1 0 0)
                    (Pos 1 2)
                    btnOk
                    (Pos 1 3)
                    btnCancel
                )
            )
        )
    )
)
(Layout Layout3
    (Components
        (Tab tb layMm layInch)
    )
    (Resources
        (tb.Decorated 1)
        (tb.TopOffset 5)
        (tb.BottomOffset 3)
        (tb.LeftOffset 3)
        (tb.AttachBottom False)
        (.Label "Default Tolerances")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachTop True)
        (.TopOffset 5)
        (.BottomOffset 3)
        (.LeftOffset 3)
        (.RightOffset 3)
        (.AttachRight True)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1)
                tb
            )
        )
    )
)
(Layout layMm
    (Components
        (SubLayout layLinearmm)
        (SubLayout laySizemm)
        (SubLayout layGeometricmm)
    )
    (Resources
        (.Label "mm")
        (.Layout
            (Grid
                (Rows 0 0 0)
                (Cols 0)
                layLinearmm laySizemm layGeometricmm
            )
        )
    )
)
(Layout layLinearmm
    (Components
        (Label lblLinearmm)
        (InputPanel edtLinearmm)
    )
    (Resources
        (lblLinearmm.Label "Linear Dimension")
        (lblLinearmm.AttachLeft True)
        (lblLinearmm.TopOffset 10)
        (lblLinearmm.LeftOffset 10)
        (lblLinearmm.RightOffset 50)
        (edtLinearmm.TopOffset 8)
        (edtLinearmm.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 10)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblLinearmm edtLinearmm
            )
        )
    )
)
(Layout laySizemm
    (Components
        (Label lblSizemm)
        (InputPanel edtSizemm)
    )
    (Resources
        (lblSizemm.Label "Size Dimension")
        (lblSizemm.AttachLeft True)
        (lblSizemm.TopOffset 10)
        (lblSizemm.LeftOffset 10)
        (lblSizemm.RightOffset 62)
        (edtSizemm.TopOffset 8)
        (edtSizemm.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 2)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblSizemm edtSizemm
            )
        )
    )
)
(Layout layGeometricmm
    (Components
        (Label lblGeometricmm)
        (InputPanel edtGeometricmm)
    )
    (Resources
        (lblGeometricmm.Label "Geometric Tolerance")
        (lblGeometricmm.AttachLeft True)
        (lblGeometricmm.TopOffset 10)
        (lblGeometricmm.LeftOffset 10)
        (lblGeometricmm.RightOffset 32)
        (edtGeometricmm.TopOffset 8)
        (edtGeometricmm.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 2)
        (.BottomOffset 5)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblGeometricmm edtGeometricmm
            )
        )
    )
)
(Layout layInch
    (Components
        (SubLayout layLinearinch)
        (SubLayout laySizeinch)
        (SubLayout layGeometricinch)
    )
    (Resources
        (.Label "inch")
        (.Layout
            (Grid
                (Rows 0 0 0)
                (Cols 0)
                layLinearinch laySizeinch layGeometricinch
            )
        )
    )
)
(Layout layLinearinch
    (Components
        (Label lblLinearinch)
        (InputPanel edtLinearinch)
    )
    (Resources
        (lblLinearinch.Label "Linear Dimension")
        (lblLinearinch.AttachLeft True)
        (lblLinearinch.TopOffset 10)
        (lblLinearinch.LeftOffset 10)
        (lblLinearinch.RightOffset 50)
        (edtLinearinch.TopOffset 8)
        (edtLinearinch.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 10)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblLinearinch edtLinearinch
            )
        )
    )
)
(Layout laySizeinch
    (Components
        (Label lblSizeinch)
        (InputPanel edtSizeinch)
    )
    (Resources
        (lblSizeinch.Label "Size Dimension")
        (lblSizeinch.AttachLeft True)
        (lblSizeinch.TopOffset 10)
        (lblSizeinch.LeftOffset 10)
        (lblSizeinch.RightOffset 62)
        (edtSizeinch.TopOffset 8)
        (edtSizeinch.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 2)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblSizeinch edtSizeinch
            )
        )
    )
)
(Layout layGeometricinch
    (Components
        (Label lblGeometricinch)
        (InputPanel edtGeometricinch)
    )
    (Resources
        (lblGeometricinch.Label "Geometric Tolerance")
        (lblGeometricinch.AttachLeft True)
        (lblGeometricinch.TopOffset 10)
        (lblGeometricinch.LeftOffset 10)
        (lblGeometricinch.RightOffset 32)
        (edtGeometricinch.TopOffset 8)
        (edtGeometricinch.RightOffset 10)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 2)
        (.BottomOffset 5)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                lblGeometricinch edtGeometricinch
            )
        )
    )
)
(Layout Layout5
    (Components
        (RadioGroup rdbtnAnalysistype)
    )
    (Resources
        (rdbtnAnalysistype.Orientation True)
        (rdbtnAnalysistype.Names "item1" "item2" "item3")
        (rdbtnAnalysistype.Labels "Worst Case" "Root Sum Squares (RSS)" "Statistical")
        (rdbtnAnalysistype.TopOffset 10)
        (rdbtnAnalysistype.BottomOffset 5)
        (rdbtnAnalysistype.AttachRight False)
        (rdbtnAnalysistype.CanReduceHeight True)
        (.Label "Default Target Quality (Analysis Type)")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 5)
        (.BottomOffset 3)
        (.LeftOffset 3)
        (.RightOffset 3)
        (.MinColumns 18)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1)
                rdbtnAnalysistype
            )
        )
    )
)
(Layout Layout6
    (Components
        (RadioGroup rdbtnCpk)
        (InputPanel edtCpk)
        (RadioGroup rdbtnSigma)
        (InputPanel edtSigma)
        (RadioGroup rdbtnYield)
        (InputPanel edtYield)
        (RadioGroup rdbtnDpmo)
        (InputPanel edtDpmo)
    )
    (Resources
        (rdbtnCpk.Orientation True)
        (rdbtnCpk.Names "item1")
        (rdbtnCpk.Labels "Process Capability (Cpk)")
        (rdbtnCpk.TopOffset 10)
        (rdbtnCpk.BottomOffset 5)
        (edtCpk.Value "1.0")
        (edtCpk.AttachTop True)
        (edtCpk.TopOffset 10)
        (edtCpk.InputType 0)
        (rdbtnSigma.Orientation True)
        (rdbtnSigma.Names "item1")
        (rdbtnSigma.Labels "Sigma (Σ)")
        (edtSigma.Value "3.0")
        (edtSigma.AttachLeft False)
        (edtSigma.AttachRight False)
        (edtSigma.InputType 0)
        (rdbtnYield.Orientation True)
        (rdbtnYield.Names "item1")
        (rdbtnYield.Labels "Percent Yield (% Yield)")
        (edtYield.Value "99")
        (edtYield.InputType 0)
        (rdbtnDpmo.Orientation True)
        (rdbtnDpmo.Names "item1")
        (rdbtnDpmo.Labels "DPMO")
        (edtDpmo.Value "2700")
        (edtDpmo.InputType 0)
        (.Label "Default Statistical Quality Metric and Value")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 5)
        (.BottomOffset 3)
        (.LeftOffset 3)
        (.RightOffset 3)
        (.Visible False)
        (.Mapped False)
        (.Layout
            (Grid
                (Rows 1 0 0 0)
                (Cols 1 0)
                rdbtnCpk edtCpk rdbtnSigma edtSigma rdbtnYield edtYield rdbtnDpmo edtDpmo
            )
        )
    )
)
(Layout Layout6_copy1
    (Components
        (SubLayout Layout2_copy)
    )
    (Resources
        (.Label "Default Statistical Quality Metric and Value")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 5)
        (.LeftOffset 3)
        (.RightOffset 3)
        (.Layout
            (Grid
                (Rows 0)
                (Cols 0)
                Layout2_copy
            )
        )
    )
)
(Layout Layout2_copy
    (Components
        (SubLayout Layout8)
        (SubLayout Layout8_copy)
        (SubLayout Layout8_copy1)
        (SubLayout Layout8_copy2)
    )
    (Resources
        (.AttachBottom True)
        (.BottomOffset 5)
        (.Layout
            (Grid
                (Rows 1 0 0 0)
                (Cols 1)
                Layout8 Layout8_copy Layout8_copy1 Layout8_copy2
            )
        )
    )
)
(Layout Layout8
    (Components
        (PushButton PushButton1)
        (Label Label1)
        (InputPanel InputPanel5)
    )
    (Resources
        (PushButton1.Bitmap "checkBox.png")
        (PushButton1.ButtonStyle 3)
        (PushButton1.RightOffset 5)
        (Label1.Label "Process Capability (Cpk)")
        (Label1.RightOffset 15)
        (.AttachLeft True)
        (.AttachRight True)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0 0)
                PushButton1 Label1 InputPanel5
            )
        )
    )
)
(Layout Layout8_copy
    (Components
        (PushButton PushButton1_copy)
        (Label Label1_copy)
        (InputPanel InputPanel5_copy)
    )
    (Resources
        (PushButton1_copy.Bitmap "checkBox.png")
        (PushButton1_copy.ButtonStyle 3)
        (PushButton1_copy.RightOffset 5)
        (Label1_copy.Label "Sigma (Σ)")
        (Label1_copy.RightOffset 93)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0 0)
                PushButton1_copy Label1_copy InputPanel5_copy
            )
        )
    )
)
(Layout Layout8_copy1
    (Components
        (PushButton PushButton1_copy1)
        (Label Label1_copy1)
        (InputPanel InputPanel5_copy1)
    )
    (Resources
        (PushButton1_copy1.Bitmap "checkBox.png")
        (PushButton1_copy1.ButtonStyle 3)
        (PushButton1_copy1.RightOffset 5)
        (Label1_copy1.Label "Percent Yield (% Yield)")
        (Label1_copy1.RightOffset 24)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0 0)
                PushButton1_copy1 Label1_copy1 InputPanel5_copy1
            )
        )
    )
)
(Layout Layout8_copy2
    (Components
        (PushButton PushButton1_copy2)
        (Label Label1_copy2)
        (InputPanel InputPanel5_copy2)
    )
    (Resources
        (PushButton1_copy2.Bitmap "checkBox.png")
        (PushButton1_copy2.ButtonStyle 3)
        (PushButton1_copy2.RightOffset 5)
        (Label1_copy2.Label "DPMO")
        (Label1_copy2.RightOffset 108)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0 0)
                PushButton1_copy2 Label1_copy2 InputPanel5_copy2
            )
        )
    )
)
(Layout Layout7
    (Components
        (InputPanel edtCp)
        (Label lblCp)
        (NakedWindow NakedWindow1)
    )
    (Resources
        (edtCp.Columns 0)
        (edtCp.Value "1.0")
        (edtCp.InputType 0)
        (edtCp.CanReduceWidth True)
        (edtCp.FixedWidth False)
        (edtCp.AttachRight False)
        (lblCp.Label "Default Cp")
        (lblCp.AttachLeft True)
        (lblCp.AttachTop True)
        (lblCp.Alignment 0)
        (lblCp.TopOffset 10)
        (lblCp.LeftOffset 5)
        (NakedWindow1.NakedWidth 110)
        (NakedWindow1.NakedHeight 30)
        (NakedWindow1.BackgroundColor 255)
        (NakedWindow1.AttachRight True)
        (NakedWindow1.LeftOffset 85)
        (.Label "Model Options")
        (.Decorated 1)
        (.AttachLeft True)
        (.AttachTop True)
        (.AttachBottom True)
        (.TopOffset 5)
        (.BottomOffset 3)
        (.LeftOffset 3)
        (.RightOffset 3)
        (.AttachRight True)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0 0)
                edtCp lblCp NakedWindow1
            )
        )
    )
)
