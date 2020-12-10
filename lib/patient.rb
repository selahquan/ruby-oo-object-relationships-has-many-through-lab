class Patient
    attr_accessor :name, :patient, :doctor
    @@all = []
    def initialize(name)
        @name= name
        self.class.all << self
    end
    def new(name)
        Patient.new(name)
    end
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end
    def doctors
        appointments.map {|appointment| appointment.doctor}
    end

end
