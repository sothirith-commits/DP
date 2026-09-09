.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actionItemBg:I

.field public final actions:Ljava/util/ArrayList;

.field public actionsAdapter:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

.field public final bgColor:I

.field public final cancelBtnBg:I

.field public conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

.field public final conditions:Ljava/util/ArrayList;

.field public conditionsAdapter:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

.field public conflictHintTv:Landroid/widget/TextView;

.field public final context:Landroid/content/Context;

.field public final editTextBg:I

.field public final existingTask:Lcom/deepalhome/launcher/task/model/ScheduledTask;

.field public final hintColor:I

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final listItemAddDurationMs:J

.field public final listItemAnimOffsetPx:F

.field public final listItemInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public final listItemRemoveDurationMs:J

.field public final onSaved:Lkotlin/jvm/functions/Function0;

.field public selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

.field public final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/task/model/ScheduledTask;Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$showTaskEditor$1;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->existingTask:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->onSaved:Lkotlin/jvm/functions/Function0;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getTrigger()Lcom/deepalhome/launcher/task/model/TaskTrigger;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    sget-object p3, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    :cond_1
    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getConditionLogic()Lcom/deepalhome/launcher/task/model/ConditionLogic;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    sget-object p2, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    :cond_3
    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    sget-object p2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p2

    if-eqz p2, :cond_4

    const p3, 0x7f06038c

    goto :goto_0

    :cond_4
    const p3, 0x7f06038b

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    if-eqz p2, :cond_5

    const p3, 0x7f06038a

    goto :goto_1

    :cond_5
    const p3, 0x7f060389

    :goto_1
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    if-eqz p2, :cond_6

    const p3, 0x7f060026

    goto :goto_2

    :cond_6
    const p3, 0x7f060023

    :goto_2
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->bgColor:I

    if-eqz p2, :cond_7

    const p3, 0x7f0800aa

    goto :goto_3

    :cond_7
    const p3, 0x7f0800a9

    :goto_3
    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->cancelBtnBg:I

    if-eqz p2, :cond_8

    const p3, 0x7f0800ba

    goto :goto_4

    :cond_8
    const p3, 0x7f0800b9

    :goto_4
    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->editTextBg:I

    if-eqz p2, :cond_9

    const p2, 0x7f080079

    goto :goto_5

    :cond_9
    const p2, 0x7f080078

    :goto_5
    iput p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actionItemBg:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700b7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemAnimOffsetPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0c0012

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemAddDurationMs:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0011

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemRemoveDurationMs:J

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    const-string v2, "WallPaperCenter"

    const-string v3, "WidgetWindow"

    const-string v0, "com.deepalhome.launcher"

    const-string v1, "Settings"

    const-string v4, "CarInfo"

    const-string v5, "ThemeManager"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public static final access$animateListItemIn(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemAnimOffsetPx:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemAddDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final access$animateListItemOut(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemAnimOffsetPx:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemRemoveDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->listItemInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1, p2}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final access$showTriggerPicker$restoreTriggerGrid(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;[ILandroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p9, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p9, 0x0

    iput-object p9, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    aget p0, p4, p0

    const/4 p1, 0x1

    aget p1, p4, p1

    const/4 p2, 0x2

    aget p9, p4, p2

    const/4 v0, 0x3

    aget p4, p4, v0

    invoke-virtual {p3, p0, p1, p9, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const p1, 0x7f13046e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/4 p1, 0x4

    invoke-direct {p0, p8, p1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {p7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    div-int/2addr p1, p2

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method public static getTriggerIcon(Lcom/deepalhome/launcher/task/model/TaskTrigger;)I
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f08025e

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$DesktopLaunched;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080167

    if-eqz v0, :cond_1

    :goto_0
    move p0, v1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$WifiConnected;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f080171

    goto/16 :goto_2

    :cond_2
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    if-eqz v0, :cond_3

    const p0, 0x7f080168

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f08016d

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOff;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x7f08016e

    goto/16 :goto_2

    :cond_5
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;->getButtonType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "instrument_switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const p0, 0x7f0800d4

    goto :goto_2

    :sswitch_1
    const-string v0, "heart_key_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const p0, 0x7f0800d7

    goto :goto_2

    :sswitch_2
    const-string v0, "heart_key_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const p0, 0x7f0800d6

    goto :goto_2

    :sswitch_3
    const-string v0, "voice_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_1
    const p0, 0x7f08016f

    goto :goto_2

    :cond_9
    const p0, 0x7f0800d5

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$SteeringWheelButton;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x7f0800d3

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$MapCardOpenMap;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p0, 0x7f0800da

    goto :goto_2

    :cond_c
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    if-eqz v0, :cond_d

    const p0, 0x7f0800ea

    goto :goto_2

    :cond_d
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_0

    :cond_e
    instance-of p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    if-eqz p0, :cond_f

    const p0, 0x7f08012e

    :goto_2
    return p0

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x3cb83a2e -> :sswitch_3
        -0x1166eae8 -> :sswitch_2
        -0x1166eae7 -> :sswitch_1
        0x6d286e8c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 4

    iget-object v0, p5, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz v0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    invoke-virtual {p4, p0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object p0, p5, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p4, 0x2

    if-lt p0, p4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p5, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    sget-object p3, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    const p4, 0x7f06008a

    const v1, 0x7f060019

    iget-object v3, p5, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    if-ne p0, p3, :cond_4

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {p5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->checkAndShowConflict()V

    goto :goto_5

    :cond_5
    iget-object p0, p5, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conflictHintTv:Landroid/widget/TextView;

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public static final setupViews$updateTriggerDisplay(Landroid/widget/ImageView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->getTriggerIcon(Lcom/deepalhome/launcher/task/model/TaskTrigger;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    instance-of p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getPickerDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final showConditionTypePicker$inflateConditionContent(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;I)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p0, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public static final showConditionTypePicker$renderSpeedRangeConfig$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p0

    const-string v0, "getValues(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-int p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " km/h"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final showConditionTypePicker$showCustomContent(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/AlertDialog;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p6, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, -0x2

    invoke-virtual {p0, p7, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkAndShowConflict()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conflictHintTv:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/task/model/ConflictChecker;->INSTANCE:Lcom/deepalhome/launcher/task/model/ConflictChecker;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-virtual {v0, v2, v3, v4}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->checkConflicts(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conflictHintTv:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getHasConflict()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getConflictType()Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getConflictType()Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    const-string v3, "getString(...)"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->getTriggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$TriggerConditionConflict;->getConditionName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130165

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;->getCondition1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType$ConditionConflict;->getCondition2Name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130164

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method
