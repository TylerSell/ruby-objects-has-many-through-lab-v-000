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
    Patient.all.select do |appointment|
      appointment.patient
    end
  end
end