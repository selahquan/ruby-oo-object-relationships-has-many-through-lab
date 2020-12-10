class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []
    def initialize(date, patient, doctor)
        @date= date
        @patient= patient
        @doctor= doctor
        self.class.all << self
    end
    def self.all
        @@all
    end
    def new(date, patient, doctor)
        Appointment.new(date, patient, doctor)
    end
    def patient
        @patient
    end
    def doctor
        @doctor
    end
end
