.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBitmap:Ljava/lang/Object;

.field public mFilters:Ljava/lang/Object;

.field public mMaxColors:I

.field public mResizeArea:I

.field public mResizeMaxDimension:I

.field public mTargets:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    const/16 v1, 0x10

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Ljava/lang/Object;

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public check(I)I
    .locals 4

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    :goto_0
    iget v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    goto :goto_2

    :cond_1
    iput v3, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    iput v2, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    iget v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    goto :goto_1

    :cond_3
    const v0, 0xfe0e

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    goto :goto_2

    :cond_4
    const v0, 0xfe0f

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    iget-object v1, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    if-eqz v1, :cond_8

    iget v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    const/4 v3, 0x3

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    goto :goto_2

    :cond_7
    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->reset()V

    :goto_2
    iput p1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    return v2
.end method

.method public generate()Landroidx/palette/graphics/Palette;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_15

    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    if-le v6, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v5, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v5

    div-double v3, v2, v4

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    const/4 v5, 0x0

    if-gtz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v4, v12, v13

    new-array v4, v4, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v4

    move v9, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/palette/graphics/Palette$1;

    :goto_2
    iget v7, v0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    invoke-direct {v3, v4, v7, v6}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$1;)V

    if-eq v2, v1, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, v3, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    new-instance v2, Landroidx/palette/graphics/Palette;

    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v1, v0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_3
    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    if-ge v3, v1, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/palette/graphics/Target;

    iget-object v7, v6, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v9, v7

    const/4 v10, 0x0

    move v11, v5

    move v12, v10

    :goto_4
    if-ge v11, v9, :cond_6

    aget v13, v7, v11

    cmpl-float v14, v13, v10

    if-lez v14, :cond_5

    add-float/2addr v12, v13

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    cmpl-float v9, v12, v10

    if-eqz v9, :cond_8

    array-length v9, v7

    move v11, v5

    :goto_5
    if-ge v11, v9, :cond_8

    aget v13, v7, v11

    cmpl-float v14, v13, v10

    if-lez v14, :cond_7

    div-float/2addr v13, v12

    aput v13, v7, v11

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    iget-object v7, v2, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/ArrayMap;

    iget-object v9, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v12, v5

    move v14, v10

    const/4 v13, 0x0

    :goto_6
    const/4 v15, 0x1

    if-ge v12, v11, :cond_12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v8}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v16

    aget v17, v16, v15

    iget-object v15, v6, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    aget v18, v15, v5

    cmpl-float v18, v17, v18

    if-ltz v18, :cond_10

    const/16 v18, 0x2

    aget v19, v15, v18

    cmpg-float v17, v17, v19

    if-gtz v17, :cond_10

    aget v16, v16, v18

    iget-object v10, v6, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    aget v19, v10, v5

    cmpl-float v19, v16, v19

    if-ltz v19, :cond_f

    aget v19, v10, v18

    cmpg-float v16, v16, v19

    if-gtz v16, :cond_f

    iget v5, v8, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v8}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    move-object/from16 v19, v0

    iget-object v0, v2, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-eqz v0, :cond_9

    iget v0, v0, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    move/from16 v20, v1

    goto :goto_7

    :cond_9
    move/from16 v20, v1

    const/4 v0, 0x1

    :goto_7
    iget-object v1, v6, Landroidx/palette/graphics/Target;->mWeights:[F

    const/16 v16, 0x0

    aget v21, v1, v16

    const/16 v17, 0x0

    cmpl-float v22, v21, v17

    const/high16 v23, 0x3f800000    # 1.0f

    if-lez v22, :cond_a

    const/16 v22, 0x1

    aget v24, v5, v22

    aget v15, v15, v22

    sub-float v24, v24, v15

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v15, v23, v15

    mul-float v15, v15, v21

    goto :goto_8

    :cond_a
    const/16 v22, 0x1

    const/4 v15, 0x0

    :goto_8
    aget v21, v1, v22

    const/16 v17, 0x0

    cmpl-float v24, v21, v17

    if-lez v24, :cond_b

    aget v5, v5, v18

    aget v10, v10, v22

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v23, v23, v5

    mul-float v5, v23, v21

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    aget v1, v1, v18

    const/16 v17, 0x0

    cmpl-float v10, v1, v17

    if-lez v10, :cond_c

    iget v10, v8, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float v10, v10

    int-to-float v0, v0

    div-float/2addr v10, v0

    mul-float v0, v10, v1

    goto :goto_a

    :cond_c
    move/from16 v0, v17

    :goto_a
    add-float/2addr v15, v5

    add-float/2addr v15, v0

    if-eqz v13, :cond_d

    cmpl-float v0, v15, v14

    if-lez v0, :cond_11

    :cond_d
    move-object v13, v8

    move v14, v15

    goto :goto_c

    :cond_e
    move-object/from16 v19, v0

    move/from16 v20, v1

    const/16 v16, 0x0

    :goto_b
    const/16 v17, 0x0

    goto :goto_c

    :cond_f
    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v16, v5

    goto :goto_b

    :cond_10
    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v16, v5

    move/from16 v17, v10

    :cond_11
    :goto_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    move/from16 v10, v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    goto/16 :goto_6

    :cond_12
    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v16, v5

    if-eqz v13, :cond_13

    iget-boolean v0, v6, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    if-eqz v0, :cond_13

    iget v0, v13, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_13
    invoke-virtual {v7, v6, v13}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    goto/16 :goto_3

    :cond_14
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    return-object v2

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    return-void
.end method

.method public shouldUseEmojiPresentationStyleForSingleCodepoint()Z
    .locals 4

    iget-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    iget v0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget p0, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const v0, 0xfe0f

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
