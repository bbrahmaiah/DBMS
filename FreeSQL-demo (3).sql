DECLARE
    a INT;
    b INT;
    c INT;
BEGIN
    a := 16;
    b := 30;
    c := 27;

    IF a>b AND a>c THEN
        DBMS_OUTPUT.PUT_LINE(a);
    ELSIF b>a AND b>c THEN
        DBMS_OUTPUT.PUT_LINE(b);
    ELSE
        DBMS_OUTPUT.PUT_LINE(c);
    END IF;
END;