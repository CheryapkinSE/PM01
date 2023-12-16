
BEGIN;


CREATE TABLE IF NOT EXISTS public."Автомобиль"
(

    CONSTRAINT "Автомобиль_pkey" PRIMARY KEY ("id_Автомобиля")
);

CREATE TABLE IF NOT EXISTS public."Занятие"
(

    CONSTRAINT "Занятие_pkey" PRIMARY KEY ("id_Занятия")
);

CREATE TABLE IF NOT EXISTS public."Инструктор"
(

    CONSTRAINT "Инструктор_pkey" PRIMARY KEY ("id_Инструктора")
);

CREATE TABLE IF NOT EXISTS public."Курс_обучения"
(

    CONSTRAINT "Курс_обучения_pkey" PRIMARY KEY ("id_Курса")
);

CREATE TABLE IF NOT EXISTS public."Ученик"
(

    CONSTRAINT "Ученик_pkey" PRIMARY KEY ("id_Ученика")
);

ALTER TABLE IF EXISTS public."Автомобиль"
    ADD CONSTRAINT "Автомобиль_id_Инструктора_fkey" FOREIGN KEY ("id_Инструктора")
    REFERENCES public."Инструктор" ("id_Инструктора") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Занятие"
    ADD CONSTRAINT "Занятие_id_Инструктора_fkey" FOREIGN KEY ("id_Инструктора")
    REFERENCES public."Инструктор" ("id_Инструктора") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Занятие"
    ADD CONSTRAINT "Занятие_id_Курса_fkey" FOREIGN KEY ("id_Курса")
    REFERENCES public."Курс_обучения" ("id_Курса") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Занятие"
    ADD CONSTRAINT "Занятие_id_Ученика_fkey" FOREIGN KEY ("id_Ученика")
    REFERENCES public."Ученик" ("id_Ученика") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;