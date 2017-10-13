

class Patient
  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appt|
      appt.doctor
    end
  end

end
