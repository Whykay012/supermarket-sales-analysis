# import sqlite3
# import pandas as pd

# # Connect to SQLite database
# connection = sqlite3.connect("database/supermarket_sales.db")

# # Load cleaned dataset
# df = pd.read_csv("data/cleaned_data.csv")

# # Convert Date column to text format suitable for SQLite
# df["Date"] = pd.to_datetime(df["Date"]).dt.strftime("%Y-%m-%d")

# # Save dataframe into SQLite database
# df.to_sql(
#     "sales",
#     connection,
#     if_exists="replace",
#     index=False
# )

# # Verify the number of rows
# cursor = connection.cursor()

# cursor.execute("SELECT COUNT(*) FROM sales")

# row_count = cursor.fetchone()[0]

# print("SQLite database created successfully!")
# print("Table 'sales' created successfully!")
# print(f"Number of rows loaded: {len(df)}")
# print(f"Rows in SQLite sales table: {row_count}")

# # Close database connection
# connection.close()

import sqlite3
import pandas as pd

# Connect to SQLite database
conn = sqlite3.connect("database/supermarket_sales.db")

# Read the sales table
df = pd.read_sql_query("SELECT * FROM sales", conn)

# Export to CSV
df.to_csv("data/supermarket_sales_from_sqlite.csv", index=False)

# Close connection
conn.close()

print("CSV exported successfully!")
print(f"Rows exported: {len(df)}")
print(f"Columns exported: {len(df.columns)}")