.class public final Lme/wcy/lrcview/LrcEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public secondText:Ljava/lang/String;

.field public staticLayout:Landroid/text/StaticLayout;

.field public text:Ljava/lang/String;

.field public time:J


# virtual methods
.method public final buildLayout(Landroid/text/TextPaint;II)Landroid/text/StaticLayout;
    .locals 19

    move/from16 v3, p2

    move/from16 v0, p3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lme/wcy/lrcview/LrcEntry;->getShowText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-gtz v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, "\n"

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_8

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const/16 v15, 0xa

    if-eqz v8, :cond_3

    array-length v7, v2

    sub-int/2addr v7, v1

    if-ge v6, v7, :cond_7

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_6

    int-to-float v12, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p1

    move-object v9, v7

    move v10, v13

    move v11, v14

    move/from16 v18, v12

    move/from16 v12, v17

    move v0, v13

    move/from16 v13, v18

    move v1, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v8

    if-gtz v8, :cond_4

    const/4 v8, 0x1

    :cond_4
    add-int v13, v0, v8

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v5, v7, v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ge v13, v1, :cond_5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    move v14, v1

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    array-length v0, v2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_7

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_5
    move-object v1, v0

    new-instance v8, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lme/wcy/lrcview/LrcEntry;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lme/wcy/lrcview/LrcEntry;->time:J

    iget-wide p0, p1, Lme/wcy/lrcview/LrcEntry;->time:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getShowText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method
