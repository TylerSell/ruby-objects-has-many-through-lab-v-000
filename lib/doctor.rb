class Doctor 
  attr_accessor :name, :appointment
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(patient, date, self)
    return appointment
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end
  end
  
  def patients
    Appointment.all.map do |patient|
      patient.appointment 
    end
  end
  
  def self.all 
    @@all 
  end
end