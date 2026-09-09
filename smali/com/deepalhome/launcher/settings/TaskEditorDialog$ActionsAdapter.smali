.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public pendingInsertPosition:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->pendingInsertPosition:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 25

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p1

    check-cast v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction;

    const v2, 0x7f0b0051

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b01b1

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b0050

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0b0053

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/FrameLayout;

    const v5, 0x7f0b04a8

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/ImageView;

    iget v5, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actionItemBg:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iget v5, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    invoke-virtual {v3, v5, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    instance-of v13, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    const/4 v14, 0x1

    iget v15, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    if-eqz v13, :cond_0

    move-object/from16 v16, v1

    check-cast v16, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    sget-object v17, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v0, Lcom/deepalhome/launcher/app/App;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getAppName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/app/App;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v14, 0x7f0800ec

    invoke-static {v4, v0, v14}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon(Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;I)V

    goto/16 :goto_7

    :cond_0
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v0, :cond_1

    const v0, 0x7f08025e

    goto/16 :goto_6

    :cond_1
    const v0, 0x7f0800cb

    if-eqz v13, :cond_2

    goto/16 :goto_6

    :cond_2
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    if-eqz v14, :cond_3

    const v0, 0x7f0800ce

    goto/16 :goto_6

    :cond_3
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    const v17, 0x7f0800e1

    if-eqz v14, :cond_4

    :goto_0
    move/from16 v0, v17

    goto/16 :goto_6

    :cond_4
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    const v18, 0x7f0800db

    if-eqz v14, :cond_5

    :goto_1
    move/from16 v0, v18

    goto/16 :goto_6

    :cond_5
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz v14, :cond_6

    goto :goto_1

    :cond_6
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz v14, :cond_7

    goto :goto_1

    :cond_7
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz v14, :cond_8

    const v0, 0x7f0800c0

    goto/16 :goto_6

    :cond_8
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz v14, :cond_9

    const v0, 0x7f0800da

    goto/16 :goto_6

    :cond_9
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz v14, :cond_a

    const v0, 0x7f0800d0

    goto/16 :goto_6

    :cond_a
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    if-eqz v14, :cond_b

    const v0, 0x7f080159

    goto/16 :goto_6

    :cond_b
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz v14, :cond_c

    const v0, 0x7f0800ed

    goto/16 :goto_6

    :cond_c
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz v14, :cond_d

    const v0, 0x7f0800e6

    goto/16 :goto_6

    :cond_d
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    const v18, 0x7f0800cc

    if-eqz v14, :cond_e

    goto :goto_1

    :cond_e
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz v14, :cond_f

    goto/16 :goto_6

    :cond_f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz v0, :cond_11

    const v0, 0x7f0800cd

    goto/16 :goto_6

    :cond_11
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    if-eqz v0, :cond_12

    const v0, 0x7f0800d8

    goto/16 :goto_6

    :cond_12
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz v0, :cond_13

    const v0, 0x7f0800e7

    goto/16 :goto_6

    :cond_13
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz v0, :cond_14

    const v0, 0x7f0800d1

    goto/16 :goto_6

    :cond_14
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz v0, :cond_15

    const v0, 0x7f0800d2

    goto/16 :goto_6

    :cond_15
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz v0, :cond_16

    const v0, 0x7f0800e5

    goto/16 :goto_6

    :cond_16
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz v0, :cond_17

    const v0, 0x7f0800dc

    goto/16 :goto_6

    :cond_17
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz v0, :cond_18

    const v0, 0x7f08010d

    goto/16 :goto_6

    :cond_18
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz v0, :cond_19

    const v0, 0x7f08010c

    goto/16 :goto_6

    :cond_19
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz v0, :cond_1a

    const v0, 0x7f08010e

    goto/16 :goto_6

    :cond_1a
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    const v14, 0x7f0800ea

    if-eqz v0, :cond_1b

    :goto_2
    move v0, v14

    goto/16 :goto_6

    :cond_1b
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    if-eqz v0, :cond_1c

    goto :goto_2

    :cond_1c
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz v0, :cond_1d

    goto :goto_2

    :cond_1d
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz v0, :cond_1e

    const v0, 0x7f08024e

    goto/16 :goto_6

    :cond_1e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const v14, 0x7f0800dd

    if-eqz v0, :cond_1f

    goto :goto_2

    :cond_1f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz v0, :cond_20

    goto :goto_2

    :cond_20
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz v0, :cond_21

    const v0, 0x7f080176

    goto/16 :goto_6

    :cond_21
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz v0, :cond_22

    const v0, 0x7f08017a

    goto/16 :goto_6

    :cond_22
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz v0, :cond_23

    const v0, 0x7f08017b

    goto/16 :goto_6

    :cond_23
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    if-eqz v0, :cond_24

    const v0, 0x7f080272

    goto/16 :goto_6

    :cond_24
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    if-eqz v0, :cond_25

    const v0, 0x7f080271

    goto/16 :goto_6

    :cond_25
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz v0, :cond_26

    goto :goto_3

    :cond_26
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz v0, :cond_27

    goto :goto_3

    :cond_27
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz v0, :cond_28

    :goto_3
    goto/16 :goto_0

    :cond_28
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    const v14, 0x7f0800cf

    if-eqz v0, :cond_29

    goto :goto_2

    :cond_29
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    const v17, 0x7f08016d

    if-eqz v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    const v18, 0x7f0800e3

    if-eqz v0, :cond_2c

    goto/16 :goto_1

    :cond_2c
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz v0, :cond_2d

    goto/16 :goto_1

    :cond_2d
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz v0, :cond_2e

    goto/16 :goto_1

    :cond_2e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    if-eqz v0, :cond_2f

    const v0, 0x7f0800df

    goto :goto_6

    :cond_2f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    if-eqz v0, :cond_30

    const v0, 0x7f0800e4

    goto :goto_6

    :cond_30
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz v0, :cond_31

    goto :goto_4

    :cond_31
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz v0, :cond_32

    goto :goto_4

    :cond_32
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    if-eqz v0, :cond_33

    :goto_4
    goto/16 :goto_2

    :cond_33
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz v0, :cond_34

    goto :goto_5

    :cond_34
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz v0, :cond_35

    goto :goto_5

    :cond_35
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v0, :cond_36

    :goto_5
    goto/16 :goto_0

    :cond_36
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v0, :cond_37

    const v0, 0x7f0800d9

    goto :goto_6

    :cond_37
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    if-eqz v0, :cond_aa

    const v0, 0x7f0800de

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4, v15, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_7
    const/4 v14, -0x1

    invoke-virtual {v12, v14, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v9, v8}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    iget-object v2, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const-string v3, "valueOf(...)"

    const/4 v14, 0x0

    if-eqz v0, :cond_38

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v5, 0x7f060019

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v13, 0x7f06001a

    invoke-virtual {v2, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;->getSeconds()I

    move-result v14

    move-object/from16 v24, v10

    const/4 v10, 0x1

    invoke-static {v14, v10, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v13}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v13, -0x2

    invoke-direct {v4, v10, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;->getSeconds()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$2;

    invoke-direct {v1, v4, v9, v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$2;-><init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;)V

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x10

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_38
    move-object/from16 v24, v10

    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    const-string v4, ""

    const/16 v10, 0x14

    if-eqz v0, :cond_39

    goto :goto_8

    :cond_39
    instance-of v14, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz v14, :cond_3d

    :goto_8
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz v3, :cond_3a

    const-string v13, "Please enter loop broadcast content"

    goto :goto_9

    :cond_3a
    const-string v13, "Please enter single broadcast content"

    :goto_9
    if-eqz v0, :cond_3b

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_3b
    if-eqz v3, :cond_3c

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_3c
    :goto_a
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget v2, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->editTextBg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v2, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v10, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;

    invoke-direct {v2, v8, v9, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v5, 0x10

    invoke-direct {v1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_3d
    const/16 v5, 0x10

    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    if-eqz v0, :cond_3e

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f060019

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f06001a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x64

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;->getBrightness()I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v13, -0x2

    invoke-direct {v4, v10, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;->getBrightness()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$4;

    invoke-direct {v1, v4, v9, v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$4;-><init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;)V

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_3e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    if-eqz v0, :cond_3f

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f060019

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f06001a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;->getVolume()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v4, v14, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;->getVolume()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;

    invoke-direct {v1, v4, v9, v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;-><init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;)V

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x10

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_3f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    if-eqz v0, :cond_40

    goto :goto_b

    :cond_40
    instance-of v5, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v5, :cond_43

    :goto_b
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v5, 0x7f060019

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v10, 0x7f06001a

    invoke-virtual {v2, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_41

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->getDuration()I

    move-result v0

    goto :goto_c

    :cond_41
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v0, :cond_42

    move-object v0, v1

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;->getDuration()I

    move-result v0

    goto :goto_c

    :cond_42
    const/4 v0, 0x3

    :goto_c
    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/widget/ProgressBar;->setMax(I)V

    add-int/lit8 v14, v0, -0x1

    const/4 v7, 0x0

    invoke-static {v14, v7, v13}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    invoke-direct {v5, v7, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0x10

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;

    invoke-direct {v0, v5, v9, v8, v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;-><init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v5, 0x10

    invoke-direct {v0, v1, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_43
    const/16 v5, 0x10

    const/4 v7, -0x2

    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v0, :cond_44

    goto/16 :goto_d

    :cond_44
    if-eqz v13, :cond_45

    goto/16 :goto_d

    :cond_45
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    if-eqz v3, :cond_46

    goto/16 :goto_d

    :cond_46
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    if-eqz v3, :cond_47

    goto/16 :goto_d

    :cond_47
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz v3, :cond_48

    goto/16 :goto_d

    :cond_48
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz v3, :cond_49

    goto/16 :goto_d

    :cond_49
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz v3, :cond_4a

    goto/16 :goto_d

    :cond_4a
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz v3, :cond_4b

    goto/16 :goto_d

    :cond_4b
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz v3, :cond_4c

    goto/16 :goto_d

    :cond_4c
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    if-eqz v3, :cond_4d

    goto/16 :goto_d

    :cond_4d
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz v3, :cond_4e

    goto/16 :goto_d

    :cond_4e
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz v3, :cond_4f

    goto/16 :goto_d

    :cond_4f
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    if-eqz v3, :cond_50

    goto/16 :goto_d

    :cond_50
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz v3, :cond_51

    goto/16 :goto_d

    :cond_51
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz v3, :cond_52

    goto/16 :goto_d

    :cond_52
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz v3, :cond_53

    goto/16 :goto_d

    :cond_53
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    if-eqz v3, :cond_54

    goto/16 :goto_d

    :cond_54
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz v3, :cond_55

    goto/16 :goto_d

    :cond_55
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz v3, :cond_56

    goto/16 :goto_d

    :cond_56
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz v3, :cond_57

    goto/16 :goto_d

    :cond_57
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz v3, :cond_58

    goto/16 :goto_d

    :cond_58
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz v3, :cond_59

    goto/16 :goto_d

    :cond_59
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz v3, :cond_5a

    goto/16 :goto_d

    :cond_5a
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz v3, :cond_5b

    goto/16 :goto_d

    :cond_5b
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz v3, :cond_5c

    goto/16 :goto_d

    :cond_5c
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    if-eqz v3, :cond_5d

    goto/16 :goto_d

    :cond_5d
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz v3, :cond_5e

    goto/16 :goto_d

    :cond_5e
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    if-eqz v3, :cond_5f

    goto/16 :goto_d

    :cond_5f
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz v3, :cond_60

    goto/16 :goto_d

    :cond_60
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz v3, :cond_61

    goto/16 :goto_d

    :cond_61
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz v3, :cond_62

    goto/16 :goto_d

    :cond_62
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz v3, :cond_63

    goto/16 :goto_d

    :cond_63
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz v3, :cond_64

    goto/16 :goto_d

    :cond_64
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz v3, :cond_65

    goto :goto_d

    :cond_65
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    if-eqz v3, :cond_66

    goto :goto_d

    :cond_66
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    if-eqz v3, :cond_67

    goto :goto_d

    :cond_67
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz v3, :cond_68

    goto :goto_d

    :cond_68
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    if-eqz v3, :cond_69

    goto :goto_d

    :cond_69
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz v3, :cond_6a

    goto :goto_d

    :cond_6a
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz v3, :cond_6b

    goto :goto_d

    :cond_6b
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    if-eqz v3, :cond_6c

    goto :goto_d

    :cond_6c
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz v3, :cond_6d

    goto :goto_d

    :cond_6d
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    if-eqz v3, :cond_6e

    goto :goto_d

    :cond_6e
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz v3, :cond_6f

    goto :goto_d

    :cond_6f
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz v3, :cond_70

    goto :goto_d

    :cond_70
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz v3, :cond_71

    goto :goto_d

    :cond_71
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz v3, :cond_72

    goto :goto_d

    :cond_72
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v3, :cond_73

    goto :goto_d

    :cond_73
    instance-of v3, v1, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    if-eqz v3, :cond_a8

    :goto_d
    iget v3, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->cancelBtnBg:I

    const-string v10, "getString(...)"

    if-eqz v13, :cond_75

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    const v0, 0x7f13042e

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_74
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v13, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;

    const/4 v14, 0x0

    move-object v0, v13

    move-object v1, v10

    move-object v2, v9

    move-object v3, v8

    move v15, v7

    move v7, v5

    move-object/from16 v4, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;I)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_75
    move v13, v7

    move v7, v5

    if-eqz v0, :cond_76

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v14, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    move-object v0, v14

    move-object v1, v10

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;I)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_76
    instance-of v5, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz v5, :cond_77

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v14, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;

    const/4 v5, 0x2

    move-object v0, v14

    move-object v1, v10

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;I)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_77
    instance-of v5, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    if-eqz v5, :cond_78

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v14, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;

    const/4 v5, 0x3

    move-object v0, v14

    move-object v1, v10

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;I)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_78
    if-eqz v0, :cond_79

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_79
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    if-eqz v0, :cond_7a

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_7a
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    if-eqz v0, :cond_7b

    const-string v4, "Open Last Used Music"

    goto/16 :goto_e

    :cond_7b
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz v0, :cond_7c

    const-string v4, "Music Previous"

    goto/16 :goto_e

    :cond_7c
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz v0, :cond_7d

    const-string v4, "Music Next"

    goto/16 :goto_e

    :cond_7d
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz v0, :cond_7e

    const-string v4, "Toggle Favorite Current Song"

    goto/16 :goto_e

    :cond_7e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz v0, :cond_7f

    const-string v4, "Open Last Used Map"

    goto/16 :goto_e

    :cond_7f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz v0, :cond_80

    const-string v4, "Return to Deepal+"

    goto/16 :goto_e

    :cond_80
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    if-eqz v0, :cond_81

    const-string v4, "Open S05 Journey"

    goto/16 :goto_e

    :cond_81
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz v0, :cond_82

    const-string v4, "Go Back"

    goto/16 :goto_e

    :cond_82
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz v0, :cond_83

    const-string v4, "Open System Launcher"

    goto/16 :goto_e

    :cond_83
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    if-eqz v0, :cond_84

    const-string v4, "Show Card Page"

    goto/16 :goto_e

    :cond_84
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz v0, :cond_85

    const-string v4, "Toggle App Center Page"

    goto/16 :goto_e

    :cond_85
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz v0, :cond_86

    const-string v4, "Toggle Card Page"

    goto/16 :goto_e

    :cond_86
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz v0, :cond_87

    const-string v4, "Switch to Dark Mode"

    goto/16 :goto_e

    :cond_87
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    if-eqz v0, :cond_88

    const-string v4, "Switch to Light Mode"

    goto/16 :goto_e

    :cond_88
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz v0, :cond_89

    const-string v4, "Switch to Auto Mode"

    goto/16 :goto_e

    :cond_89
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz v0, :cond_8a

    const-string v4, "Enable HUD Lyrics Display"

    goto/16 :goto_e

    :cond_8a
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz v0, :cond_8b

    const-string v4, "Disable HUD Lyrics Display"

    goto/16 :goto_e

    :cond_8b
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz v0, :cond_8c

    const-string v4, "Show/Hide OEM Status Bar"

    goto/16 :goto_e

    :cond_8c
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz v0, :cond_8d

    const-string v4, "Show/Hide OEM Nav Bar"

    goto/16 :goto_e

    :cond_8d
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz v0, :cond_8e

    const-string v4, "Toggle A/C"

    goto/16 :goto_e

    :cond_8e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz v0, :cond_8f

    const-string v4, "Toggle Front Defrost"

    goto/16 :goto_e

    :cond_8f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz v0, :cond_90

    const-string v4, "Toggle Rear Demist"

    goto/16 :goto_e

    :cond_90
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    if-eqz v0, :cond_91

    const-string v4, "Toggle Voice Calling"

    goto/16 :goto_e

    :cond_91
    if-eqz v5, :cond_92

    const-string v4, "Set Power Mode"

    goto/16 :goto_e

    :cond_92
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz v0, :cond_93

    const-string v4, "Random Wallpaper"

    goto/16 :goto_e

    :cond_93
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz v0, :cond_94

    const-string v4, "Next Wallpaper"

    goto/16 :goto_e

    :cond_94
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz v0, :cond_95

    const-string v4, "Previous Wallpaper"

    goto/16 :goto_e

    :cond_95
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz v0, :cond_96

    const-string v4, "Heated Cockpit - Normal"

    goto/16 :goto_e

    :cond_96
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz v0, :cond_97

    const-string v4, "Heated Cockpit - Low Power"

    goto/16 :goto_e

    :cond_97
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz v0, :cond_98

    const-string v4, "Heated Cockpit - Off"

    goto/16 :goto_e

    :cond_98
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    if-eqz v0, :cond_99

    const-string v4, "Toggle Rear Fog Light Strobe"

    goto/16 :goto_e

    :cond_99
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    if-eqz v0, :cond_9a

    const-string v4, "Switch to Low Beam"

    goto/16 :goto_e

    :cond_9a
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz v0, :cond_9b

    const-string v4, "Switch to Auto Lights"

    goto/16 :goto_e

    :cond_9b
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    if-eqz v0, :cond_9c

    const-string v4, "Enable Auto Brightness"

    goto/16 :goto_e

    :cond_9c
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz v0, :cond_9d

    const-string v4, "Disable Auto Brightness"

    goto :goto_e

    :cond_9d
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz v0, :cond_9e

    const-string v4, "Toggle Auto Brightness"

    goto :goto_e

    :cond_9e
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    if-eqz v0, :cond_9f

    const-string v4, "Toggle Rear Seat Belt Alarm"

    goto :goto_e

    :cond_9f
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_a0
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    if-eqz v0, :cond_a1

    const-string v4, "Speed-Dependent Volume"

    goto :goto_e

    :cond_a1
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz v0, :cond_a2

    const-string v4, "Turn On Rear Fog Light"

    goto :goto_e

    :cond_a2
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz v0, :cond_a3

    const-string v4, "Turn Off Rear Fog Light"

    goto :goto_e

    :cond_a3
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz v0, :cond_a4

    const-string v4, "Turn On Low Beam"

    goto :goto_e

    :cond_a4
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz v0, :cond_a5

    const-string v4, "Turn Off Low Beam"

    goto :goto_e

    :cond_a5
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v0, :cond_a6

    const v0, 0x7f130036

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_a6
    instance-of v0, v1, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    if-eqz v0, :cond_a7

    const v0, 0x7f13044f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a7
    :goto_e
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a8
    :goto_f
    new-instance v7, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    move-object v0, v7

    move-object v1, v8

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->pendingInsertPosition:I

    move/from16 v1, p2

    if-ne v1, v0, :cond_a9

    const/4 v0, -0x1

    iput v0, v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->pendingInsertPosition:I

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$animateListItemIn(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;)V

    :cond_a9
    return-void

    :cond_aa
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0102

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method