# Northwind Database — Employee Performance & Sales Analysis

SQL analysis of the Northwind sample database: how orders are spread across employees, which employee records have no orders, how many customers each employee serves, and where suppliers are concentrated.

> **Status:** Complete (February 2026); figures re-checked and corrected in October 2026. Three of nine active employees processed 51% of the 196 orders, and 82% of same-country supplier pairs are in the USA and Europe.

**Project page:** [taofeeksalami.com/Employee-Performance-Sales-Analysis](https://taofeeksalami.com/Employee-Performance-Sales-Analysis)

---

## Key Findings

| Question | Finding |
|----------|---------|
| Is workload spread evenly? | No. Margaret Peacock processed 40 of the 196 orders (20.4%) and Anne Dodsworth 6, a 6.7× gap. The top three employees (Margaret Peacock, Janet Leverling, Nancy Davolio) processed 100 orders (51%) |
| Do any employee records have no orders? | One: Adam West (EmployeeID 10). Counting him lowers average orders per employee from 21.8 to 19.6 |
| Who serves the most customers? | Margaret Peacock served 31 of the 74 customers who ordered (41.9%); Anne Dodsworth served 6, none of them more than once |
| Are suppliers concentrated? | The 17 same-country supplier pairs sit mostly in the USA (6 pairs, 35.3%) and Europe (8 pairs, 47.1%), together 82%. Asia and Australia have one pair each |
| How often do customers reorder? | 52 of the 74 customers (70%) placed more than one order between 4 July 1996 and 12 February 1997; Ernst Handel placed the most (10) |

- The data does not show hours worked, start dates or order complexity, so it cannot say why some employees process more orders than others.
- Employees with more orders also served more customers, which partly follows from order volume itself. Customer retention per employee was not measured.

---

## Business Questions

1. Is order processing workload distributed evenly across the team?
2. Are there employee records that distort performance figures?
3. Which employees serve the most customers?
4. Does supplier geography create concentration risk?
5. What does the full order list show about customers and employees?

---

## Recommendations

1. **Workload:** check how orders are assigned, and whether low-volume employees are new or part-time, before redistributing work.
2. **Employee records:** confirm Adam West's status and, if he is not an order-processing employee, exclude him from workload averages.
3. **Customer coverage:** measure retention per employee over time before treating high-volume employees as benchmarks for training.
4. **Suppliers:** assess whether adding suppliers outside the USA and Europe would reduce regional concentration.

---

## Dataset

| Item | Details |
|------|---------|
| Source | Northwind sample database, as provided by the W3Schools SQL editor |
| Tables used | `Employees`, `Orders`, `Customers`, `Suppliers` |
| Size | 196 orders from 4 July 1996 to 12 February 1997; 10 employee records, 9 with orders |
| Unit of analysis | One order (questions 1 and 5), one employee (questions 1–3) and one supplier pair (question 4) |
| Data quality | Some text fields have trailing spaces; employee records are not marked active or inactive |
| Licence | Public sample data for learning; not redistributed here |

---

## Approach

Five SQL queries in MySQL syntax, run in TablePlus, using `INNER JOIN` across tables, a `LEFT JOIN` to find employees with no orders, a self-join to pair suppliers in the same country, and `COUNT(DISTINCT …)` for unique customers. Each query's result is saved as a PDF in `results/`.

---

## Reproducibility

The queries were run in TablePlus on a MySQL copy of the W3Schools Northwind data.

1. Load the Northwind data into MySQL, or use the [W3Schools SQL editor](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all), which has the same tables.
2. Run each file in `sql/` and compare the result with the matching PDF in `results/`.
3. Check the figures in this README and on the project page with the [Data Analysis Playbook](https://github.com/HarjiiBoss/analytics-playbook)'s `tools/check_figures.py`. Derived figures checked by hand are listed with their calculations in `.figures-allow`.

---

## Repository Structure

```text
Employee-Performance-Sales-Analysis/
├── docs/
│   ├── index.html       # Project page (taofeeksalami.com/Employee-Performance-Sales-Analysis)
│   └── summary.md       # Findings in report form
├── results/             # Query results, one PDF per question
├── sql/                 # q1–q5, one file per question with notes on the result
├── .figures-allow       # Derived figures checked by hand, with their calculations
├── LICENSE
└── README.md
```

---

## Contact

Taofeek Salami  
LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
GitHub: https://github.com/HarjiiBoss  
Email: salamitaofeek92@gmail.com

---

## License

This project is licensed under the MIT License (see `LICENSE`). The Northwind sample data is not covered by this licence.

---

## Corrections

**29 October 2026**

- **Summary report:** `docs/summary.md` still had figures from before the October audit: "Margaret, Janet, and Steven processed 102" orders (the top three are Margaret, Janet and Nancy, with 100), "nearly half of all customers placed multiple orders" (52 of 74, 70%) and "Ernst Handel … nine" orders (10). It now matches the results.
- **Unsupported explanations removed:** that the workload gap reflects "uneven task assignment rather than normal performance differences", that Adam West is "likely … retired", that Anne Dodsworth is "still building her customer management skills", and that order volume correlates with "stronger customer engagement and retention". The data shows none of these.
- **Recommendations:** "document the customer relationship behaviours of top performers" and the summary report's "20 to 25 percent of suppliers from Asia-Pacific within 18 months" target removed; neither rests on the data.
- **Repository Structure:** the result file names now match the files in `results/`.
- **Project page:** footer year corrected to February 2026.

**26 October 2026**

- Order counts, repeat-customer share and retention claims corrected after the portfolio audit (pull request #1).

## Published Surfaces

Every place this project's findings appear outside this repository. When a figure changes, each one is updated and its date refreshed (Data Analysis Playbook v3.4, Published Surfaces).

| Surface | Link | Figures quoted | Last checked |
|---------|------|----------------|--------------|
| Project page | [taofeeksalami.com/Employee-Performance-Sales-Analysis](https://taofeeksalami.com/Employee-Performance-Sales-Analysis) | Full findings | 29 Oct 2026 |
| Portfolio site card | [taofeeksalami.com](https://taofeeksalami.com) | 196 orders, 51% to the top three, 6.7× gap, 82% of supplier pairs | 29 Oct 2026 |
| GitHub profile README | [github.com/HarjiiBoss](https://github.com/HarjiiBoss) | 100 of 196 orders (51%), 6.7×, 52 of 74 customers (70%), 82% | 29 Oct 2026 |
