CREATE OR REPLACE FUNCTION public.Populate_T1(_Text text)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE

BEGIN

IF _Text IS NOT NULL
THEN
    INSERT INTO public.t1 (column1,column2)
    VALUES
       (_Text||'11',_Text||'12')
      ,(_Text||'21',_Text||'22')
      ,(_Text||'31',_Text||'32')
    ;
    RETURN 1;
END IF;

RETURN 0;
END;
$function$

