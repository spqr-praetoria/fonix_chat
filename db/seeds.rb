# Cleanup
Channel.delete_all

# Create One channel
Channel.create!(
  name: "General",
  description: "Mobile payments & interactive services",
  created_at: 2.years.ago
)

puts "Created channel"
