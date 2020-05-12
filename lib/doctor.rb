require "pry" 
class Doctor

attr_accessor :name, :song

@@all = []

def initialize(name)
  @name = name 
  @@all << self 
  
end
  
def self.all 
  @@all
end

def appointments
  Appointment.all.select { |appointment| appointment.doctor == self }
end

def patients
  appointments.map { |appointment| appointment.patient  }
end


def new_appointment(date, patient)
  Appointment.new(date, patient, self) 
end



  
end