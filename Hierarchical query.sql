   
   SELECT last_name, employee_id, manager_id,
      SYS_CONNECT_BY_PATH(last_name, '/') "Path", LEVEL, rownum 
      --,CONNECT_BY_ROOT last_name "Manager"
      FROM employees
      --where level != 1 
      START WITH employee_id = 100
      CONNECT BY PRIOR employee_id = manager_id
      ORDER SIBLINGS BY last_name
      ;
