# IBM_Forum

TI Process can be added to the data folder of any TM1 model.

TIs:
 - SYS_Create_Chore_Info_Master
      - This is the process that should be executed
      - Creates/Clears a cube called SYS_Chore_Info
      - Loops the }Chores dimension and then checks the existence of .cho file in the data directory and if found calls SYS_Create_Chore_Info_Child
 - SYS_Create_Chore_Info
      - Called from SYS_Create_Chore_Master
      - Uses .cho file as data source
      - utilises Chore Property codes to find core bits of data about each chore and loads them to the SYS_Chore_Info cube
            - Active (a 1 indicates the chore is active)
            - Frequency (calculated and displayed in total seconds between runs)
            - Process Count (the number of TIs inside the chore - note this will not count where 1 TI calls another)
            - Multiple Commit Mode (a 1 indicates the chore is in multiple commit mode)
            - Start Date (Start date of the chore displayed in text in YYYYMMDD format)
            - Start Time (Start time of the chore displayed in HHMMSS format)
            

Put together as a quick thought experiment to distract and give a momentary break from other tasks.
Has not been used in any Production environments or properly tested etc.

Please feel free to use, expand and improve.
