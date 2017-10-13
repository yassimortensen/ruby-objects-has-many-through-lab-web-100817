

class Doctor
  attr_reader :name, :appointments
  attr_accessor :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appt|
      appt.patient
    end
  end


end
