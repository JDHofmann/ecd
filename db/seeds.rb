q1 = Question.create(
    text: "If the child is presenting with an injury, was there an apparent or obvious delay in seeking treatment that is out of proportion to severity of symptoms?",
    category: "History"
)

q2 = Question.create(
    text: "Does the reported history seem inconsistent either with accounts from other witnesses or with the nature of the presenting injury or injuries?",
    category: "History"
)

q3 = Question.create(
    text: "Is the history of the injury inconsistent with the developmental age of the child?",
    category: "History"
)

q4 = Question.create(
    text: "Is there a history of substance use or domestic violence in the home?",
    category: "History"
)

q5 = Question.create(
    text: "Is there a history of “doctor shopping”?",
    category: "History"
)

q6 = Question.create(
    text: "Are there bruises on padded areas of the body (e.g., buttocks, face, genitalia, earlobe, neck, upper lip)?",
    category: "Physical Exam"
)

br0 = Answer.create(
    text: "No bruises",
    point_value: 0
)
QuestionAnswer.create(
            question_id: q6.id,
            answer_id: br0.id
        )
br1 = Answer.create(
    text: "1-2 bruises",
    point_value: 1
)
QuestionAnswer.create(
            question_id: q6.id,
            answer_id: br1.id
        )
br2 = Answer.create(
    text: "3-4 bruises",
    point_value: 2
)
QuestionAnswer.create(
            question_id: q6.id,
            answer_id: br2.id
        )
br3 = Answer.create(
    text: "5 or more bruises",
    point_value: 3
)
QuestionAnswer.create(
            question_id: q6.id,
            answer_id: br3.id
        )

q6 = Question.create(
    text: "Are there bruises on padded areas of the body (e.g., buttocks, face, genitalia, earlobe, neck, upper lip)?",
    category: "Physical Exam"
)
# If bruises, are bruises sharply delineated? (Y/N)
# If bruises, are bruises of varying colors (indicates bruises of varying ages)? (Y/N)


# Is there evidence of burn injury that is not consistent with accidental spills or splashes? (Y/N)
# If burns, are burns in a stocking or glove pattern? (Y/N or NA)
# If burns, are these burns bilateral? (Y/N or NA)

# Are retinal hemorrhages found on exam? (Y/N)
# Are there other signs of neglect?
# Poor hygiene (including dental) (Y/N)
# Evidence of under- or malnourishment (Y/N)
# Witnessed aggressive familial interactions
# Poor parental health and wellness? (Y/N)


yes1 = Answer.create(
    text: "Yes",
    point_value: 1
)
no = Answer.create(
    text: "No",
    point_value: 0
)

yes_or_nos = [q1,q2,q3,q4,q5]

def create_yes_or_nos(qs, yes1, no) 
    qs.each do |q|
        QuestionAnswer.create(
            question_id: q.id,
            answer_id: yes1.id
        )
        QuestionAnswer.create(
            question_id: q.id,
            answer_id: no.id
        )
    end 
end
create_yes_or_nos(yes_or_nos, yes1, no)


# Radiology
q6 = Question.create(
    text: "Is there a history of “doctor shopping”?",
    category: "Radiological Findings"
)
# Is there evidence of injury on imaging? (Y/N) - 0 points (if no, skip rest of radiology questions)
# Does head CT show subdural hematoma, cerebral edema, diffuse axonal injury or hypoxic ischemic encephalopathy? (Y/N or NA)


#  not sure how to organize this below

# On imaging are there any fractures present?

# On X-ray, are there metaphyseal fractures, rib fractures, scapular fractures, or fractures of the outer end of the clavicle? (Y- 2pts/N)
# On X-ray, are there mid-clavicular fractures, linear skull bone fractures, long bone fractures? (Y - 1pt / N)

# these two if's are to be shown if either question above is yes

# If fractures, are the fractures bilateral? (Y/N)
# If fractures, are there multiple fractures at various stages of healing? (Y/N)



# On abdominal imaging is there bowel or pancreatic injury? (Y/N or NA)
# On abdominal imaging is there evidence of delayed presentation (e.g., peritonitis or sepsis)? (Y/N or NA)

