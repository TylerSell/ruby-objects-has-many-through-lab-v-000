class Appointment 
  attr_accessor :name, :patient, :doctor, :appointment 
  @@all = []
  
  def initialize(patient, appointment, doctor)
    @doctor = doctor
    @patient = patient
    @appointment = appointment
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def patient
    self.all.select do |appointment|
      appointment.patient = @patient
    end
  end
end