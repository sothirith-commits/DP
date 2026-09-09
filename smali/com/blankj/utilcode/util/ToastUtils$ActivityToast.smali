.class public final Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "SourceFile"


# static fields
.field public static sShowingIndex:I


# instance fields
.field public final synthetic $r8$classId:I

.field public iToast:Ljava/lang/Object;

.field public mActivityLifecycleCallbacks:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;I)V
    .locals 1

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    const/16 p0, 0x7f6

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Z)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    iget v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    sget-object v2, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v4, v0, v6}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;I)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    iput-object v3, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TAG_TOAST"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    check-cast v0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    iput-object v3, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    :cond_7
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final show(I)V
    .locals 6

    iget v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "ToastWithoutNotification"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_1
    const/16 v2, 0x70

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_2
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :try_start_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    if-nez p1, :cond_4

    const-wide/16 p0, 0x7d0

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0xdac

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    iget-boolean v1, v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_6

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->show(I)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Z)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    iput-object v3, v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    const/16 v3, 0x63

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->getToastViewSnapshot(I)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, v1, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v3, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    iput-object v3, v1, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->show(I)V

    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    move v1, v2

    goto :goto_2

    :cond_8
    sget v4, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_c

    sget v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;

    invoke-direct {v1, p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V

    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    if-eqz v3, :cond_a

    new-instance v4, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, v1, v5}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;I)V

    invoke-static {v4}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    if-nez p1, :cond_b

    const-wide/16 p0, 0x7d0

    goto :goto_3

    :cond_b
    const-wide/16 p0, 0xdac

    :goto_3
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    sget p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    add-int/2addr p0, v2

    sput p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->show(I)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Ljava/lang/Object;

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public showWithActivityView(Landroid/app/Activity;IZ)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p2}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->getToastViewSnapshot(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
