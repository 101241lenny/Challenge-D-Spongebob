#Challenge D: SpongeBob
use_bpm 136
use_synth :piano

# Define the background notes function
define :background_notes do
  play :E3, amp: 0.25
  sleep 1
  play :B3, amp: 0.25
  play :E4, amp: 0.25
  sleep 1
  play :B3, amp: 0.25
  sleep 1
  play :E4, amp: 0.25
  sleep 1
  
  # Repeat the pattern with increasing volume
  5.times do
    play :E3, amp: 1
    sleep 1
    play :B3, amp: 1
    play :E4, amp: 1
    sleep 1
    play :B3, amp: 1
    sleep 1
    play :E4, amp: 1
    sleep 1
  end
end

# Define the second layer function
define :second_layer do
  play :r
  sleep 1
  play :E4
  play :Gs4
  sleep 2
  play :E5
  play :Gs4
  sleep 1
end

# Play the background notes
background_notes

# Play the second layer
second_layer

# Add a third layer
in_thread do
  5.times do
    play :B4
    sleep 0.75
    play :As4
    sleep 0.25
    play :Gs4
    play :B4
    sleep 0.75
    play :Cs5
    sleep 0.25
    play :B4
    sleep 1
    play :Gs4
    play :E5
    sleep 1
  end
end

# Wait for all layers to finish
sleep 16

# Add a gentle ending
play :E4
sleep 1
play :E5
play :Gs4
sleep 2
play :E5
play :Gs4
sleep 1
