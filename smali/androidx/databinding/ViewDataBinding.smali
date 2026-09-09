.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"


# static fields
.field public static final ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

.field public static final USE_CHOREOGRAPHER:Z = true

.field public static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public mContainingBinding:Landroidx/databinding/ViewDataBinding;

.field public final mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

.field public mIsExecutingPendingBindings:Z

.field public mPendingRebind:Z

.field public final mRebindRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public final mRoot:Landroid/view/View;

.field public final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 1

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    new-instance p1, Landroidx/appcompat/widget/Toolbar$2;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/appcompat/widget/Toolbar$2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    new-array p1, p2, [Landroidx/databinding/WeakListener;

    iput-object p3, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    if-nez p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapBindings(Landroid/view/View;[Ljava/lang/Object;Lcom/koushikdutta/async/Util$8;Landroid/util/SparseIntArray;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_0

    const v5, 0x7f0b0152

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/databinding/ViewDataBinding;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x30

    const/4 v8, 0x1

    const-string v9, "layout"

    const/4 v10, -0x1

    if-eqz p4, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x5f

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-lez v11, :cond_c

    add-int/2addr v11, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v11, :cond_3

    goto :goto_6

    :cond_3
    move v13, v11

    :goto_2
    if-ge v13, v12, :cond_5

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v11, v12, :cond_6

    mul-int/lit8 v13, v13, 0xa

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int/2addr v14, v6

    add-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    aget-object v5, v1, v13

    if-nez v5, :cond_7

    aput-object v0, v1, v13

    :cond_7
    if-nez v2, :cond_b

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_c

    const-string v11, "binding_"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_9

    mul-int/lit8 v13, v13, 0xa

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int/2addr v14, v6

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    aget-object v5, v1, v13

    if-nez v5, :cond_a

    aput-object v0, v1, v13

    :cond_a
    if-nez v2, :cond_b

    :goto_5
    move v13, v10

    :cond_b
    move v5, v8

    goto :goto_7

    :cond_c
    :goto_6
    move v13, v10

    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    if-lez v5, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ltz v5, :cond_d

    aget-object v11, v1, v5

    if-nez v11, :cond_d

    aput-object v0, v1, v5

    :cond_d
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1d

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v11, v5, :cond_1d

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ltz v13, :cond_1b

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_1b

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v4, "_0"

    invoke-virtual {v15, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v4, 0x2f

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-lez v16, :cond_1b

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v10, v16, -0x2

    invoke-virtual {v15, v4, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v10, v2, Lcom/koushikdutta/async/Util$8;->val$sink:Ljava/lang/Object;

    check-cast v10, [[Ljava/lang/String;

    aget-object v10, v10, v13

    array-length v15, v10

    move v6, v12

    :goto_9
    if-ge v6, v15, :cond_f

    aget-object v7, v10, v6

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, -0x1

    :goto_a
    if-ltz v6, :cond_1a

    add-int/lit8 v12, v6, 0x1

    iget-object v4, v2, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v4, [[I

    aget-object v4, v4, v13

    aget v4, v4, v6

    iget-object v7, v2, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v7, [[I

    aget-object v7, v7, v13

    aget v6, v7, v6

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v17, v11, 0x1

    move/from16 p0, v5

    move/from16 v5, v17

    move-object/from16 v17, v9

    move v9, v11

    :goto_b
    if-ge v5, v8, :cond_17

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move/from16 p4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_c

    :cond_10
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_16

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    move-object/from16 v18, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v19, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v10, v12, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x30

    if-ne v10, v12, :cond_12

    goto :goto_f

    :cond_11
    const/16 v12, 0x30

    :cond_12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v15, :cond_13

    goto :goto_e

    :cond_13
    move v12, v15

    :goto_d
    if-ge v12, v10, :cond_15

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-nez v20, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_15
    move v9, v5

    goto :goto_e

    :cond_16
    move-object/from16 v18, v10

    move/from16 v19, v12

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p4

    move-object/from16 v10, v18

    move/from16 v12, v19

    goto :goto_b

    :cond_17
    move/from16 v19, v12

    :goto_f
    if-ne v9, v11, :cond_18

    invoke-static {v14, v6}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    aput-object v5, v1, v4

    :goto_10
    move/from16 v12, v19

    const/16 v4, 0x30

    const/4 v15, 0x1

    goto :goto_13

    :cond_18
    sub-int/2addr v9, v11

    add-int/lit8 v5, v9, 0x1

    new-array v7, v5, [Landroid/view/View;

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v5, :cond_19

    add-int v8, v11, v15

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    :cond_19
    sget-object v5, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    invoke-virtual {v5, v7, v6}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder([Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/2addr v11, v9

    goto :goto_10

    :cond_1a
    move/from16 p0, v5

    move-object/from16 v17, v9

    const/16 v4, 0x30

    goto :goto_12

    :cond_1b
    move/from16 p0, v5

    move v4, v6

    move-object/from16 v17, v9

    :goto_12
    const/4 v15, 0x0

    :goto_13
    const/4 v5, 0x0

    if-nez v15, :cond_1c

    invoke-static {v14, v1, v2, v3, v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Lcom/koushikdutta/async/Util$8;Landroid/util/SparseIntArray;Z)V

    :cond_1c
    const/4 v6, 0x1

    add-int/2addr v11, v6

    move/from16 v5, p0

    move v8, v6

    move-object/from16 v9, v17

    const/4 v10, -0x1

    move v6, v4

    goto/16 :goto_8

    :cond_1d
    return-void
.end method

.method public static mapBindings(Landroid/view/View;ILcom/koushikdutta/async/Util$8;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Lcom/koushikdutta/async/Util$8;Landroid/util/SparseIntArray;Z)V

    return-object p1
.end method


# virtual methods
.method public abstract executeBindings()V
.end method

.method public final executeBindingsInternal()V
    .locals 1

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    return-void
.end method

.method public final executePendingBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_0
    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method public final requestRebind()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroidx/databinding/ViewDataBinding$8;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setRootTag(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0152

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
