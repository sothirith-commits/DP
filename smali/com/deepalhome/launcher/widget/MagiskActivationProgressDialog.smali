.class public final Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentIndex:I

.field public currentStepTv:Landroid/widget/TextView;

.field public dialog:Landroid/app/AlertDialog;

.field public haloAnimator:Landroid/animation/AnimatorSet;

.field public final hintColor:I

.field public iconAnimator:Landroid/animation/AnimatorSet;

.field public final isNight:Z

.field public nextStepTv:Landroid/widget/TextView;

.field public final orderedSteps:Ljava/util/List;

.field public previousStepTv:Landroid/widget/TextView;

.field public final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->context:Landroid/content/Context;

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->isNight:Z

    if-eqz v0, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->textColor:I

    if-eqz v0, :cond_1

    const v0, 0x7f06038a

    goto :goto_1

    :cond_1
    const v0, 0x7f060389

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->hintColor:I

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckRoot:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    sget-object v1, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->PrepareWirelessDebug:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    sget-object v2, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckSu:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    sget-object v3, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->FetchScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    sget-object v4, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->RunScript:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    sget-object v5, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->Completed:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->orderedSteps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->$r8$clinit:I

    sget-object v6, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v6, 0x7f0e0052

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v0, v7}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    const-string v6, "inflate(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0e0081

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f1302d0

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget v9, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->textColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->isNight:Z

    if-eqz v8, :cond_1

    const v8, 0x7f060026

    goto :goto_0

    :cond_1
    const v8, 0x7f060023

    :goto_0
    invoke-virtual {v3, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v9, v8}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const v8, 0x7f0b045f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "findViewById(...)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->previousStepTv:Landroid/widget/TextView;

    const v8, 0x7f0b0142

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentStepTv:Landroid/widget/TextView;

    const v8, 0x7f0b03fd

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->nextStepTv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->previousStepTv:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget v9, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->hintColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->currentStepTv:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    const v10, 0x7f060019

    invoke-virtual {v3, v10}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->nextStepTv:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f0b02e6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v5, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v5, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;

    const/4 v8, 0x4

    invoke-direct {v5, v8, p0}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f06038f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v5

    div-int/2addr v5, v2

    mul-int/2addr v5, v1

    const/4 v8, -0x2

    invoke-virtual {v3, v5, v8}, Landroid/view/Window;->setLayout(II)V

    sget-object v5, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    :cond_2
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0b02e3

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v7, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x708

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v2, [F

    fill-array-data v10, :array_1

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0x4b0

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v2, [F

    fill-array-data v14, :array_2

    invoke-static {v3, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v11, v2, [Landroid/animation/Animator;

    aput-object v7, v11, v0

    aput-object v10, v11, v4

    aput-object v3, v11, v1

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput-object v6, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->iconAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v10, 0x578

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v7, v2, [F

    fill-array-data v7, :array_4

    invoke-static {v5, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v9, v2, [F

    fill-array-data v9, :array_5

    invoke-static {v5, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v0

    aput-object v7, v2, v4

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->haloAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckRoot:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string p0, "nextStepTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_4
    const-string p0, "currentStepTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_5
    const-string p0, "previousStepTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f8a3d71    # 1.08f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_2
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f8a3d71    # 1.08f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_3
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
        0x3ee66666    # 0.45f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3f8a3d71    # 1.08f
        0x3f666666    # 0.9f
    .end array-data

    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3f8a3d71    # 1.08f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final stepText(Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const-string v0, "getString(...)"

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->context:Landroid/content/Context;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_1
    const p1, 0x7f1302cf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const p1, 0x7f1302cd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    const p1, 0x7f1302ca

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    const p1, 0x7f1302ce

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    const p1, 0x7f1302c9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    const p1, 0x7f1302cb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    const p1, 0x7f1302cc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    const-string p0, ""

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
