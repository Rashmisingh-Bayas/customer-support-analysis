# Customer Support Analysis (4K Multi-Language Tickets) 

**Built SQL analysis of 4K customer support tickets using DuckDB.** Dataset from Kaggle - real IT support conversations in EN/DE/ES/FR/PT.

## 📊 Key Findings:
| Metric | Count | % |
|--------|-------|---|
| **High Priority** | 1,649 | 41% |
| **English** | 1,391 | 35% |
| **Technical Support** | 2,126 | **53%** |
| **High+English** | 595 | Critical |

## 🏆 Recommendations:
1. **Scale Technical Support** (53% tickets)
2. **Prioritize English High Priority** (595 urgent)
3. **Multi-language**: DE(21%), ES(20%)

## 📁 Files:
- `analysis.sql` - All SQL queries
- `priority.csv` - Priority breakdown
- `language.csv` - Language stats
- `tags.csv` - Top issues
- `dataset-tickets-multi-lang3-4k.csv` - 4K raw data

**Dataset**: Customer request + agent response. Columns: `priority`, `language`, `tag_1-9`, `queue`

**Live**: GitHub | Data: Kaggle 4K dataset
