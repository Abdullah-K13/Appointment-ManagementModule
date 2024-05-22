from typing import List, Optional
from pydantic import BaseModel
from datetime import date, time


# class ItemBase(BaseModel):
#     title: str
#     description: Optional[str] = None

# class ItemCreate(ItemBase):
#     pass

# class Item(ItemBase):
#     id: int
#     owner_id: int

#     class Config:
#         orm_mode = True


# class UserBase(BaseModel):
#     email: str


# class UserCreate(UserBase):
#     password: str


# class UserCreate(BaseModel):
#     DEPTNO: int
#     DNAME: str
#     Locid: int

# class User(BaseModel):
#     email: str
#     hashed_password: str

#     class Config:
#         orm_mode = True


# class DepartmentSchema(BaseModel):
#     DEPTNO: int
#     DNAME: str
#     Locid: int

#     class Config:
#         orm_mode = True
        
# class AppointmentSchema(BaseModel):
#     appointment_id: Optional[int] = None
#     appointment_date: date
#     appointment_time: time
#     patient_name: str
#     patient_age: int
#     additional_information: str

#     class Config:
#        orm_mode = True


# class Doctor(BaseModel):
#     id: Optional[int] = None
#     name: str
#     specialization: str

# class Patient(BaseModel):
#     patient_id: Optional[int] = None
#     name: str
#     email: str
#     gender: str
#     age: int
#     address: str
#     phone: str
#     region: str
#     date_of_birth: date

# class Visits(BaseModel):
#     visitid: int
#     doctorid: int
#     patientid:int
#     dateofvisit: date
#     timeofvisit: time

#     class Config:
#         orm_mode = True

class Doctorschema(BaseModel):
    drID: int
    doctorname: str
    Medical_License_Number: str
    Qualifications: str
    Experience: int
    Hospital_Privileges: str
    HR_ID: int
    ShiftStart: time
    ShiftEnd: time
    Specialization: str
    Ratings: str
    Charges: str

    class Config:
        orm_mode = True


# class PatientBase(BaseModel):
#     Name: str
#     Age: int
#     Gender: str
#     EmailAddress: str
#     Address: str
#     ContactInformation: str
#     EmergencyContact: str
#     InsuranceInformation: str
#     Password: str



class Patientschema(BaseModel):
    PatientID: int
    Name: str
    Age: int
    Gender: str
    EmailAddress: str
    Address: str
    ContactInformation: str
    EmergencyContact: str
    InsuranceInformation:str
    Password:str 

    class Config:
        orm_mode = True

    

class Visitschemas(BaseModel):
    VisitID: int
    PatientID: int
    drID: int
    DateOfVisit: date
    TimeOfVisit: str
    Reasonforchekcup: str


class VisitorvisitSchema(BaseModel):
    VisitID: int
    VisitorID: int
    drID: int
    DateOfVisit: date
    TimeOfVisit: str
    Reasonforchekcup: str


class VisitBillschemas(BaseModel):
    BillID: int
    VisitID: int
    BillDate: date
    BillTime: str
    BillStatus: str
    Charges: int

class VisiterBillschemas(BaseModel):
    BillID: int
    VisiterID: int
    BillDate: date
    BillTime: str
    BillStatus: str
    Charges: int

class Visiterschemas(BaseModel):
    VisiterID: int
    Name: str
    Age: int
    Gender: str
    Email: str
    Contactno: str
    Emergency_Contactno: str

class TestSchema(BaseModel):
    Test_ID: int
    TestName: str

class Testscheduling(BaseModel):
    ScheduleID: int
    Test_ID: int
    PatientID: int
    DateOfTest: date
    TimeOfTest: str

class Testbill(BaseModel):
    BillID: int
    ScheduleID: int
    BillDate: date
    BillTime: str
    BillStatus: str
    Charges: int


class Unregisteredscheduling(BaseModel):
    ScheduleID: int
    TestID: int
    Name: str
    Age: int
    Gender: str
    Email: str
    Contactno: str
    Emergency_Contactno: str
    Date: date
    Time: str

class UnregisteredTestbill(BaseModel):
    BillID: int
    ScheduleID: int
    BillDate: date
    BillTime: str
    BillStatus: str
    Charges: int

class PatientDiseaseBase(BaseModel):
    ID: int
    PatientID: int
    Disease: str
    levels: str


class PatientTreatmentBase(BaseModel):
    TreatmentID:int
    PatientID: int
    Treatment: str
    Status: str

class PatientAllergiesBase(BaseModel):
    ID: int
    PatientID: int
    Allergy: str
    Level: str


class LabReportBase(BaseModel):
    reportid:int
    patientid: int
    testname: Optional[str] = None
    testdate: Optional[str] = None
    testtime: Optional[str] = None
    component1: Optional[str] = None
    component2: Optional[str] = None
    component3: Optional[str] = None
    result1: Optional[str] = None
    result2: Optional[str] = None
    result3: Optional[str] = None
    unit1: Optional[str] = None
    unit2: Optional[str] = None
    unit3: Optional[str] = None
    adult1: Optional[str] = None
    adult2: Optional[str] = None
    adult3: Optional[str] = None
    child1: Optional[str] = None
    child2: Optional[str] = None
    child3: Optional[str] = None
    reportdate: Optional[str] = None
    refby: Optional[str] = None
    teststatus: Optional[str] = None
    laboratoristID: Optional[int] = None


class PatientPrescriptionBase(BaseModel):
    ID:int
    PatientID: int
    drname: str
    appointmentdate: str
    prescription: str

class PatientPrescriptiononly(BaseModel):

    drname: str
    appointmentdate: str
    prescription: str

