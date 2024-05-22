from sqlalchemy import Boolean, CheckConstraint, Column, Date, Float, ForeignKey, Integer, String, Time,Text, UniqueConstraint
from sqlalchemy.orm import relationship

from database import Base

# class Location(Base):
#     __tablename__ = 'Dloc'

#     Locid = Column(Integer, primary_key=True)
#     locname = Column(String)

# class Department(Base):
#     __tablename__ = 'department'

#     DEPTNO = Column(Integer, primary_key=True)
#     DNAME = Column(String)
#     Locid = Column(Integer, ForeignKey('Dloc.Locid'))
    
#     location = relationship('Location', backref='departments')


# class Appointment(Base):
#     __tablename__ = "appointment"

#     appointment_id = Column(Integer, primary_key=True, index=True)
#     appointment_date = Column(Date)
#     appointment_time = Column(Time)
#     patient_name = Column(String(100), index=True)
#     patient_age = Column(Integer, default=0)
#     additional_information = Column(String(255), index=True)

#     __table_args__ = (
#         CheckConstraint('patient_age >= 0', name='chk_patient_age'),
#     )

# class User(Base):
#     __tablename__ = "users"

#     id = Column(Integer, primary_key=True, index=True)
#     email = Column(String(255), unique=True, index=True)
#     hashed_password = Column(String(255))
#     is_active = Column(Boolean, default=True)
    
#     items = relationship("Item", back_populates="owner")


# class Item(Base):
#     __tablename__ = "items"

#     id = Column(Integer, primary_key=True, index=True)
#     title = Column(String(255), index=True)
#     description = Column(String(255), index=True)
#     owner_id = Column(Integer, ForeignKey("users.id"))

#     owner = relationship("User", back_populates="items")


# class Doctor(Base):
#     __tablename__ = "doctor"

#     id = Column(Integer, primary_key=True, index=True)
#     name = Column(String(255), index=True)
#     specialization = Column(String(255), index=True)

#     # visits = relationship('Visits', backref='doctor')

# class Patient(Base):
#     __tablename__ = "patient"

#     patientid = Column(Integer, primary_key=True, index=True)
#     name = Column(String(255), index=True)
#     email = Column(String(255), index=True)
#     gender = Column(String(50), index=True)
#     age = Column(Integer, index=True)
#     address = Column(String(255), index=True)
#     phone = Column(String(50), index=True)
#     region = Column(String(255), index=True)
#     dateofbirth = Column(Date, index=True)

#     Visits = relationship('Visits', backref='patient')
    
# class Visits(Base):
#     __tablename__ = "visits"

#     visitid = Column(Integer, primary_key=True, index=True)
#     patientid = Column(Integer, ForeignKey("patient.patientid"))
#     doctorid = Column(Integer, ForeignKey("doctor.id"))
#     dateofvisit = Column(Date, index=True)
#     timeofvisit = Column(Time, index=True)

#     Patient = relationship("Patient", back_populates="Visits")
#     Doctor = relationship('Doctor', backref='Visits')



class Doctorsmodel(Base):
    __tablename__ = "DOCTOR"

    drID = Column(Integer, primary_key=True)
    doctorname = Column(String(100))
    Medical_License_Number = Column(String(50))
    Qualifications = Column(Text)
    Experience = Column(Integer)
    Hospital_Privileges = Column(String(255))
    HR_ID = Column(Integer,  ForeignKey("HR.HR_ID") )   
    ShiftStart = Column(Time)
    ShiftEnd = Column(Time)
    Specialization = Column(String(20))
    Ratings = Column(String(4))
    Charges = Column(String(10))

   # doctors = relationship("Doctor", back_populates="hr")


class HR(Base):
    __tablename__ = 'HR'
    
    HR_ID = Column(Integer, primary_key=True, nullable=False)
    EmpId = Column(Integer, nullable=True)
    PASSWORD = Column(String(255), nullable=True)

   # hr = relationship("HR", back_populates="doctors")


class Patient(Base):
    __tablename__ = 'Patient'
    
    PatientID = Column(Integer, primary_key=True, autoincrement=True, nullable=False)
    Name = Column(String(100), nullable=True)
    Age = Column(Integer, nullable=True)
    Gender = Column(String(10), nullable=True)
    EmailAddress = Column(String(255), nullable=True)
    Address = Column(String(255), nullable=True)
    ContactInformation = Column(String(100), nullable=True)
    EmergencyContact = Column(String(100), nullable=True)
    InsuranceInformation = Column(String(255), nullable=True)
    Password = Column(String(255), nullable=True)

    
   
class Visit(Base):
    __tablename__ = 'Visit'
    
    VisitID = Column(Integer, primary_key=True, nullable=False)
    PatientID = Column(Integer, nullable=False)
    drID = Column(Integer, nullable=False)
    DateOfVisit = Column(Date, nullable=False)
    TimeOfVisit = Column(String(15), nullable=False)
    Reasonforchekcup = Column(Text, nullable=False)

class VisitorsVisit(Base):
    __tablename__ = 'VisitorsVisit'
    
    VisitID = Column(Integer, primary_key=True, nullable=False)
    VisitorID = Column(Integer, nullable=False)
    drID = Column(Integer, nullable=False)
    DateOfVisit = Column(Date, nullable=False)
    TimeOfVisit = Column(String(15), nullable=False)
    Reasonforchekcup = Column(Text, nullable=False)



class VisitBill(Base):
    __tablename__ = 'VisitBill'
    
    BillID = Column(Integer, primary_key=True, nullable=False)
    VisitID = Column(Integer, nullable=False)
    BillDate = Column(Date, nullable=False)
    BillTime = Column(Time, nullable=False)
    BillStatus = Column(String(50), nullable=False)
    Charges = Column(Integer, nullable=False)

class VisiterBill(Base):
    __tablename__ = 'VisiterBill'
    
    BillID = Column(Integer, primary_key=True, nullable=False)
    VisiterID = Column(Integer, nullable=False)
    BillDate = Column(Date, nullable=False)
    BillTime = Column(Time, nullable=False)
    BillStatus = Column(String(50), nullable=False)
    Charges = Column(Integer, nullable=False)

class Visiter(Base):
    __tablename__ = 'Visiters'
    
    VisiterID = Column(Integer, primary_key=True, autoincrement=True)
    Name = Column(String(50), nullable=False)
    Age = Column(Integer, nullable=False)
    Gender = Column(String(10), nullable=False)
    Email = Column(String(50), nullable=False)
    Contactno = Column(String(20), nullable=False)
    Emergency_Contactno = Column(String(20), nullable=False)

class Test(Base):
    __tablename__ = 'Test'
  
    Test_ID = Column(Integer, primary_key=True, nullable=False)
    TestName =  Column(String(255), nullable=False)

class TestBill(Base):
    __tablename__ = 'TestBill'
    
    BillID = Column(Integer, primary_key=True, nullable=False)
    ScheduleID = Column(Integer, nullable=False)
    BillDate = Column(Date, nullable=False)
    BillTime = Column(Time, nullable=False)
    BillStatus = Column(String(50), nullable=False)
    Charges = Column(Integer, nullable=False)

class TestScheduling(Base):
    __tablename__ = 'TestScheduling'
    
    ScheduleID = Column(Integer, primary_key=True, nullable=False)
    TestID = Column(Integer, nullable=False)
    PatientID = Column(Integer, nullable=False)
    DateOfTest = Column(Date, nullable=False)
    TimeOfTest = Column(String(15), nullable=False)
 

 
class UnregisteredtestScheduling(Base):
    __tablename__ = 'UnregisteredTestsScheduling'
    
    ScheduleID = Column(Integer, primary_key=True, autoincrement=True)
    TestID = Column(Integer, nullable=False)
    Name = Column(String(50), nullable=False)
    Age = Column(Integer, nullable=False)
    Gender = Column(String(10), nullable=False)
    Email = Column(String(50), nullable=False)
    Contactno = Column(String(20), nullable=False)
    Emergency_Contactno = Column(String(20), nullable=False)
    Date = Column(Date,nullable=False)
    Time = Column(String(15),nullable=False)

class unregisteredTestbill(Base):
    __tablename__ = 'UnregisteredTestBill'
    
    BillID = Column(Integer, primary_key=True, autoincrement=True)
    ScheduleID = Column(Integer, primary_key=True, nullable=False)
    BillDate = Column(Date, nullable=False)
    BillTime = Column(String(15), nullable=False)
    BillStatus = Column(String(15), nullable=False)
    Charges = Column(Integer, nullable=False)
 

class PatientDisease(Base):
    __tablename__ = 'PatientDiseases'
    
    ID = Column(Integer, primary_key=True, index=True)
    PatientID = Column(Integer, nullable=False)
    Disease = Column(String(255), nullable=False)
    levels = Column(String(255), nullable=False)


class PatientTreatment(Base):
    __tablename__ = 'PatientTreatment'
    
    TreatmentID = Column(Integer, primary_key=True, index=True)
    PatientID = Column(Integer, nullable=False)
    Treatment = Column(String(255), nullable=False)
    Status = Column(String(50), nullable=False)

class PatientAllergies(Base):
    __tablename__ = 'PatientAllergies'
    
    ID = Column(Integer, primary_key=True, index=True)
    PatientID = Column(Integer, nullable=False)
    Allergy = Column(String(255), nullable=False)
    Level = Column(String(50), nullable=False)


class LabReport(Base):
    __tablename__ = 'Labreports'

    reportid = Column(Integer, primary_key=True, index=True)
    patientid = Column(Integer, index=True)
    testname = Column(String(255))
    testdate = Column(String(255))
    testtime = Column(String(255))
    component1 = Column(String(255))
    component2 = Column(String(255))
    component3 = Column(String(255))
    result1 = Column(String(255))
    result2 = Column(String(255))
    result3 = Column(String(255))
    unit1 = Column(String(255))
    unit2 = Column(String(255))
    unit3 = Column(String(255))
    adult1 = Column(String(255))
    adult2 = Column(String(255))
    adult3 = Column(String(255))
    child1 = Column(String(255))
    child2 = Column(String(255))
    child3 = Column(String(255))
    reportdate = Column(String(255))
    refby = Column(String(255))
    teststatus = Column(String(255))
    laboratoristID = Column(Integer)



class PatientPrescription(Base):
    __tablename__ = 'PatientPrescriptions'
    
    ID = Column(Integer, primary_key=True, index=True)
    PatientID = Column(Integer, index=True)
    drname = Column(String(255))
    appointmentdate = Column(String(255))
    prescription = Column(String(500))
    
# class LoginModels(Base):
#     __tablename__ = "LoginInfo"
#     EmailAddress = Column(String(500),  primary_key=True)
#     Passwords = Column(String(500))
#     PatientId = Column(Integer)

# class Patient2Model(Base):
#     __tablename__ = "Patient2"
#     PatientID = Column(Integer, primary_key=True)
#     Name = Column(String(100))
#     Age = Column(Integer)
#     Gender = Column(String(10))
#     EmailAddress= Column(String(255))
#     Address= Column(String(255))
#     ContactInformation = Column(String(100))
#     EmergencyContact = Column(String(100))
#     InsuranceInformation = Column(String(255))
#     Password = Column(String(255))

#     class Config:
#         orm_mode = True