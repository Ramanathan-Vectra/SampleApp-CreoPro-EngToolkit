(Dialog UICreateProblem
    (Components
        (SubLayout Layout1)
        (SubLayout Layout2)
    )
    (Resources
        (.ResourceHints "Version:Creo4")
        (.Label "Sample Creo Application")
        (.Layout
            (Grid
                (Rows 1 0)
                (Cols 1)
                Layout1 Layout2
            )
        )
    )
)
(Layout Layout1
    (Components
        (Label Label1)
        (List List1)
        (Separator Separator1)
    )
    (Resources
        (Label1.Label "Sample Creo UI")
        (Label1.TopOffset 5)
        (Label1.BottomOffset 5)
        (Label1.LeftOffset 10)
        (Label1.RightOffset 10)
        (List1.ColumnLabel "Items	Quantity")
        (List1.ListType 3)
        (Separator1.TopOffset 5)
        (Separator1.BottomOffset 5)
        (Separator1.LeftOffset -1)
        (Separator1.RightOffset -1)
        (.AttachLeft True)
        (.AttachRight True)
        (.LeftOffset 5)
        (.RightOffset 5)
        (.Layout
            (Grid
                (Rows 1 0 0)
                (Cols 1)
                Label1 List1 Separator1
            )
        )
    )
)
(Layout Layout2
    (Components
        (PushButton pbDeleteSelected)
        (PushButton pbClose)
    )
    (Resources
        (pbDeleteSelected.Label "Delete Selected")
        (pbDeleteSelected.TopOffset 5)
        (pbDeleteSelected.BottomOffset 10)
        (pbClose.Label "Close")
        (pbClose.TopOffset 5)
        (pbClose.BottomOffset 10)
        (.TopOffset 5)
        (.BottomOffset 5)
        (.LeftOffset 10)
        (.RightOffset 10)
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1 0)
                pbDeleteSelected pbClose
            )
        )
    )
)
