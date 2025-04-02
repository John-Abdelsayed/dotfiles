import schedule
import time

def morning_task():
    print("Good morning! Running your daily automation task...")

schedule.every().day.at("08:00").do(morning_task)

while True:
    schedule.run_pending()
    time.sleep(60)
