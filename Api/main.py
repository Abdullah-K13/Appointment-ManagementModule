from typing import List
from datetime import date
from fastapi import Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session
import uvicorn
import crud, models, schemas
from database import SessionLocal, engine
models.Base.metadata.create_all(bind=engine)

app = FastAPI()


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# def get_all_Department():
#     session = Session()
#     employees = session.query(models.Department).all()
#     session.close()
#     return employees

# @app.post("/viewdetails/", response_model=schemas.DepartmentSchema)
# def create_user(user: schemas.DepartmentSchema, db: Session = Depends(get_db)):
   
#     return crud.create_dept(db=db, user=user)


# @app.post("/postusers/", response_model=schemas.User)
# def create_user(user: schemas.UserCreate, db: Session = Depends(get_db)):
#     db_user = crud.get_user_by_email(db, email=user.email)
#     if db_user:
#         raise HTTPException(status_code=400, detail="Email already registered")
#     return crud.create_user(db=db, user=user)

# @app.get('/getdepts')
# def read_employees():
#     employees = get_all_Department()
#     return employees

# @app.get("/getusers/", response_model=List[schemas.User])
# def read_users( db: Session = Depends(get_db)):
#     users = crud.get_users(db)
#     if users is None:
#         raise HTTPException(status_code=404, detail="User not found")
#     return users

# @app.post("/appointmensats/", response_model=schemas.AppointmentSchema)
# def create_appointment(user: schemas.AppointmentSchema,db: Session = Depends(SessionLocal)):
#     db_appt = crud.create_appointment(db, user)
#     return db_appt

# @app.post("/testappointment/", response_model=schemas.AppointmentSchema)
# def create_user(user: schemas.AppointmentSchema, db: Session = Depends(get_db)):
#     db_user = crud.create_appointment(db, user)
#     if db_user:
#         raise HTTPException(status_code=400, detail="something went wrong ")
#     return crud.create_appointment(db=db, user=user)

@app.post("/postpatientsdata/", response_model=schemas.Patientschema)
def create_user(user: schemas.Patientschema, db: Session = Depends(get_db)):
    db_user = crud.create_patient(db, user)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)

@app.post("/postvisitsbypatients/", response_model=schemas.Visitschemas)
def create_appointments(user: schemas.Visitschemas, db: Session = Depends(get_db)):
    db_user = crud.post_visits_table(db, user)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)

@app.post("/postvisitsbyvisitors/", response_model=schemas.VisitorvisitSchema)
def create_appointmentsby_visitors(visitor_visit: schemas.VisitorvisitSchema, db: Session = Depends(get_db)):
    db_user = crud.post_visitors_visit_table(db, visitor_visit)
    if db_user is None:
        raise HTTPException(status_code=400, detail="Something went wrong")
    return db_user

@app.post("/postvisitsbillbyvisitors/{status}/{drid}", response_model=schemas.VisiterBillschemas)
def create_bill(user: schemas.VisiterBillschemas, status: str,drid:int,db: Session = Depends(get_db)):
    db_user = crud.post_visitors_visits_bill_table(db,status,drid)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)


@app.post("/postvisitsbillbypatients/{status}/{drid}", response_model=schemas.VisitBillschemas)
def create_bill(user: schemas.VisitBillschemas, status: str,drid:int,db: Session = Depends(get_db)):
    db_user = crud.post_visits_bill_table(db,status,drid)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)

@app.post("/postnewvisitors/", response_model=schemas.Visiterschemas)
def create_bill(user: schemas.Visiterschemas,db: Session = Depends(get_db)):
    db_user = crud.post_visitors(db,user)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)


@app.post("/posttestbypatients/", response_model=schemas.Testscheduling)
def posttests(user: schemas.Testscheduling, db: Session = Depends(get_db)):
    db_user = crud.post_test_schedling(db, user)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)

@app.post("/posttestsbillbypatients/{status}/{charges}", response_model=schemas.Testbill)
def create_bill(user: schemas.Testbill, status: str,charges:int,db: Session = Depends(get_db)):
    db_user = crud.post_testbill_table(db,status,charges)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)

@app.post("/postnerwunregistertestschedules/", response_model=schemas.Unregisteredscheduling)
def create_bill(user: schemas.Unregisteredscheduling,db: Session = Depends(get_db)):
    db_user = crud.post_visitorsfortest(db,user)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)


@app.post("/postunregisteredtestsbill/{status}/{charges}", response_model=schemas.UnregisteredTestbill)
def create_bill(user: schemas.UnregisteredTestbill, charges:int,status: str,db: Session = Depends(get_db)):
    db_user = crud.post_unregisteredtestbill_table(db,status,charges=charges)
    if db_user:
        raise HTTPException(status_code=400, detail="something went wrong ")
    return crud.create_patient(db=db, user=user)


@app.get("/fetchpatientdisease/{patientid}", response_model=List[schemas.PatientDiseaseBase])
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetchpatient_diseases(db,patientid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

@app.get("/fetchpatienttreatements/{patientid}", response_model=List[schemas.PatientTreatmentBase])
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetchpatienttreatments(db,patientid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

@app.get("/fetchpatientallergies/{patientid}", response_model=List[schemas.PatientAllergiesBase])
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetchpatientallergies(db,patientid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

@app.get("/fetchallreports/{patientid}", response_model=List[schemas.LabReportBase])
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetch_allreportsdata(db,patientid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

@app.get("/fetchspecificreportsdata/{reportid}", response_model=schemas.LabReportBase)
def get_time_by_date(reportid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetchspecificreportsdata(db,reportid=reportid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

# @app.post("/postpatients/", response_model=schemas.Patient2schema)
# def create_patient(user: schemas.Patient2schema, db: Session = Depends(get_db)):
#     db_user = crud.create_patient(db, user)
#     if db_user:
#         raise HTTPException(status_code=400, detail="something went wrong ")
#     return crud.create_patient(db=db, user=user)


@app.get("/gettimesbydates/{doctorid}/{date}", response_model=List[schemas.Visitschemas])
def get_time_by_date(doctorid:int, date:date,db: Session = Depends(get_db)):
    db_visit = crud.get_time_by_dates(db,doctorid=doctorid,date=date)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit


@app.get("/getdoctorsbyid/{doctorid}", response_model=List[schemas.Doctorschema])
def get_time_by_date(doctorid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetch_doctor2by_id(db,docid=doctorid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit


@app.get("/fetchprescriptioninfo/{patientid}", response_model=List[schemas.PatientPrescriptiononly])
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetch_prescriptioninfo(db,patientid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

# @app.get("/fetchdoctorsbyid/{Docid}", response_model=List[schemas.Doctor2schema])
# def fetchdoctorsbydid( docid :int ,db: Session = Depends(get_db)):
#     doc_data = crud.fetch_doctor2by_id(db,1)
#     if doc_data is None:
#         raise HTTPException(status_code=404, detail="User not found")
#     return doc_data

@app.get("/fetchalldoctorsbyspecialization/{specialty}", response_model=List[schemas.Doctorschema])
def fetchalldoctorsbyspecs( specialty:str,db: Session = Depends(get_db)):
    doc_data = crud.fetch_alldoctors_byspecs(db,specialty)
    if doc_data is None:
        raise HTTPException(status_code=404, detail="User not found")
    return doc_data


@app.get("/fetchloginInfo/{emailaddress}", response_model=schemas.Patientschema)
def fetchalldoctorsbyspecs( emailaddress:str,db: Session = Depends(get_db)):
    doc_data = crud.fetch_loginInfo(db,emailaddress)
    if doc_data is None:
        raise HTTPException(status_code=404, detail="User not found")
    return doc_data

@app.get("/fetchpatientsinformation/{patientid}", response_model=schemas.Patientschema)
def get_time_by_date(patientid:int, db: Session = Depends(get_db)):
    db_visit = crud.fetch_patientInformation(db,patinetid=patientid)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit

@app.put("/updatepatientsinformation/{patientid}", response_model=schemas.Patientschema)
def update_patient_information(patientid: int, updated_patient_info: schemas.Patientschema, db: Session = Depends(get_db)):
    # Update the patient information in the database
    db_patient = crud.update_patient_information(db, patientid=patientid, updated_patient_info=updated_patient_info)
    
    # Check if the patient information was found and updated
    if db_patient is None:
        raise HTTPException(status_code=404, detail="Patient information not found")
    
    # Return the updated patient information
    return db_patient

@app.get("/fetchupcomingappointments/{patientids}", response_model=List[schemas.Visitschemas])
def get_appointments(patientids:int, db: Session = Depends(get_db)):
    db_visit = crud.fetch_upcomingappointments(db,patientid=patientids)
    if db_visit is None:
        raise HTTPException(status_code=404, detail="Data not found")
    return db_visit


# @app.get("/getusersbyid/{user_id}", response_model=schemas.User)
# def read_user(user_id: int, db: Session = Depends(get_db)):
#     db_user = crud.get_user(db, user_id=user_id)
#     if db_user is None:
#         raise HTTPException(status_code=404, detail="User not found")
#     return db_user


# @app.post("/users/{user_id}/items/", response_model=schemas.Item)
# def create_item_for_user(
#     user_id: int, item: schemas.ItemCreate, db: Session = Depends(get_db)
# ):
#     return crud.create_user_item(db=db, item=item, user_id=user_id)


# @app.get("/items/", response_model=List[schemas.Item])
# def read_items(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
#     items = crud.get_items(db, skip=skip, limit=limit)
#     return items

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)