data Gender = Male | Female

genderInitial :: Gender -> String
genderInitial Male = "m"
genderInitial Female = "f"

-- record with syntax
data Patient = Patient {
    name :: String,
    gender :: Gender,
    age :: Int
}

johnDoe :: Patient
johnDoe = Patient{
    name = "John Doe",
    gender = Female,
    age = 12
}

-- Q12.2
patientSummary :: Patient -> String
patientSummary p = "**********" ++ "\n" ++ "Name: " ++ name p ++ "Gender: " ++ genderInitial (gender p)