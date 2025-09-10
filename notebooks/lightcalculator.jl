 begin
       h = 6.62607015e-34
           println("Wave Length, frequency or energy? ")
           light = lowercase(readline())

           if light == "frequency"
               println("Do you have wave length or energy?")
               freqorleng = lowercase(readline())
                   if freqorleng == "wave length"
                   println("In meters or nanometers?")
                   mornm = lowercase(readline())
                       if mornm == "meters"
                           println("What is your wave length in meters?")
                           lengthm = parse(Float64, readline())
                           mfreq = 299792458 / ( lengthm * 1e-9)
                           println("Your frequency is $(mfreq) hz")
                       elseif mornm == "nanometers"
                           println("What is your wave length in nanometers?")
                           lengthnm = parse(Float64, readline())
                           nmfreq = 299792458 / lengthnm
                           println("Your frequency is $(nmfreq) hz")
                       elseif freqorleng == "energy"
                           println("What is your energy in J?")
                           energytofreq = parse(Float64, readline())
                           energytofreqanswer = energytofreq / h
                           println("Your frequency is $(energytofreqanswer) hz")
                       end
                   end
           elseif light == "energy"
               println("Do you have wave length or frequency?")
               energyanswer = lowercase(readline())
                   if energyanswer == "frequency"
                       println("What is your frequency?")
                       frequencytoenergy = parse(Float64, readline())
                       freqtoenans = h * frequencytoenergy
                       println("Your energy is $(freqtoenans) J")
                   elseif energyanswer == "wave length"
                        println("Wave length in nanometers or meters?")
                      mornm = lowercase(readline())
                          if mornm == "meters"
                              println("What is your wave length in meters?")
                              lengthm = parse(Float64, readline())
                              mfreq = h * (299792458 / ( lengthm * 1e-9))
                              println("Your energy is $(mfreq) J")
                          elseif mornm == "nanometers"
                              println("What is your wave length in nanometers?")
                              lengthnm = parse(Float64, readline())
                              nmfreq = h * (299792458 / lengthnm)
                              println("Your energy is $(nmfreq) J")
                          end
                   end
           elseif light == "wave length"
               println("Do you have energy or frequency?")
               wavelengthanswer = lowercase(readline())
                   if wavelengthanswer == "frequency"
                       println("What is your frequency?")
                       freqtolength = parse(Float64, readline())
                       freqtolengthansm = 299792458 / freqtolength
                       freqtolengthansnm = (299792458 / freqtolength) / 1e-9
                       println("Your wave length is $(freqtolengthansm) m, or $(freqtolengthnasnm) nm")
                   elseif wavelengthanswer == "energy"
                       println("What is your energy?")
                       enertolength = parse(Float64, readline())
                       enertolengthansm = 299792458 / (enertolength / h)
                       enertolengthansnm = (299792458 / (enertolength / h)) / 1e-9
                       println("Your wave length is $(enertolengthansm) m, or $(enertolengthansnm) nm")
                   end
           else
           println("Wrong input")
           end
end