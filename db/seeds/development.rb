# Create test data.
User.create([
  { name: "Alice", age: 25, updated_at: DateTime.new(2023, 9, 13, 11, 23, 34) },
  { name: "Bob", age: 32, updated_at: DateTime.new(2024, 4, 28, 17, 22, 23) },
  { name: "Marie", age: 48, updated_at: DateTime.new(2024, 3, 31, 1, 10, 34) },
  { name: "Léa", age: 65, updated_at: DateTime.new(2023, 2, 28, 9, 34, 17) },
  { name: "Luc", age: 20, updated_at: DateTime.new(2024, 12, 14, 12, 30, 00) },
  { name: "Ted", age: 31, updated_at: DateTime.new(2025, 1, 1, 0, 1, 1) },
])
