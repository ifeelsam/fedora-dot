use zed::theme::{Theme, ThemeColors, TokenColors};

pub fn create_theme() -> Theme {
    Theme {
        name: "VSCode Dark Theme".to_string(),
        colors: ThemeColors {
            background: "#181818".to_string(),
            foreground: "#cccccc".to_string(),
            selection: "#204182cc".to_string(),
            line_highlight: "#ffffff0b".to_string(),
            cursor: "#aeafad".to_string(),
            ..Default::default()
        },
        token_colors: vec![
            TokenColors {
                name: Some("Comment".to_string()),
                scope: vec!["comment".to_string()],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#707070".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Operator Keywords".to_string()),
                scope: vec![
                    "keyword.operator".to_string(),
                    "keyword.operator.logical".to_string(),
                    "keyword.operator.relational".to_string(),
                    "keyword.operator.assignment".to_string(),
                    "keyword.operator.comparison".to_string(),
                    "keyword.operator.ternary".to_string(),
                    "keyword.operator.arithmetic".to_string(),
                    "keyword.operator.spread".to_string(),
                ],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#CCCCCC".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Strings".to_string()),
                scope: vec![
                    "string".to_string(),
                    "string.character.escape".to_string(),
                    "string.template.quoted".to_string(),
                ],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#8AA662".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Number".to_string()),
                scope: vec!["constant.numeric".to_string()],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#7A9EC2".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Keyword".to_string()),
                scope: vec!["keyword".to_string()],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#CC8242".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Function".to_string()),
                scope: vec!["entity.name.function".to_string()],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#FFC66D".to_string()),
                    font_style: None,
                },
            },
            TokenColors {
                name: Some("Variable, Property".to_string()),
                scope: vec!["variable.property".to_string()],
                settings: zed::theme::TokenSettings {
                    foreground: Some("#9E7BB0".to_string()),
                    font_style: None,
                },
            },
        ],
    }
}
