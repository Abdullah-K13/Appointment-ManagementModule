from sqlalchemy import Date
from sqlalchemy.orm import Session
from datetime import date
from datetime import datetime

import models, schemas


# def get_user(db: Session, user_id: int):
#     return db.query(models.User).filter(models.User.id == user_id).first()


# def get_user_by_email(db: Session, email: str):
#     return db.query(models.User).filter(models.User.email == email).first()


# def get_users(db: Session):
#     return (
#         db.query(models.User)
#         .all()
#     )


# def create_dept(db: Session, user: schemas.DepartmentSchema):
#     db_dept = models.Department(
#         DEPTNO=user.DEPTNO, DNAME=user.DNAME,Locid = user.Locid
#     )
#     db.add(db_dept)
#     db.commit()
#     db.refresh(db_dept)
#     return db_dept

def create_patient(db: Session, patient: schemas.Patientschema):
    db_patient = models.Patient(

        Name=patient.Name,
        Age=patient.Age,
        Gender=patient.Gender,
        EmailAddress=patient.EmailAddress,
        Address=patient.Address,
        ContactInformation=patient.ContactInformation,
        EmergencyContact = patient.EmergencyContact,
        InsuranceInformation=patient.InsuranceInformation,
        Password=patient.Password
    )
    db.add(db_patient)
    db.commit()
    db.refresh(db_patient)
    return db_patient



def post_visits_table(db: Session, visit: schemas.Visitschemas):
    db_visit = models.Visit(
    PatientID = visit.PatientID,
    drID =  visit.drID,
    DateOfVisit = visit.DateOfVisit,
    TimeOfVisit = visit.TimeOfVisit,
    Reasonforchekcup = visit.Reasonforchekcup
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit

def post_visitors_visit_table(db: Session, visit: schemas.VisitorvisitSchema):
    visitrecord = db.query(models.Visiter.VisiterID).order_by(models.Visiter.VisiterID.desc()).first()
    visitorid = visitrecord[0]

    db_visit = models.VisitorsVisit(
    VisitorID = visitorid,
    drID = visit.drID,
    DateOfVisit = visit.DateOfVisit,
    TimeOfVisit = visit.TimeOfVisit,
    Reasonforchekcup = visit.Reasonforchekcup
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit

def post_visitors_visits_bill_table(db: Session, status:str, drid:int):
    current_time = datetime.now().time().strftime("%H:%M:%S")
    visitrecord = db.query(models.VisitorsVisit.VisitID).order_by(models.VisitorsVisit.VisitID.desc()).first()
    visitid = visitrecord[0]
    print(visitid)

    charges = db.query(models.Doctorsmodel.Charges).filter(models.Doctorsmodel.drID == drid).scalar()
    db_visit = models.VisiterBill(
    VisiterID = visitid,
    BillDate =  date.today(),
    BillTime = current_time,
    BillStatus = status,
    Charges = charges
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit



def post_visits_bill_table(db: Session, status:str,drid):
    current_time = datetime.now().time().strftime("%H:%M:%S")
    visitrecord = db.query(models.Visit.VisitID).order_by(models.Visit.VisitID.desc()).first()
    visitid = visitrecord[0]
    print(visitid)

    charges = db.query(models.Doctorsmodel.Charges).filter(models.Doctorsmodel.drID == drid).scalar()

    db_visit = models.VisitBill(
    VisitID = visitid,
    BillDate =  date.today(),
    BillTime = current_time,
    BillStatus = status,
    Charges = charges
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit



def post_visitors(db: Session, visit: schemas.Visiterschemas):
    db_patient = models.Visiter(

        Name=visit.Name,
        Age=visit.Age,
        Gender=visit.Gender,
        Email=visit.Email,
        Contactno=visit.Contactno,
        Emergency_Contactno = visit.Emergency_Contactno,
    )
    db.add(db_patient)
    db.commit()
    db.refresh(db_patient)
    return db_patient

def post_visitorsbill_table(db: Session, status:str):
    current_time = datetime.now().time().strftime("%H:%M:%S")
    visit_record = db.query(models.Visit.VisitID).order_by(models.Visit.VisitID.desc()).first()
    

    db_visit = models.VisitBill(
    VisitID = visit_record,
    BillDate =  date.today(),
    BillTime = current_time,
    BillStatus = status,
    Charges = 2000
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit

def post_test_schedling(db: Session, test: schemas.Testscheduling):
    db_visit = models.TestScheduling(
    TestID =  test.Test_ID,
    PatientID = test.PatientID,
    DateOfTest = test.DateOfTest,
    TimeOfTest = test.TimeOfTest,
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit


def post_testbill_table(db: Session, status:str,charges:int):
    current_time = datetime.now().time().strftime("%H:%M:%S")
    test_record = db.query(models.TestScheduling.ScheduleID).order_by(models.TestScheduling.ScheduleID.desc()).first()
    scheduleid = test_record[0]

    db_visit = models.TestBill(
    ScheduleID = scheduleid,
    BillDate =  date.today(),
    BillTime = current_time,
    BillStatus = status,
    Charges = charges
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit


def post_visitorsfortest(db: Session, test: schemas.Unregisteredscheduling):
    db_patient = models.UnregisteredtestScheduling(
        TestID = test.TestID,
        Name=test.Name,
        Age=test.Age,
        Gender=test.Gender,
        Email=test.Email,
        Contactno=test.Contactno,
        Emergency_Contactno = test.Emergency_Contactno,
        Date = test.Date,
        Time = test.Time
    )
    db.add(db_patient)
    db.commit()
    db.refresh(db_patient)
    return db_patient

def post_unregisteredtestbill_table(db: Session, status:str,charges:int):
    current_time = datetime.now().time().strftime("%H:%M:%S")
    test_record = db.query(models.UnregisteredtestScheduling.ScheduleID).order_by(models.UnregisteredtestScheduling.ScheduleID.desc()).first()
    scheduleid = test_record[0]

    db_visit = models.unregisteredTestbill(
    ScheduleID = scheduleid,
    BillDate =  date.today(),
    BillTime = current_time,
    BillStatus = status,
    Charges = charges
    )
    db.add(db_visit)
    db.commit()
    db.refresh(db_visit)
    return db_visit



def fetchpatient_diseases(db: Session, patientid:int):
    return db.query(models.PatientDisease).filter(models.PatientDisease.PatientID == patientid).all()

def fetchpatienttreatments(db: Session, patientid:int):
    return db.query(models.PatientTreatment).filter(models.PatientTreatment.PatientID == patientid).all()

def fetchpatientallergies(db: Session, patientid:int):
    return db.query(models.PatientAllergies).filter(models.PatientAllergies.PatientID == patientid).all()

def fetch_allreportsdata(db: Session, patientid:int):
    return db.query(models.LabReport).filter(models.LabReport.patientid == patientid).all()

def fetchspecificreportsdata(db: Session, reportid:int):
    return db.query(models.LabReport).filter(models.LabReport.reportid ==reportid).first()



# def create_appointment(db: Session, user: schemas.AppointmentSchema):
#     db_appt = models.Appointment(
#         appointment_date=user.appointment_date, appointment_time=user.appointment_time,patient_name = user.patient_name,patient_age=user.patient_age,
#         additional_information = user.additional_information
#     )
#     db.add(db_appt)
#     db.commit()
#     db.refresh(db_appt)
#     return db_appt

def get_time_by_dates(db: Session,doctorid:int,date:Date):
    return db.query(models.Visit).filter((models.Visit.drID == doctorid) & (models.Visit.DateOfVisit== date)).all()


def fetch_doctor2by_id(db: Session,docid:int):
    return db.query(models.Doctorsmodel).filter(models.Doctorsmodel.drID == docid).all()

def fetch_alldoctors_byspecs(db: Session,specialty:str):
    #last_doc = db.query(models.Doctorsmodel).filter(models.Doctorsmodel.Specialization == specialty).order_by(models.Doctorsmodel.drID.desc()).first()
   # print(last_doc)
    return db.query(models.Doctorsmodel).filter(models.Doctorsmodel.Specialization == specialty).all()

def fetch_loginInfo(db: Session,emailaddress:str):
    return db.query(models.Patient).filter(models.Patient.EmailAddress == emailaddress).first()

def fetch_prescriptioninfo(db: Session, patientid: int):
    return db.query(
        models.PatientPrescription.drname,
        models.PatientPrescription.appointmentdate,
        models.PatientPrescription.prescription
    ).filter(models.PatientPrescription.PatientID == patientid).all()


# def fetch_loginInfo(db: Session,emailaddress:str):
#     id = db.query(models.Patient.PatientID).filter(models.Patient.EmailAddress == emailaddress).scalar()
#     print(id)
#     return db.query(models.Patient.PatientID).filter(models.Patient.EmailAddress == emailaddress).scalar()


def fetch_upcomingappointments(db: Session,patientid:int):
    return db.query(models.Visit).filter(models.Visit.PatientID == patientid).all()


def fetch_patientInformation(db: Session,patinetid:int):
    return db.query(models.Patient).filter(models.Patient.PatientID == patinetid).first()


def update_patient_information(db: Session, patientid: int, updated_patient_info: schemas.Patientschema):
    # Retrieve the patient from the database
    db_patient = db.query(models.Patient).filter(models.Patient.PatientID == patientid).first()
    
    # Check if the patient exists
    if db_patient is None:
        return None  # Patient not found
    
    # Update patient information with the provided data
    db_patient.Name = updated_patient_info.Name
    db_patient.Age = updated_patient_info.Age
    db_patient.Gender = updated_patient_info.Gender
    db_patient.Address = updated_patient_info.Address
    db_patient.EmailAddress = updated_patient_info.EmailAddress
    db_patient.Password = updated_patient_info.Password
    db_patient.ContactInformation = updated_patient_info.ContactInformation
    db_patient.EmergencyContact = updated_patient_info.EmergencyContact
    
    # Commit the changes to the database
    db.commit()
    
    # Return the updated patient information
    return db_patient

# def get_items(db: Session, skip: int = 0, limit: int = 100):
#     return (
#         db.query(models.Item)
#         .order_by(models.Item.id)
#         .offset(skip)
#         .limit(limit)
#         .all()
#     )


# def create_user_item(db: Session, item: schemas.ItemCreate, user_id: int):
#     db_item = models.Item(**item.dict(), owner_id=user_id)
#     db.add(db_item)
#     db.commit()
#     db.refresh(db_item)
#     return db_item


# def get_all_Department():
#     session = Session()
#     employees = session.query(models.Department).all()
#     session.close()
#     return employees