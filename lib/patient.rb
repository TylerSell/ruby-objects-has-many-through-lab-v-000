class Patient
  attr_accessor :name, :appointment
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(doctor, appointment)
    app = Appointment.new(appointment, self, doctor)
    return app
  end
  
  def appointments 
    Appointment.all.select do |doctor|
      doctor.appointment
    end
  end
  
  def doctors 
    Appointment.all.map do |patient|
      patient.doctor 
    end
  end
end
