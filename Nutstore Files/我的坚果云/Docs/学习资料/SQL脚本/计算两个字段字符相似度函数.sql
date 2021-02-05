--DROP FUNCTION DBO.FN_Resemble

CREATE FUNCTION DBO.FN_Resemble
    (@Cloumna NVARCHAR(MAX),
     @Cloumnb NVARCHAR(MAX)
    )
RETURNS FLOAT
AS
BEGIN
    DECLARE @num FLOAT,@len int
    SET @Cloumna=ISNULL(@Cloumna,0)
    SET @Cloumnb=ISNULL(@Cloumnb,0)
    SET @len=1
    SET @num=0
    WHILE(LEN(@Cloumna)<>0 AND LEN(@CloumnB)<>0)
    BEGIN
        WHILE(@len<=LEN(@Cloumna))
        BEGIN
            DECLARE @a NVARCHAR(4)
            SET @a=''
            SET @a=SUBSTRING(@Cloumna,@len,1)
            IF(CHARINDEX(@a,@CloumnB)>0)
            BEGIN
            SET @num=@num+1
            END
        SET  @len=@len+1   
        END
    SET @num=@num*1.0/LEN(@Cloumna)
    BREAK
    END
    
    RETURN @num
END

SELECT DBO.FN_Resemble('QSCVFF','QSSCVG')