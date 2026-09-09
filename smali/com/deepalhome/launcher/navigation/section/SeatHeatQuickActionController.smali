.class public final Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$Companion;

.field private static final DEFAULT_SEAT_HEAT_LEVEL:Ljava/lang/String; = "3"

.field private static final MAX_SEAT_HEAT_LEVEL:I = 0x3

.field private static final SEAT_HEAT_DISABLED_LEVEL:Ljava/lang/String; = "0"

.field private static final TOPIC_SEAT_HEAT_LEFT:Ljava/lang/String; = "AC/SeatHeating/FrontLeft"

.field private static final TOPIC_SEAT_HEAT_RIGHT:Ljava/lang/String; = "AC/SeatHeating/FrontRight"


# instance fields
.field private dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private iconView:Landroid/widget/ImageView;

.field private interactive:Z

.field private isNight:Z

.field private observeVehicleState:Z

.field private popupParentViewProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private popupVerticalAnchor:Landroid/view/View;

.field private preferActiveContentColor:Z

.field private previewSeatHeatLevel:Ljava/lang/Integer;

.field private rootView:Landroid/view/View;

.field private seatHeatLevel:Ljava/lang/String;

.field private seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

.field private seatHeatSwipeStartThresholdPx:F

.field private seatHeatSwipeStartX:F

.field private seatHeatSwipeStepPx:F

.field private touchFeedbackEnabled:Z

.field private final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field private final vehiclePropertyListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5ZHkVXf2RCKtzKYzgoAgjB14mw4(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->setupSeatHeatTouchListener$lambda$0(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->touchFeedbackEnabled:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->preferActiveContentColor:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->initialSeatHeatLevel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatLevel:Ljava/lang/String;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->vehiclePropertyListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$applySeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->applySeatHeatLevel(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$applySeatHeatState(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->applySeatHeatState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$clearSeatHeatPreview(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->clearSeatHeatPreview(Z)V

    return-void
.end method

.method public static final synthetic access$currentCommittedSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->currentCommittedSeatHeatLevel()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissSeatHeatPopup(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->dismissSeatHeatPopup(Z)V

    return-void
.end method

.method public static final synthetic access$getSeatHeatPopup$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getSeatHeatSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatSwipeStartThresholdPx:F

    return p0
.end method

.method public static final synthetic access$getSeatHeatSwipeStartX$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatSwipeStartX:F

    return p0
.end method

.method public static final synthetic access$getSeatHeatSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatSwipeStepPx:F

    return p0
.end method

.method public static final synthetic access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->touchFeedbackEnabled:Z

    return p0
.end method

.method public static final synthetic access$getType$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object p0
.end method

.method public static final synthetic access$matchesTopic(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->matchesTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nextSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->nextSeatHeatLevel()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$previewSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->previewSeatHeatLevel(I)V

    return-void
.end method

.method public static final synthetic access$render(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->render()V

    return-void
.end method

.method public static final synthetic access$seatHeatIconRes(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;ZI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatIconRes(ZI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$seatHeatPosition(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPosition()Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showSeatHeatPopup(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->showSeatHeatPopup(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$triggerPopupAnchorAnimation(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->triggerPopupAnchorAnimation()V

    return-void
.end method

.method private final native applySeatHeatLevel(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z
.end method

.method private final native applySeatHeatState(Ljava/lang/String;)Z
.end method

.method public static synthetic attachToViews$default(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move/from16 v9, p6

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move/from16 v10, p6

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V

    return-void
.end method

.method private final native clearInteractions()V
.end method

.method private final native clearSeatHeatPreview(Z)V
.end method

.method private final native currentCommittedSeatHeatLevel()I
.end method

.method private final native currentSeatHeatLevel()I
.end method

.method private final native dismissSeatHeatPopup(Z)V
.end method

.method private final native ensureSeatHeatPopup()V
.end method

.method private final native initSeatHeatThresholds(Landroid/content/Context;)V
.end method

.method private final native initialSeatHeatLevel()Ljava/lang/String;
.end method

.method private final native loadSeatDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method private final native matchesTopic(Ljava/lang/String;)Z
.end method

.method private final native nextSeatHeatLevel()I
.end method

.method private final native persistOptimisticState()V
.end method

.method private final native previewSeatHeatLevel(I)V
.end method

.method private final native render()V
.end method

.method private final native seatHeatIconRes(ZI)I
.end method

.method public static synthetic seatHeatIconRes$default(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;ZIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->currentSeatHeatLevel()I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatIconRes(ZI)I

    move-result p0

    return p0
.end method

.method private final native seatHeatLevelValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native seatHeatPosition()Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.end method

.method private final native setupInteractions()V
.end method

.method private final native setupSeatHeatTouchListener(Landroid/view/View;)V
.end method

.method private static final setupSeatHeatTouchListener$lambda$0(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p3, "this$0"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "$isSwiping"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "$gestureDetector"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    if-eq p3, v0, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->cancelInteraction()V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    :cond_2
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_3
    iget-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->confirmAndScheduleClose()V

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    :cond_5
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->seatHeatSwipeStartX:F

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method private final native showSeatHeatPopup(Landroid/view/View;Landroid/view/View;I)V
.end method

.method private final native triggerPopupAnchorAnimation()V
.end method

.method private final native updateSeatHeatState(I)V
.end method


# virtual methods
.method public final attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "ZZZ)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "iconView"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "popupVerticalAnchor"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->interactive:Z

    iput-boolean p7, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->observeVehicleState:Z

    iput-boolean p8, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->touchFeedbackEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->initSeatHeatThresholds(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->setupInteractions()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->render()V

    return-void
.end method

.method public final native dismissTransientUi(Z)V
.end method

.method public final native isActiveForUi()Z
.end method

.method public final native onAttachedToWindow()V
.end method

.method public final native onDetachedFromWindow()V
.end method

.method public final native performPrimaryAction()Z
.end method

.method public final native refreshFromCurrentState()V
.end method

.method public final native setPreferActiveContentColor(Z)V
.end method

.method public final native updateUIMode(Z)V
.end method
