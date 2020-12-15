UserAnswer.destroy_all
QuestionAnswer.destroy_all
Question.destroy_all 
Answer.destroy_all 
User.destroy_all

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

q7 = Question.create(
    text: "How many bruises are there on padded areas of the body (e.g., buttocks, face, genitalia, earlobe, neck, upper lip)?",
    category: "Physical Exam",
    required_yes_id: q6.id
    )
    
    br0 = Answer.create(
        text: "No bruises",
        point_value: 0
    )
    QuestionAnswer.create(
                question_id: q7.id,
                answer_id: br0.id
            )
    br1 = Answer.create(
        text: "1-2 bruises",
        point_value: 1
    )
    QuestionAnswer.create(
                question_id: q7.id,
                answer_id: br1.id
            )
    br2 = Answer.create(
        text: "3-4 bruises",
        point_value: 2
    )
    QuestionAnswer.create(
                question_id: q7.id,
                answer_id: br2.id
            )
    br3 = Answer.create(
        text: "5 or more bruises",
        point_value: 3
    )
    QuestionAnswer.create(
                question_id: q7.id,
                answer_id: br3.id
            )

q8 = Question.create(
    text: "Are bruises sharply delineated?",
    category: "Physical Exam",
    required_yes_id: q6.id
)

q9 = Question.create(
    text: "Are bruises of varying colors (indicates bruises of varying ages)?",
    category: "Physical Exam",
    required_yes_id: q6.id
)

q10 = Question.create(
    text: "Is there evidence of burn injury that is not consistent with accidental spills or splashes?",
    category: "Physical Exam"
)

q11 = Question.create(
    text: "Are burns in a stocking or glove pattern?",
    category: "Physical Exam",
    required_yes_id: q10.id
)

q12 = Question.create(
    text: "Are these burns bilateral?",
    category: "Physical Exam",
    required_yes_id: q10.id
)

q13 = Question.create(
    text: "Are retinal hemorrhages found on exam?",
    category: "Physical Exam"
)

q14 = Question.create(
    text: "Are there other signs of neglect?",
    category: "Physical Exam"
)

q15 = Question.create(
    text: "Poor hygiene (including dental)",
    category: "Physical Exam",
    required_yes_id: q14.id
)

q16 = Question.create(
    text: "Evidence of under- or malnourishment",
    category: "Physical Exam",
    required_yes_id: q14.id
)

q17 = Question.create(
    text: "Witnessed aggressive familial interactions",
    category: "Physical Exam",
    required_yes_id: q14.id
)

q18 = Question.create(
    text: "Poor parental health and wellness?",
    category: "Physical Exam",
    required_yes_id: q14.id
)

# Is there evidence of injury on imaging? (Y/N) - 0 points (if no, skip rest of radiology questions)

q19 = Question.create(
    text: "Is there evidence of injury on imaging?",
    category: "Radiological Findings"
)

yes0 = Answer.create(
    text: "Yes",
    point_value: 0
)
no0 = Answer.create(
    text: "No",
    point_value: 0
)
QuestionAnswer.create(
    question_id: q19.id,
    answer_id: yes0.id
)
QuestionAnswer.create(
    question_id: q19.id,
    answer_id: no0.id
)


q20 = Question.create(
    text: "Does head CT show subdural hematoma, cerebral edema, diffuse axonal injury or hypoxic ischemic encephalopathy?",
    category: "Radiological Findings"
)

q21 = Question.create(
    text: "On imaging are there any fractures present?",
    category: "Radiological Findings"
)

q22 = Question.create(
    text: "On X-ray, are there metaphyseal fractures, rib fractures, scapular fractures, or fractures of the outer end of the clavicle?",
    category: "Radiological Findings",
    required_yes_id: q21.id
)

yes2 = Answer.create(
    text: "Yes",
    point_value: 2
)
no2 = Answer.create(
    text: "No",
    point_value: 0
)
qa_one = QuestionAnswer.create(
    question_id: q22.id,
    answer_id: yes2.id
)
QuestionAnswer.create(
    question_id: q22.id,
    answer_id: no2.id
)

q23 = Question.create(
    text: "On X-ray, are there mid-clavicular fractures, linear skull bone fractures, long bone fractures?",
    category: "Radiological Findings",
    required_yes_id: q21.id
)

q24 = Question.create(
    text: "Are the fractures bilateral?",
    category: "Radiological Findings",
    required_yes_id: q21.id
)

q25 = Question.create(
    text: "are there multiple fractures at various stages of healing?",
    category: "Radiological Findings",
    required_yes_id: q21.id
)

q26 = Question.create(
    text: "On abdominal imaging is there bowel or pancreatic injury?",
    category: "Radiological Findings"
)

q27 = Question.create(
    text: "On abdominal imaging is there evidence of delayed presentation (e.g., peritonitis or sepsis)?",
    category: "Radiological Findings",
    required_yes_id: q26.id
)


yes1 = Answer.create(
    text: "Yes",
    point_value: 1
)
no = Answer.create(
    text: "No",
    point_value: 0
)

yes_or_nos = [q1,q2,q3,q4,q5,q6,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q20,q21,q23,q24,q25,q26,q27]

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

user_one = User.create(score: 5)

ua_one = UserAnswer.create(
    user_id: user_one.id,
    question_answer_id: qa_one.id
)

