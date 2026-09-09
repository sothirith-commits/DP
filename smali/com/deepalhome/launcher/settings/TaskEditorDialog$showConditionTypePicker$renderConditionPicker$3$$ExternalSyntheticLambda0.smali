.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/app/AlertDialog;

.field public final synthetic f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

.field public final synthetic f$4:Landroid/widget/FrameLayout;

.field public final synthetic f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$6:Landroid/widget/LinearLayout;

.field public final synthetic f$7:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$8:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$2:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$6:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$7:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$8:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    const-string v2, "$type"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    const-string v2, "$onSelected"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    const-string v3, "this$0"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v3, "$customContent"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-object v12, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$2:Landroid/app/AlertDialog;

    iget-object v11, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$4:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$6:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$7:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;->f$8:Landroid/widget/LinearLayout;

    const v5, 0x7f0b00eb

    const v7, 0x7f0b0184

    const/4 v8, 0x1

    const/4 v14, 0x0

    iget v15, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    iget v4, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "button_press_long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;-><init>(Z)V

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "wifi_state_disconnected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-direct {v0, v14}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;-><init>(Z)V

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "time_range"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0e003c

    invoke-static {v2, v11, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$inflateConditionContent(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b054f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0b01e1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0551

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    const v14, 0x7f0b01e2

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TimePicker;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v16, v11

    const v11, 0x7f0b0129

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-virtual {v14, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const/16 v2, 0x9

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setHour(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TimePicker;->setMinute(I)V

    const/16 v3, 0x12

    invoke-virtual {v14, v3}, Landroid/widget/TimePicker;->setHour(I)V

    invoke-virtual {v14, v2}, Landroid/widget/TimePicker;->setMinute(I)V

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/4 v3, 0x5

    invoke-direct {v2, v12, v3}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;

    const/4 v15, 0x2

    move-object v3, v2

    move-object v4, v8

    move-object v5, v14

    move-object v7, v12

    move v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v14, v2, 0x3

    move-object v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object v10, v0

    move-object/from16 v11, v16

    move-object v13, v1

    invoke-static/range {v7 .. v14}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$showCustomContent(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/AlertDialog;Landroid/view/View;I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "wifi_state_connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;-><init>(Z)V

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "button_press_short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;-><init>(Z)V

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v16, v11

    const-string v3, "speed_range"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f0e003b

    move-object/from16 v3, v16

    invoke-static {v2, v3, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$inflateConditionContent(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0533

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v11, 0x7f0b0532

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/slider/RangeSlider;

    const v14, 0x7f0b038d

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v5, 0x7f0b0382

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x7f0b00eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 p1, v0

    const v0, 0x7f0b0129

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const v4, 0x7f060019

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string v5, "valueOf(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x7f06001a

    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v4}, Lcom/google/android/material/slider/RangeSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11, v4}, Lcom/google/android/material/slider/RangeSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11, v2}, Lcom/google/android/material/slider/RangeSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    invoke-static {v11, v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$renderSpeedRangeConfig$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;

    const/4 v4, 0x0

    invoke-direct {v2, v11, v8, v4}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;I)V

    iget-object v4, v11, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/4 v4, 0x7

    invoke-direct {v2, v12, v4}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;

    const/4 v3, 0x0

    invoke-direct {v2, v11, v6, v12, v3}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/material/slider/RangeSlider;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    move-object v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object/from16 v10, p1

    move-object/from16 v11, v16

    move-object v13, v1

    invoke-static/range {v7 .. v14}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$showCustomContent(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/AlertDialog;Landroid/view/View;I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fcbf4bb -> :sswitch_5
        -0x2ca4a80d -> :sswitch_4
        -0x6cbd44f -> :sswitch_3
        0x439ee14b -> :sswitch_2
        0x5970d493 -> :sswitch_1
        0x72292825 -> :sswitch_0
    .end sparse-switch
.end method
