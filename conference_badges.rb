# BadgeMaker
def badge_maker(name)
    "Hello, my name is #{name}."
  end
  
  # BatchBadgeCreator
  def batch_badge_creator(attendees)
    badges = []
    attendees.each do |attendee|
      badges << badge_maker(attendee)
    end
    badges
  end
  
  # AssignRooms
  def assign_rooms(attendees)
    room_assignments = []
    attendees.each_with_index do |attendee, index|
      room_assignments << "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
    end
    room_assignments
  end
  
  # Printer
  def printer(attendees)
    badges = batch_badge_creator(attendees)
    room_assignments = assign_rooms(attendees)
  
    badges.each do |badge|
      puts badge
    end
  
    room_assignments.each do |room_assignment|
      puts room_assignment
    end
  end
  
  # Attendees
  attendees = ["Arel", "Carol"]
  
  # Print badges and room assignments
  printer(attendees)
  