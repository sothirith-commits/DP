.class public final Lcom/koushikdutta/async/AsyncServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$handler:Ljava/lang/Object;

.field public final synthetic val$holder:Ljava/lang/Object;

.field public final synthetic val$host:Ljava/lang/Object;

.field public final synthetic val$port:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/lang/Object;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Ljava/lang/Object;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Ljava/lang/Object;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/lang/Object;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Ljava/lang/Object;

    iput p4, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncServer$ObjectHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/lang/Object;

    const/16 p1, 0x22b8

    iput p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Ljava/lang/Object;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Ljava/lang/Object;

    iget-object v2, v0, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Ljava/lang/Object;

    iget-object v3, v0, Lcom/koushikdutta/async/AsyncServer$2;->val$host:Ljava/lang/Object;

    iget v4, v0, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    iget-object v6, v0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    iget v10, v0, Lcom/koushikdutta/async/AsyncServer$2;->$r8$classId:I

    packed-switch v10, :pswitch_data_0

    new-instance v1, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;-><init>(Lcom/koushikdutta/async/AsyncServer$2;)V

    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->getOldListSize()I

    move-result v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->getNewListSize()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v7, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v2, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v7, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v3, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    add-int/2addr v2, v9

    div-int/2addr v2, v8

    mul-int/2addr v2, v8

    add-int/2addr v2, v9

    new-array v3, v2, [I

    div-int/lit8 v11, v2, 0x2

    new-array v2, v2, [I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v14

    if-lt v14, v9, :cond_16

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v14

    if-ge v14, v9, :cond_0

    goto/16 :goto_14

    :cond_0
    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v14

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v15

    add-int/2addr v15, v14

    add-int/2addr v15, v9

    div-int/2addr v15, v8

    iget v14, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int v16, v9, v11

    aput v14, v3, v16

    iget v14, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    aput v14, v2, v16

    move v14, v7

    :goto_1
    if-ge v14, v15, :cond_16

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v16

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    rem-int/lit8 v5, v16, 0x2

    if-ne v5, v9, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    move v5, v7

    :goto_2
    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v16

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v18

    sub-int v16, v16, v18

    neg-int v8, v14

    move v7, v8

    :goto_3
    if-gt v7, v14, :cond_a

    if-eq v7, v8, :cond_4

    if-eq v7, v14, :cond_3

    add-int/lit8 v19, v7, 0x1

    add-int v19, v19, v11

    move/from16 v20, v15

    aget v15, v3, v19

    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, v11

    aget v9, v3, v19

    if-le v15, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_5

    :cond_2
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    move/from16 v20, v15

    :goto_4
    add-int/lit8 v15, v7, -0x1

    add-int/2addr v15, v11

    aget v15, v3, v15

    add-int/lit8 v19, v15, 0x1

    move/from16 v9, v19

    goto :goto_6

    :cond_4
    move/from16 v20, v15

    :goto_5
    add-int/lit8 v15, v7, 0x1

    add-int/2addr v15, v11

    aget v15, v3, v15

    move v9, v15

    :goto_6
    iget v0, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v19, v6

    iget v6, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v6, v9, v6

    add-int/2addr v6, v0

    sub-int/2addr v6, v7

    if-eqz v14, :cond_5

    if-eq v9, v15, :cond_6

    :cond_5
    const/16 v21, 0x1

    goto :goto_7

    :cond_6
    const/16 v21, 0x1

    add-int/lit8 v0, v6, -0x1

    goto :goto_8

    :goto_7
    move v0, v6

    :goto_8
    move-object/from16 v22, v10

    :goto_9
    iget v10, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v9, v10, :cond_7

    iget v10, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v6, v10, :cond_7

    invoke-virtual {v1, v9, v6}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_7
    add-int v10, v7, v11

    aput v9, v3, v10

    if-eqz v5, :cond_9

    sub-int v10, v16, v7

    move/from16 v23, v5

    add-int/lit8 v5, v8, 0x1

    if-lt v10, v5, :cond_8

    add-int/lit8 v5, v14, -0x1

    if-gt v10, v5, :cond_8

    add-int/2addr v10, v11

    aget v5, v2, v10

    if-gt v5, v9, :cond_8

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v15, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v0, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    move-object v0, v5

    const/4 v5, 0x2

    goto :goto_c

    :cond_8
    :goto_a
    const/4 v5, 0x2

    goto :goto_b

    :cond_9
    move/from16 v23, v5

    goto :goto_a

    :goto_b
    add-int/2addr v7, v5

    move-object/from16 v0, p0

    move-object/from16 v6, v19

    move/from16 v15, v20

    move-object/from16 v10, v22

    move/from16 v5, v23

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v19, v6

    move-object/from16 v22, v10

    move/from16 v20, v15

    const/4 v5, 0x2

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_b

    move-object/from16 v23, v12

    move-object/from16 v16, v13

    goto/16 :goto_15

    :cond_b
    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v6

    sub-int/2addr v0, v6

    rem-int/2addr v0, v5

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v5

    invoke-virtual {v13}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v6

    sub-int/2addr v5, v6

    move v6, v8

    :goto_e
    if-gt v6, v14, :cond_14

    const/4 v7, 0x1

    if-eq v6, v8, :cond_e

    if-eq v6, v14, :cond_d

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v9, v11

    aget v9, v2, v9

    add-int/lit8 v10, v6, -0x1

    add-int/2addr v10, v11

    aget v10, v2, v10

    if-ge v9, v10, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit8 v9, v6, -0x1

    add-int/2addr v9, v11

    aget v9, v2, v9

    add-int/lit8 v10, v9, -0x1

    goto :goto_10

    :cond_e
    :goto_f
    add-int/lit8 v9, v6, 0x1

    add-int/2addr v9, v11

    aget v9, v2, v9

    move v10, v9

    :goto_10
    iget v7, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v15, v10

    sub-int/2addr v15, v6

    sub-int/2addr v7, v15

    if-eqz v14, :cond_f

    if-eq v10, v9, :cond_10

    :cond_f
    const/4 v15, 0x1

    goto :goto_11

    :cond_10
    const/4 v15, 0x1

    add-int/lit8 v16, v7, 0x1

    move/from16 v24, v16

    goto :goto_12

    :goto_11
    move/from16 v24, v7

    :goto_12
    iget v15, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v10, v15, :cond_11

    iget v15, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v7, v15, :cond_11

    move-object/from16 v16, v13

    const/4 v15, 0x1

    add-int/lit8 v13, v10, -0x1

    move-object/from16 v23, v12

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v1, v13, v12}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_12

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v13, v16

    move-object/from16 v12, v23

    goto :goto_12

    :cond_11
    move-object/from16 v23, v12

    move-object/from16 v16, v13

    :cond_12
    add-int v12, v6, v11

    aput v10, v2, v12

    if-eqz v0, :cond_13

    sub-int v12, v5, v6

    if-lt v12, v8, :cond_13

    if-gt v12, v14, :cond_13

    add-int/2addr v12, v11

    aget v12, v3, v12

    if-lt v12, v10, :cond_13

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v10, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    move/from16 v7, v24

    iput v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_13

    :cond_13
    const/4 v7, 0x1

    const/4 v9, 0x2

    add-int/2addr v6, v9

    move-object/from16 v13, v16

    move-object/from16 v12, v23

    goto/16 :goto_e

    :cond_14
    move-object/from16 v23, v12

    move-object/from16 v16, v13

    const/4 v7, 0x1

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_15

    goto :goto_15

    :cond_15
    add-int/2addr v14, v7

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move v9, v7

    move-object/from16 v13, v16

    move-object/from16 v6, v19

    move/from16 v15, v20

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_16
    :goto_14
    move-object/from16 v19, v6

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move-object/from16 v16, v13

    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    if-lez v5, :cond_1a

    iget v5, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v5, v6

    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v8, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v7, v8

    if-eq v5, v7, :cond_19

    iget-boolean v9, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v9, :cond_17

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    invoke-direct {v5, v8, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_16

    :cond_17
    if-le v5, v7, :cond_18

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v9

    invoke-direct {v5, v8, v6, v9}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_16

    :cond_18
    const/4 v7, 0x1

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/2addr v8, v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    invoke-direct {v5, v8, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_16

    :cond_19
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v5, v8, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    :goto_16
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    move-object/from16 v13, v16

    move-object/from16 v6, v23

    goto :goto_17

    :cond_1b
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v6, v23

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v13, v16

    :goto_17
    iget v7, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v7, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v7, v22

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v5, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v5, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v5, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v5, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v5, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v0, v13, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1c
    move-object/from16 v13, v16

    move-object/from16 v7, v22

    move-object/from16 v6, v23

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object v12, v6

    move-object v10, v7

    move-object/from16 v6, v19

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v19, v6

    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {v0, v1, v4, v3, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$1$1;Ljava/util/ArrayList;[I[I)V

    move-object/from16 v6, v19

    check-cast v6, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v6, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    new-instance v2, Lcom/umeng/commonsdk/internal/c$2;

    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v0, v3, v5}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    move-object/from16 v19, v6

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v4, :cond_1e

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v6, v19

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v7, v5

    goto :goto_19

    :cond_1e
    return-void

    :pswitch_1
    move-object/from16 v19, v6

    check-cast v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v6, Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    invoke-direct {v6, v5}, Lcom/koushikdutta/async/ChannelWrapper;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast v3, Ljava/net/InetAddress;

    if-nez v3, :cond_1f

    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_1a

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    move-object v5, v6

    goto :goto_1c

    :cond_1f
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_1a
    invoke-virtual {v5}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    move-object/from16 v0, v19

    check-cast v0, Lcom/koushikdutta/async/AsyncServer;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/SelectorWrapper;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v5, v0, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/AsyncServer$ObjectHolder;

    new-instance v3, Lcom/koushikdutta/async/AsyncServer$2$1;

    invoke-direct {v3, v6, v0}, Lcom/koushikdutta/async/AsyncServer$2$1;-><init>(Lcom/koushikdutta/async/ServerSocketChannelWrapper;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1d

    :goto_1b
    move-object/from16 v17, v5

    const/4 v5, 0x0

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1b

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_1c
    const-string v1, "NIO"

    const-string v3, "wtf"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v5, v1, v3

    const/4 v3, 0x1

    aput-object v17, v1, v3

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onCompleted(Ljava/lang/Exception;)V

    :goto_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
