.class public final Lcom/umeng/commonsdk/internal/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/umeng/commonsdk/internal/c$2;->$r8$classId:I

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/c$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/umeng/commonsdk/internal/c$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$3;I)V
    .locals 0

    const/4 p3, 0x4

    iput p3, p0, Lcom/umeng/commonsdk/internal/c$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/c$2;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0xa

    iput p3, p0, Lcom/umeng/commonsdk/internal/c$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/c$2;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, Lcom/umeng/commonsdk/internal/c$2;->$r8$classId:I

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/c$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/umeng/commonsdk/internal/c$2;->a:Ljava/lang/Object;

    iget-object v6, v0, Lcom/umeng/commonsdk/internal/c$2;->b:Ljava/lang/Object;

    iget v7, v0, Lcom/umeng/commonsdk/internal/c$2;->$r8$classId:I

    packed-switch v7, :pswitch_data_0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sput-object v6, Lcom/luck/picture/lib/utils/ToastUtils;->mLastText:Ljava/lang/String;

    return-void

    :pswitch_1
    check-cast v6, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v6, v5}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onFail(Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onDone()V

    return-void

    :pswitch_2
    check-cast v6, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;

    invoke-virtual {v6, v5}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->onDone()V

    return-void

    :pswitch_3
    check-cast v6, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v6, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    check-cast v5, [I

    aget v1, v5, v3

    aget v2, v5, v4

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/magical/MagicalView;->startNormal(II)V

    return-void

    :pswitch_4
    check-cast v6, Lcom/luck/picture/lib/PictureSelectorFragment;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterDataComplete(Ljava/util/ArrayList;)V

    return-void

    :pswitch_5
    check-cast v5, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v0, v5, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    check-cast v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-interface {v0, v5, v6}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-void

    :pswitch_6
    check-cast v5, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v0, v5, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    return-void

    :pswitch_7
    check-cast v5, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    check-cast v6, Ljava/lang/Exception;

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void

    :pswitch_8
    check-cast v5, Lcom/koushikdutta/async/SelectorWrapper;

    invoke-static {v5}, Lcom/koushikdutta/async/AsyncServer;->shutdownKeys(Lcom/koushikdutta/async/SelectorWrapper;)V

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    check-cast v6, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :pswitch_9
    check-cast v6, Lcom/koushikdutta/async/AsyncNetworkSocket;

    check-cast v5, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/AsyncNetworkSocket;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void

    :pswitch_a
    check-cast v6, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v1, v6, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_b
    check-cast v6, Lcom/deepalhome/launcher/MainActivity;

    iget-object v0, v6, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;->INSTANCE:Lcom/deepalhome/launcher/MainActivity$scheduleStartupRootCheck$1$1;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_c
    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_2
    check-cast v6, Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :pswitch_d
    check-cast v6, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    iget-boolean v0, v6, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->preventNetworkOperations:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_4
    :try_start_0
    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v6, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_e
    :try_start_1
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-void

    :pswitch_f
    check-cast v5, Ljava/lang/Throwable;

    check-cast v6, Lcom/blankj/utilcode/util/ThreadUtils$Task;

    invoke-virtual {v6, v5}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onFail(Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    return-void

    :pswitch_10
    check-cast v6, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-boolean v1, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    if-nez v1, :cond_a

    iget-object v1, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v5

    if-eq v5, v2, :cond_a

    iget-object v2, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    if-nez v7, :cond_8

    :cond_7
    iget-object v1, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    add-int/2addr v3, v4

    goto :goto_1

    :cond_9
    iget-object v0, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_a
    :goto_2
    return-void

    :pswitch_11
    check-cast v6, Lcom/koushikdutta/async/AsyncServer$2;

    iget-object v0, v6, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget v7, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget v8, v6, Lcom/koushikdutta/async/AsyncServer$2;->val$port:I

    if-ne v7, v8, :cond_17

    iget-object v7, v6, Lcom/koushikdutta/async/AsyncServer$2;->val$handler:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iput-object v7, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    instance-of v8, v7, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v8, :cond_b

    check-cast v7, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_3

    :cond_b
    new-instance v8, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v8, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v7, v8

    :goto_3
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v9, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v4

    iget v11, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v12, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move v13, v12

    move v12, v11

    :goto_4
    if-ltz v10, :cond_16

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v15, v14, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v1, v14, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v15, v1

    iget v4, v14, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int v3, v4, v1

    :goto_5
    iget-object v2, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move/from16 p0, v4

    iget-object v4, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    if-le v12, v15, :cond_f

    const/16 v16, -0x1

    add-int/lit8 v12, v12, -0x1

    aget v2, v2, v12

    and-int/lit8 v17, v2, 0xc

    if-eqz v17, :cond_e

    move-object/from16 v17, v9

    shr-int/lit8 v9, v2, 0x4

    move/from16 v18, v13

    move/from16 v19, v15

    const/4 v13, 0x0

    invoke-static {v8, v9, v13}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v15

    if-eqz v15, :cond_c

    iget v13, v15, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v13, v11, v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual {v7, v12, v13}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d

    invoke-virtual {v4, v12, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)V

    const/4 v2, 0x0

    invoke-virtual {v7, v13, v15, v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    const/4 v15, 0x1

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v4, v11, v12

    sub-int/2addr v4, v15

    invoke-direct {v2, v12, v4, v15}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    const/4 v9, -0x1

    goto :goto_7

    :cond_e
    move-object/from16 v17, v9

    move/from16 v18, v13

    move/from16 v19, v15

    const/4 v15, 0x1

    invoke-virtual {v7, v12, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    const/4 v9, -0x1

    add-int/2addr v11, v9

    :goto_7
    move/from16 v4, p0

    move-object/from16 v9, v17

    move/from16 v13, v18

    move/from16 v15, v19

    goto :goto_5

    :cond_f
    move-object/from16 v17, v9

    move/from16 v18, v13

    :goto_8
    const/4 v9, -0x1

    if-le v13, v3, :cond_13

    add-int/2addr v13, v9

    iget-object v9, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v9, v9, v13

    and-int/lit8 v15, v9, 0xc

    if-eqz v15, :cond_11

    shr-int/lit8 v15, v9, 0x4

    move/from16 v18, v3

    move-object/from16 v19, v5

    const/4 v3, 0x1

    invoke-static {v8, v15, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v5

    if-nez v5, :cond_10

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v9, v11, v12

    const/4 v15, 0x0

    invoke-direct {v5, v13, v9, v15}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v5, v11, v5

    sub-int/2addr v5, v3

    invoke-virtual {v7, v5, v12}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v5, v9, 0x4

    if-eqz v5, :cond_12

    invoke-virtual {v4, v15, v13}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)V

    const/4 v5, 0x0

    invoke-virtual {v7, v12, v3, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_9

    :cond_11
    move/from16 v18, v3

    move-object/from16 v19, v5

    const/4 v3, 0x1

    invoke-virtual {v7, v12, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/2addr v11, v3

    :cond_12
    :goto_9
    move/from16 v3, v18

    move-object/from16 v5, v19

    goto :goto_8

    :cond_13
    move-object/from16 v19, v5

    iget v12, v14, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move/from16 v5, p0

    move v3, v12

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v1, :cond_15

    aget v9, v2, v3

    and-int/lit8 v9, v9, 0xf

    const/4 v14, 0x2

    if-ne v9, v14, :cond_14

    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)V

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-virtual {v7, v3, v9, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_b

    :cond_14
    const/4 v9, 0x1

    :goto_b
    add-int/2addr v3, v9

    add-int/2addr v5, v9

    add-int/2addr v13, v9

    goto :goto_a

    :cond_15
    const/4 v3, -0x1

    const/4 v9, 0x1

    add-int/2addr v10, v3

    move/from16 v13, p0

    move v2, v3

    move v4, v9

    move-object/from16 v9, v17

    move-object/from16 v5, v19

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    iget-object v1, v6, Lcom/koushikdutta/async/AsyncServer$2;->val$holder:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/lang/Runnable;)V

    :cond_17
    return-void

    :pswitch_12
    check-cast v5, Landroidx/core/provider/FontRequestWorker$2;

    invoke-virtual {v5, v6}, Landroidx/core/provider/FontRequestWorker$2;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    check-cast v5, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    check-cast v6, Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_14
    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v6, Lcom/umeng/commonsdk/internal/b;

    if-eqz v6, :cond_1a

    iget-object v1, v6, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    const-string v2, "MobclickRT"

    const-string v3, "--->>> OAID cloud control parameter update (not collecting -> collecting): collection complete."

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v0, "--->>> OAID returned null or empty string, no need for pseudo-cold start."

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_18
    :try_start_2
    iget-object v2, v1, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/h;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_umeng_sp_oaid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_19
    iget-object v0, v1, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    const v2, 0x8014

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_1a
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
