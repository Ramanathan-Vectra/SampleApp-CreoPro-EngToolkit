(Dialog issueDialog
    (Components
        (SubLayout Layout1)
    )
    (Resources
        (.ResourceHints "Version:Creo4")
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1)
                Layout1
            )
        )
    )
)

(Layout Layout1
    (Components
        (Table Table1)
    )
    (Resources
        (Table1.ColumnNames "buttonCol" "labelCol")
        (Table1.ColumnLabels "Button" "Label")
        (.Layout
            (Grid
                (Rows 1)
                (Cols 1)
                Table1
            )
        )
    )
)
