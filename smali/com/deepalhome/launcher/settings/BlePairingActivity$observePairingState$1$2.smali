.class public final Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BlePairingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1$2;->this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x2

    move-object/from16 v6, p1

    check-cast v6, Lcom/deepalhome/launcher/settings/BlePairingPresentation;

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity$observePairingState$1$2;->this$0:Lcom/deepalhome/launcher/settings/BlePairingActivity;

    iget-boolean v8, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->pairingCompleted:Z

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/deepalhome/launcher/settings/BlePairingPresentation;->stage:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    sget-object v9, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SUCCESS:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    if-eq v8, v9, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_3

    :cond_0
    iget-object v8, v6, Lcom/deepalhome/launcher/settings/BlePairingPresentation;->stage:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    const-string v11, ""

    const-string v12, "scaleY"

    const-string v13, "scaleX"

    const-string v14, "getString(...)"

    const-string v15, "tvStatus"

    const-string v16, "binding"

    if-eqz v8, :cond_2b

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v4, v6, Lcom/deepalhome/launcher/settings/BlePairingPresentation;->deviceName:Ljava/lang/String;

    if-eq v8, v2, :cond_25

    if-eq v8, v5, :cond_21

    if-eq v8, v3, :cond_1d

    const/4 v3, 0x4

    if-eq v8, v3, :cond_e

    const/4 v2, 0x5

    if-eq v8, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopRippleAnimation()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopBreathAnimation()V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x7f13012a

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/deepalhome/launcher/settings/BlePairingPresentation;->failureReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnRetry:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    const v3, 0x7f080139

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    :cond_2
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_3
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_9
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_e
    iput-boolean v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->pairingCompleted:Z

    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->pairingManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/tuotuotie/BlePairingManager;

    invoke-virtual {v3, v2}, Lcom/deepalhome/tuotuotie/BlePairingManager;->stopPairing(Z)V

    :goto_0
    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/mitemp/MiTemp;->stopPairing(Z)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopRippleAnimation()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopBreathAnimation()V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_1c

    const v3, 0x7f130132

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x7f130135

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_1a

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnRetry:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_17

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_11

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-static {v0, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_10

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-static {v0, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    :cond_10
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_11
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_12
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_13
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_14
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_15
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_16
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_17
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_18
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_19
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1d
    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_20

    const v1, 0x7f130133

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7f13012c

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1e
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_1f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_20
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_21
    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_24

    const v1, 0x7f130130

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7f130128

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_22
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_23
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_24
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_25
    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_2a

    const v6, 0x7f130131

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_29

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x7f130129

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v6}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopRippleAnimation()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopBreathAnimation()V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_27

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-static {v1, v13, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v10, 0x5dc

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v6, :cond_26

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-static {v6, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->breathAnimatorSet:Landroid/animation/AnimatorSet;

    goto/16 :goto_2

    :cond_26
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_27
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_28
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_29
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_2a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_2b
    iget-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v4, :cond_35

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->animationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v4, :cond_34

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivBluetooth:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v4, :cond_33

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v4, :cond_32

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_31

    const v4, 0x7f130134

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStep:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_30

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x7f13012e

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->crossfadeText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_2f

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopRippleAnimation()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/BlePairingActivity;->stopBreathAnimation()V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;

    if-eqz v1, :cond_2e

    iget-object v4, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple2:Landroid/view/View;

    iget-object v6, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple3:Landroid/view/View;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityBlePairingBinding;->ripple1:Landroid/view/View;

    filled-new-array {v1, v4, v6}, [Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v10, v0, 0x1

    if-ltz v0, :cond_2c

    check-cast v8, Landroid/view/View;

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleY(F)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    new-array v14, v5, [F

    fill-array-data v14, :array_5

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move/from16 p2, v10

    const-wide/16 v9, 0x7d0

    invoke-virtual {v14, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    move-object v15, v12

    int-to-long v11, v0

    mul-long/2addr v11, v9

    int-to-long v9, v3

    div-long/2addr v11, v9

    invoke-virtual {v14, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v5, [F

    fill-array-data v0, :array_6

    move-object v9, v15

    invoke-static {v8, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v15, v5, [F

    fill-array-data v15, :array_7

    const-string v5, "alpha"

    invoke-static {v8, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v5, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v14, v0, v5}, [Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v0, p2

    move-object v12, v9

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_2c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_2d
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, v7, Lcom/deepalhome/launcher/settings/BlePairingActivity;->rippleAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v0

    :cond_2e
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_32
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_33
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_35
    move-object v0, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        -0x3ee00000    # -10.0f
        0x41200000    # 10.0f
        -0x3f000000    # -8.0f
        0x41000000    # 8.0f
        -0x3f800000    # -4.0f
        0x40800000    # 4.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data

    :array_6
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data

    :array_7
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method
