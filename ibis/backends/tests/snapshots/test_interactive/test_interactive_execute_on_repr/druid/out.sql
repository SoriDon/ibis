SELECT
  SUM("t1"."bigint_col") AS "Sum(bigint_col)"
FROM (
  SELECT
    "t0"."__time",
    "t0"."id",
    1 - (
      MOD("t0"."id", 2)
    ) AS "bool_col",
    "t0"."tinyint_col",
    "t0"."smallint_col",
    "t0"."int_col",
    "t0"."bigint_col",
    "t0"."float_col",
    "t0"."double_col",
    "t0"."date_string_col",
    "t0"."string_col",
    "t0"."timestamp_col",
    "t0"."year",
    "t0"."month"
  FROM "functional_alltypes" AS "t0"
) AS "t1"