.class public final synthetic Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/task/SceneWordSpec;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wireless_debug_auto_allow"

    iput-object v0, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 59

    move-object/from16 v0, p0

    const-string v1, "$reason"

    const-string v2, "getString(...)"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "$context"

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v10, "$key"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "this$0"

    iget v15, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v15, :pswitch_data_0

    sget v1, Lcom/deepalhome/launcher/time/CompassClockWidgetView;->$r8$clinit:I

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    return-void

    :pswitch_0
    const-string v1, "$onSuccess"

    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$task"

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v2, "$progressDialog"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v1}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x514

    invoke-static {v2, v3, v4}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/task/SceneWordSpec;

    const-string v2, "$sceneWord"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/task/SceneActionExecutor;->scheduledActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/deepalhome/launcher/task/SceneActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneActionExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/task/SceneActionExecutor;->sendSceneAction(Lcom/deepalhome/launcher/task/SceneWordSpec;)V

    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/splash/SplashFragment;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/hjq/window/EasyWindow;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->cancel()V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    const-string v2, "$style"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v2, "$newShortcuts"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->isShortcutsInitialized(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getMutableShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void

    :pswitch_5
    const-string v1, "$view"

    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$onEnd"

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    const-string v2, "$info"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v2

    if-eqz v2, :cond_4

    const v8, 0x7f06038c

    goto :goto_1

    :cond_4
    const v8, 0x7f06038b

    :goto_1
    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    const v14, 0x7f06038a

    if-eqz v2, :cond_5

    move v15, v14

    goto :goto_2

    :cond_5
    const v15, 0x7f060389

    :goto_2
    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    const v10, 0x7f060019

    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v25

    if-eqz v2, :cond_6

    const v10, 0x7f06003a

    :goto_3
    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    goto :goto_4

    :cond_6
    const v10, 0x7f060039

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const v14, 0x7f060389

    :goto_5
    invoke-virtual {v1, v14}, Landroid/content/Context;->getColor(I)I

    move-result v24

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v14, 0x34

    int-to-float v14, v14

    mul-float/2addr v14, v2

    float-to-int v14, v14

    const/16 v3, 0xc

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v4, v3

    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v7, v2, v16

    float-to-int v7, v7

    if-ge v7, v13, :cond_8

    move v7, v13

    :cond_8
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    filled-new-array {v5}, [Landroid/text/InputFilter$LengthFilter;

    move-result-object v5

    check-cast v5, [Landroid/text/InputFilter;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCursorVisible(Z)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v11, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f130421

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41e00000    # 28.0f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v13, v12

    :goto_6
    const/4 v9, 0x2

    if-ge v13, v9, :cond_d

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x11

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v29, v0

    const/4 v0, 0x5

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v0, :cond_b

    mul-int/lit8 v16, v13, 0x5

    add-int v16, v16, v12

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v30, v6

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v31, v8

    if-nez v16, :cond_9

    move/from16 v6, v25

    goto :goto_8

    :cond_9
    move/from16 v6, v24

    :goto_8
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v12, :cond_a

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_a
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v9, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    add-int/2addr v12, v0

    move-object/from16 v6, v30

    move/from16 v8, v31

    const/4 v0, 0x5

    goto :goto_7

    :cond_b
    move-object/from16 v30, v6

    move/from16 v31, v8

    const/4 v0, 0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v13, :cond_c

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_c
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v15, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v13, v0

    move-object/from16 v0, v29

    move-object/from16 v6, v30

    move/from16 v8, v31

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_d
    move-object/from16 v29, v0

    move-object/from16 v30, v6

    move/from16 v31, v8

    new-instance v0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$showImportDialog$2;

    const/16 v22, 0x2

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v18, v5

    move/from16 v19, v24

    move/from16 v20, v25

    move/from16 v21, v7

    invoke-direct/range {v16 .. v22}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$showImportDialog$2;-><init>(Landroid/widget/EditText;Ljava/lang/Object;IIII)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0700b7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v8, -0x1

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07009e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x1c

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    move/from16 v3, v31

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v8, -0x1

    invoke-direct {v3, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070097

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v44, v3

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    const/16 v8, 0x10

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v6, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x14

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v2, v8

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v30

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x1

    invoke-direct {v2, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v40, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v9, 0x7f130422

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v41

    const v9, 0x7f130418

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v46, v9

    const v10, 0x7f130412

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v48, v10

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;

    move-object/from16 v49, v14

    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v21, v29

    move-object/from16 v22, v0

    move-object/from16 v23, v5

    move/from16 v26, v7

    invoke-direct/range {v14 .. v26}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Landroid/content/Context;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Landroid/widget/ProgressBar;Ljava/util/ArrayList;III)V

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const/16 v45, 0x1

    const/16 v47, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const v58, 0x37e02

    invoke-static/range {v40 .. v58}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    const v4, 0x7f0b04c8

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_e

    move-object/from16 v30, v3

    goto :goto_9

    :cond_e
    move-object/from16 v30, v4

    :goto_9
    new-instance v3, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;

    invoke-direct {v3, v2, v11}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$5;

    invoke-direct {v2, v11}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$5;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v34, 0x12c

    const/16 v37, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v39, 0x120

    move-object/from16 v27, v1

    move-object/from16 v28, v0

    move-object/from16 v29, v11

    move-object/from16 v31, v5

    move-object/from16 v36, v3

    move-object/from16 v38, v2

    invoke-direct/range {v27 .. v39}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;-><init>(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;Ljava/util/List;ZZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->bind()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v8}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_f
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->onDialogShown()V

    return-void

    :cond_10
    const-string v0, "inputInteraction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_7
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    const-string v2, "$installFile"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    const-string v2, "$callback"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    new-instance v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;

    move-object v12, v2

    invoke-direct {v2, v1, v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$3$1;-><init>(Ljava/io/File;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v4, "Installation prompt"

    const-string v5, "Installation is about to start, please manually reopen Deepal+ later"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v21, 0x7fee8

    invoke-static/range {v3 .. v21}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :pswitch_8
    sget v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v2, "customIconPreview"

    if-eqz v0, :cond_12

    iget-object v1, v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->customIconPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    const/4 v0, 0x0

    iget-object v1, v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->customIconPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    const v0, 0x7f08013b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_b
    return-void

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    sget v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "$path"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x60

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1, v0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_a
    sget v1, Lcom/deepalhome/launcher/settings/BlePairingActivity;->$r8$clinit:I

    const-string v1, "$textView"

    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$newText"

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_b
    sget v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    const-string v3, "$result"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongBtn:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    sget-object v5, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130184

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v21, 0x0

    const v23, 0x7ffcc

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;->message:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-static/range {v5 .. v23}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    const-string v2, "$mode"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onModeActionRequested:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c

    :cond_14
    const/4 v11, 0x0

    :goto_c
    if-nez v11, :cond_15

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    :cond_15
    return-void

    :pswitch_d
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_d

    :cond_16
    iget-object v1, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_d
    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string v3, "$apps"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1302ee

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130391

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/app/App;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hide()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f130431

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_10
    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$aYDwDW2wpOPH6VZ6WJ3CZP451bM(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V

    return-void

    :pswitch_11
    sget-object v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v2, "$icon"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->deleteIcon(Lcom/deepalhome/launcher/floating/CachedIcon;)Z

    move-result v1

    new-instance v2, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, v0}, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;-><init>(ZILjava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_12
    sget-object v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const-string v2, "$icons"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_13

    :cond_1c
    iget-object v2, v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    if-eqz v2, :cond_21

    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->emptyTv:Landroid/widget/TextView;

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_11

    :cond_1d
    move v3, v4

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->iconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v12, v4

    goto :goto_12

    :cond_1e
    const/4 v12, 0x0

    :goto_12
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_13
    return-void

    :cond_1f
    const-string v0, "iconRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_20
    const/4 v0, 0x0

    const-string v1, "emptyTv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "$iconPath"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->rootViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_17

    :cond_22
    iget-object v0, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/floating/GifTextureView;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    iget-boolean v1, v0, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz v1, :cond_23

    goto :goto_17

    :cond_23
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/GifTextureView;->startRenderLoop()V

    goto :goto_17

    :cond_24
    iget-object v0, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v2, :cond_25

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_14

    :cond_25
    const/4 v0, 0x0

    :goto_14
    iget-object v1, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->iconViewProvider:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_28

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_15

    :cond_26
    const/4 v0, 0x0

    :goto_15
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v2, :cond_27

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_16

    :cond_27
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_28

    goto :goto_17

    :cond_28
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_29

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_2b
    :goto_17
    return-void

    :pswitch_14
    const-string v1, "$this_runCatching"

    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$clientView"

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: clientView added, size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarSRCardHost"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_15
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$K-vx13F3vUg3sP7o-eo_XW45lgo(Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void

    :pswitch_16
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "$packageName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->pendingLimitDialogCancel:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_18

    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastLimitDialogClickAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2d

    goto :goto_18

    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->scanLimitDialog(Z)Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$LimitDialogResult;->clicked:Z

    if-eqz v0, :cond_2e

    iput-wide v2, v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->lastLimitDialogClickAt:J

    :cond_2e
    :goto_18
    return-void

    :pswitch_17
    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->autoNaviCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->hasWriteSecureSettingsPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_1c

    :cond_2f
    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_1c

    :cond_30
    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->parseEnabledServiceIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->getServiceIdAliases(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    goto/16 :goto_1c

    :cond_31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->instance:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result v3

    if-eqz v3, :cond_36

    goto/16 :goto_1c

    :cond_33
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "auto_navi_accessibility"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "heartbeat_at"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v5

    if-gtz v5, :cond_34

    goto :goto_19

    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_35

    goto :goto_19

    :cond_35
    sub-long/2addr v5, v3

    const-wide/16 v3, 0x1f40

    cmp-long v3, v5, v3

    if-gtz v3, :cond_36

    goto/16 :goto_1c

    :cond_36
    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->lastAutoNaviRestartAt:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-gez v5, :cond_37

    goto :goto_1c

    :cond_37
    sput-wide v3, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->lastAutoNaviRestartAt:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_39
    const/4 v9, 0x0

    const/16 v11, 0x3e

    const-string v7, ":"

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->getServiceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1b

    :catchall_0
    move-exception v0

    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1b
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v5, v0, Lkotlin/Result$Failure;

    if-eqz v5, :cond_3a

    move-object v0, v4

    :cond_3a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1c

    :cond_3b
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v1, v5}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_1c
    return-void

    :pswitch_18
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/HelperActivity;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/HelperActivity;->binding:Lcom/deepalhome/launcher/databinding/HelperActivityBinding;

    const-string v3, "binding"

    if-eqz v2, :cond_40

    const v4, 0x7f1304e4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/HelperActivityBinding;->wirelessDebugTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/HelperActivity;->binding:Lcom/deepalhome/launcher/databinding/HelperActivityBinding;

    if-eqz v2, :cond_3f

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1304e6

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/HelperActivityBinding;->wirelessDebugDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    invoke-virtual {v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3e

    sget-object v2, Lcom/deepalhome/launcher/adb/AdbUtil;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_1d

    :cond_3d
    const/4 v12, 0x0

    :goto_1d
    new-instance v3, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1$onReceive$1$1;

    invoke-direct {v3, v1, v0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1$onReceive$1$1;-><init>(Lcom/deepalhome/launcher/HelperActivity;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v3}, Lcom/deepalhome/launcher/adb/AdbUtil;->connect(ILkotlin/jvm/functions/Function1;)V

    :cond_3e
    return-void

    :cond_3f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_40
    const/4 v0, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/profileinstaller/ProfileInstallerInitializer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/profileinstaller/ProfileInstallerInitializer$Handler28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-instance v3, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0, v4}, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    add-int/lit16 v2, v2, 0x1388

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1a
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1b
    iget-object v1, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    throw v1

    :pswitch_1c
    sget-object v2, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    iget-object v2, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/MainActivity;

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/deepalhome/launcher/MainActivity;->pendingRootUiSync:Z

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const v3, 0x7f0b0239

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v3, v1, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Lcom/deepalhome/launcher/MainActivity;->applyLauncherUi()V

    goto :goto_1e

    :cond_41
    instance-of v3, v1, Lcom/deepalhome/launcher/splash/SplashFragment;

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Lcom/deepalhome/launcher/MainActivity;->applySplashUi()V

    goto :goto_1e

    :cond_42
    const-string v2, "syncRootUi("

    const-string v3, "MainActivity"

    if-nez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): fragment not ready"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): unknown fragment in container"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
