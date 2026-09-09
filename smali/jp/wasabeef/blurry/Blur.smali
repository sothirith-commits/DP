.class public final Ljp/wasabeef/blurry/Blur;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;
    .locals 38

    move-object/from16 v0, p2

    iget v1, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    iget v2, v0, Ljp/wasabeef/blurry/BlurFactor;->sampling:I

    div-int/2addr v1, v2

    iget v3, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    div-int/2addr v3, v2

    filled-new-array {v1, v3}, [I

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ge v6, v8, :cond_1

    aget v8, v4, v6

    if-nez v8, :cond_0

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v4, v2

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v4

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v5, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-virtual {v3, v10, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    :try_start_0
    iget v4, v0, Ljp/wasabeef/blurry/BlurFactor;->radius:I

    move-object/from16 v9, p0

    invoke-static {v9, v1, v4}, Ljp/wasabeef/blurry/Blur;->rs(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    move v2, v3

    goto/16 :goto_c

    :catch_0
    iget v4, v0, Ljp/wasabeef/blurry/BlurFactor;->radius:I

    if-ge v4, v3, :cond_2

    move/from16 v21, v2

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int v14, v7, v15

    new-array v13, v14, [I

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v1

    move-object v10, v13

    move v12, v7

    move-object/from16 v18, v13

    move/from16 v13, v16

    move v5, v14

    move/from16 v14, v17

    move/from16 p0, v15

    move v15, v7

    move/from16 v16, p0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v9, v7, -0x1

    move/from16 v15, p0

    add-int/lit8 v10, v15, -0x1

    add-int v11, v4, v4

    add-int/lit8 v12, v11, 0x1

    new-array v13, v5, [I

    new-array v14, v5, [I

    new-array v5, v5, [I

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    add-int/2addr v11, v8

    shr-int/2addr v11, v3

    mul-int/2addr v11, v11

    mul-int/lit16 v3, v11, 0x100

    new-array v8, v3, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    div-int v20, v0, v11

    aput v20, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x3

    const/4 v11, 0x1

    aput v0, v3, v11

    const/4 v0, 0x0

    aput v12, v3, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    add-int/lit8 v3, v4, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_2
    if-ge v11, v15, :cond_8

    move/from16 v21, v2

    neg-int v2, v4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_3
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v2, v4, :cond_5

    move-object/from16 v33, v1

    move/from16 p0, v15

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int v15, v15, v16

    aget v15, v18, v15

    add-int v19, v2, v4

    aget-object v34, v0, v19

    and-int v19, v15, v32

    shr-int/lit8 v19, v19, 0x10

    aput v19, v34, v1

    and-int v19, v15, v31

    shr-int/lit8 v19, v19, 0x8

    const/16 v31, 0x1

    aput v19, v34, v31

    and-int/lit16 v15, v15, 0xff

    const/16 v17, 0x2

    aput v15, v34, v17

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int v15, v3, v15

    aget v32, v34, v1

    mul-int v1, v32, v15

    add-int v22, v1, v22

    aget v1, v34, v31

    mul-int v31, v1, v15

    add-int v23, v31, v23

    aget v31, v34, v17

    mul-int v15, v15, v31

    add-int v24, v15, v24

    if-lez v2, :cond_4

    add-int v28, v28, v32

    add-int v29, v29, v1

    add-int v30, v30, v31

    goto :goto_4

    :cond_4
    add-int v25, v25, v32

    add-int v26, v26, v1

    add-int v27, v27, v31

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p0

    move-object/from16 v1, v33

    goto :goto_3

    :cond_5
    move-object/from16 v33, v1

    move/from16 p0, v15

    move v2, v4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v7, :cond_7

    aget v15, v8, v22

    aput v15, v13, v16

    aget v15, v8, v23

    aput v15, v14, v16

    aget v15, v8, v24

    aput v15, v5, v16

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v24, v24, v27

    sub-int v15, v2, v4

    add-int/2addr v15, v12

    rem-int/2addr v15, v12

    aget-object v15, v0, v15

    const/16 v19, 0x0

    aget v34, v15, v19

    sub-int v25, v25, v34

    const/16 v34, 0x1

    aget v35, v15, v34

    sub-int v26, v26, v35

    const/16 v17, 0x2

    aget v35, v15, v17

    sub-int v27, v27, v35

    if-nez v11, :cond_6

    add-int v35, v1, v4

    move-object/from16 v36, v8

    add-int/lit8 v8, v35, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v6, v1

    goto :goto_6

    :cond_6
    move-object/from16 v36, v8

    :goto_6
    aget v8, v6, v1

    add-int v8, v20, v8

    aget v8, v18, v8

    and-int v34, v8, v32

    shr-int/lit8 v34, v34, 0x10

    const/16 v19, 0x0

    aput v34, v15, v19

    and-int v35, v8, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v37, 0x1

    aput v35, v15, v37

    and-int/lit16 v8, v8, 0xff

    const/16 v17, 0x2

    aput v8, v15, v17

    add-int v28, v28, v34

    add-int v29, v29, v35

    add-int v30, v30, v8

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int v24, v24, v30

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v12

    rem-int v8, v2, v12

    aget-object v8, v0, v8

    const/4 v15, 0x0

    aget v34, v8, v15

    add-int v25, v25, v34

    const/4 v15, 0x1

    aget v35, v8, v15

    add-int v26, v26, v35

    const/4 v15, 0x2

    aget v8, v8, v15

    add-int v27, v27, v8

    sub-int v28, v28, v34

    sub-int v29, v29, v35

    sub-int v30, v30, v8

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, v36

    goto/16 :goto_5

    :cond_7
    move-object/from16 v36, v8

    add-int v20, v20, v7

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p0

    move/from16 v2, v21

    move-object/from16 v1, v33

    goto/16 :goto_2

    :cond_8
    move-object/from16 v33, v1

    move/from16 v21, v2

    move-object/from16 v36, v8

    move/from16 p0, v15

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v7, :cond_e

    neg-int v2, v4

    mul-int v8, v2, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_8
    if-gt v2, v4, :cond_b

    move-object/from16 v26, v6

    const/4 v6, 0x0

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v27, v19, v1

    add-int v19, v2, v4

    aget-object v28, v0, v19

    aget v19, v13, v27

    aput v19, v28, v6

    aget v6, v14, v27

    const/16 v29, 0x1

    aput v6, v28, v29

    aget v6, v5, v27

    const/16 v17, 0x2

    aput v6, v28, v17

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v3, v6

    aget v29, v13, v27

    mul-int v29, v29, v6

    add-int v9, v29, v9

    aget v29, v14, v27

    mul-int v29, v29, v6

    add-int v11, v29, v11

    aget v27, v5, v27

    mul-int v27, v27, v6

    add-int v15, v27, v15

    if-lez v2, :cond_9

    const/4 v6, 0x0

    aget v19, v28, v6

    add-int v23, v23, v19

    const/16 v27, 0x1

    aget v19, v28, v27

    add-int v24, v24, v19

    const/16 v17, 0x2

    aget v19, v28, v17

    add-int v25, v25, v19

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    const/16 v17, 0x2

    const/16 v27, 0x1

    aget v29, v28, v6

    add-int v16, v16, v29

    aget v6, v28, v27

    add-int v20, v20, v6

    aget v6, v28, v17

    add-int v22, v22, v6

    :goto_9
    if-ge v2, v10, :cond_a

    add-int/2addr v8, v7

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v26

    goto :goto_8

    :cond_b
    move-object/from16 v26, v6

    const/4 v2, 0x0

    move/from16 v6, p0

    move v8, v1

    move/from16 v27, v4

    :goto_a
    if-ge v2, v6, :cond_d

    const/high16 v28, -0x1000000

    aget v29, v18, v8

    and-int v28, v29, v28

    aget v29, v36, v9

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v11

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v15

    or-int v28, v28, v29

    aput v28, v18, v8

    sub-int v9, v9, v16

    sub-int v11, v11, v20

    sub-int v15, v15, v22

    sub-int v28, v27, v4

    add-int v28, v28, v12

    rem-int v28, v28, v12

    aget-object v28, v0, v28

    const/16 v19, 0x0

    aget v29, v28, v19

    sub-int v16, v16, v29

    const/16 v29, 0x1

    aget v30, v28, v29

    sub-int v20, v20, v30

    const/16 v17, 0x2

    aget v29, v28, v17

    sub-int v22, v22, v29

    move/from16 v29, v4

    if-nez v1, :cond_c

    add-int v4, v2, v3

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v7

    aput v4, v26, v2

    :cond_c
    aget v4, v26, v2

    add-int/2addr v4, v1

    aget v30, v13, v4

    const/16 v19, 0x0

    aput v30, v28, v19

    aget v31, v14, v4

    const/16 v32, 0x1

    aput v31, v28, v32

    aget v4, v5, v4

    const/16 v17, 0x2

    aput v4, v28, v17

    add-int v23, v23, v30

    add-int v24, v24, v31

    add-int v25, v25, v4

    add-int v9, v9, v23

    add-int v11, v11, v24

    add-int v15, v15, v25

    add-int/lit8 v27, v27, 0x1

    rem-int v27, v27, v12

    aget-object v4, v0, v27

    const/16 v19, 0x0

    aget v28, v4, v19

    add-int v16, v16, v28

    const/16 v30, 0x1

    aget v31, v4, v30

    add-int v20, v20, v31

    const/16 v17, 0x2

    aget v4, v4, v17

    add-int v22, v22, v4

    sub-int v23, v23, v28

    sub-int v24, v24, v31

    sub-int v25, v25, v4

    add-int/2addr v8, v7

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v29

    goto/16 :goto_a

    :cond_d
    move/from16 v29, v4

    const/16 v17, 0x2

    const/16 v19, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 p0, v6

    move-object/from16 v6, v26

    goto/16 :goto_7

    :cond_e
    move/from16 v6, p0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, v33

    move-object/from16 v10, v18

    move v12, v7

    move v0, v6

    move v15, v7

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v7, v33

    :goto_b
    move-object v1, v7

    move/from16 v0, v21

    const/4 v2, 0x1

    :goto_c
    if-ne v0, v2, :cond_f

    return-object v1

    :cond_f
    move-object/from16 v0, p2

    iget v3, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    iget v0, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static rs(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p0, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void

    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, p0

    move-object p0, v2

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_0

    :catchall_3
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/renderscript/BaseObj;->destroy()V

    :cond_3
    throw p1
.end method
