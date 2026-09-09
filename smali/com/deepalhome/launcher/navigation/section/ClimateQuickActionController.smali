.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$Companion;

.field private static final DEFAULT_SEAT_VENT_LEVEL:Ljava/lang/String; = "3"

.field private static final MAX_SEAT_VENT_LEVEL:I = 0x3

.field private static final REAR_MIRROR_HEAT_TOPICS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final S05_AIR_RECYCLE_PROTECT_WINDOW_MS:J = 0x4b0L

.field private static final S05_AIR_RECYCLE_SYNC_DELAY_MS:J = 0xb4L

.field private static final SEAT_VENT_DISABLED_LEVEL:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "ClimateQuickAction"

.field private static final TOPIC_AIR_RECYCLE:Ljava/lang/String; = "AC/CycleMode"

.field private static final TOPIC_FRONT_DEFROST:Ljava/lang/String; = "AC/FrontDefrost"

.field private static final TOPIC_REAR_DEFROST:Ljava/lang/String; = "AC/RearDefrost"

.field private static final TOPIC_REAR_MIRROR_HEAT:Ljava/lang/String; = "AC/RearViewMirrorHeating"

.field private static final TOPIC_REAR_MIRROR_HEAT_LEFT:Ljava/lang/String; = "AC/RearViewMirrorHeating/Left"

.field private static final TOPIC_REAR_MIRROR_HEAT_RIGHT:Ljava/lang/String; = "AC/RearViewMirrorHeating/Right"

.field private static final TOPIC_SEAT_VENT_LEFT:Ljava/lang/String; = "AC/SeatVentilation/FrontLeft"

.field private static final TOPIC_SEAT_VENT_RIGHT:Ljava/lang/String; = "AC/SeatVentilation/FrontRight"


# instance fields
.field private defrostEnabled:Z

.field private dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private iconView:Landroid/widget/ImageView;

.field private innerRecycleEnabled:Z

.field private interactive:Z

.field private isNight:Z

.field private isPopupActive:Z

.field private observeVehicleState:Z

.field private pendingS05AirRecycleTarget:Ljava/lang/Boolean;

.field private pendingS05AirRecycleUntilMs:J

.field private popupParentViewProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private popupVerticalAnchor:Landroid/view/View;

.field private preferActiveContentColor:Z

.field private previewSeatVentLevel:Ljava/lang/Integer;

.field private rearDefrostEnabled:Z

.field private rootView:Landroid/view/View;

.field private final s05AirRecycleListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private seatVentLevel:Ljava/lang/String;

.field private seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

.field private seatVentSwipeStartThresholdPx:F

.field private seatVentSwipeStartX:F

.field private seatVentSwipeStepPx:F

.field private final syncS05AirRecycleRunnable:Ljava/lang/Runnable;

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
.method public static synthetic $r8$lambda$5H_hlvl6jpYAhJE32iKiDDohbaM(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->setupInteractions$lambda$0(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EbXsa3lo3ZD1j2oqChTPBy3KgsI(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->syncS05AirRecycleRunnable$lambda$11(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGWmxwYcdwJMmQJTqDZ9eKRlnbI(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->setupSeatVentTouchListener$lambda$1(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$Companion;

    const-string v0, "AC/RearDefrost"

    const-string v1, "AC/RearViewMirrorHeating"

    const-string v2, "AC/RearViewMirrorHeating/Left"

    const-string v3, "AC/RearViewMirrorHeating/Right"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->REAR_MIRROR_HEAT_TOPICS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->touchFeedbackEnabled:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->preferActiveContentColor:Z

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->vehiclePropertyListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$s05AirRecycleListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->s05AirRecycleListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->initialInnerRecycleEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->innerRecycleEnabled:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->initialRearDefrostEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->rearDefrostEnabled:Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->initialDefrostEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->defrostEnabled:Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->initialSeatVentRawValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "0"

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentLevel:Ljava/lang/String;

    :goto_0
    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v0, 0x15

    invoke-direct {p1, v0, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->syncS05AirRecycleRunnable:Ljava/lang/Runnable;

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final synthetic access$applySeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->applySeatVentLevel(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$applyVehicleProperty(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->applyVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$clearPendingS05AirRecycleTargetIfMatched(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->clearPendingS05AirRecycleTargetIfMatched(Z)V

    return-void
.end method

.method public static final synthetic access$clearSeatVentPreview(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->clearSeatVentPreview(Z)V

    return-void
.end method

.method public static final synthetic access$currentCommittedSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->currentCommittedSeatVentLevel()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$cycleSeatVentilation(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->cycleSeatVentilation(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->dismissSeatVentPopup(Z)V

    return-void
.end method

.method public static final synthetic access$getDefrostEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->defrostEnabled:Z

    return p0
.end method

.method public static final synthetic access$getInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->innerRecycleEnabled:Z

    return p0
.end method

.method public static final synthetic access$getRearDefrostEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->rearDefrostEnabled:Z

    return p0
.end method

.method public static final synthetic access$getSeatVentPopup$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getSeatVentSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentSwipeStartThresholdPx:F

    return p0
.end method

.method public static final synthetic access$getSeatVentSwipeStartX$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentSwipeStartX:F

    return p0
.end method

.method public static final synthetic access$getSeatVentSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentSwipeStepPx:F

    return p0
.end method

.method public static final synthetic access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->touchFeedbackEnabled:Z

    return p0
.end method

.method public static final synthetic access$getType$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object p0
.end method

.method public static final synthetic access$handleClick(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->handleClick()V

    return-void
.end method

.method public static final synthetic access$matchesTopic(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->matchesTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$nextSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->nextSeatVentLevel()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$persistOptimisticState(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->persistOptimisticState()V

    return-void
.end method

.method public static final synthetic access$previewSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->previewSeatVentLevel(I)V

    return-void
.end method

.method public static final synthetic access$render(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->render()V

    return-void
.end method

.method public static final synthetic access$seatVentIconRes(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;ZI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentIconRes(ZI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$seatVentPosition(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPosition()Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->innerRecycleEnabled:Z

    return-void
.end method

.method public static final synthetic access$setPopupActive$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->isPopupActive:Z

    return-void
.end method

.method public static final synthetic access$shouldIgnoreS05AirRecycleState(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;ZLjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->shouldIgnoreS05AirRecycleState(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->showSeatVentPopup(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$toggleAirRecycleMode(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->toggleAirRecycleMode()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toggleFrontDefrost(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->toggleFrontDefrost()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toggleRearDefrost(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->toggleRearDefrost()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$triggerPopupAnchorAnimation(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->triggerPopupAnchorAnimation()V

    return-void
.end method

.method private final native applySeatVentLevel(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)Z
.end method

.method private final native applySeatVentState(Ljava/lang/String;)Z
.end method

.method private final native applyVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z
.end method

.method public static synthetic attachToViews$default(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZILjava/lang/Object;)V
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

    invoke-virtual/range {v2 .. v10}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZZ)V

    return-void
.end method

.method private final native clearInteractions()V
.end method

.method private final native clearPendingS05AirRecycleTargetIfMatched(Z)V
.end method

.method private final native clearSeatVentPreview(Z)V
.end method

.method private final native currentCommittedSeatVentLevel()I
.end method

.method private final native currentSeatVentLevel()I
.end method

.method private final native cycleSeatVentilation(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Z
.end method

.method private final native dismissSeatVentPopup(Z)V
.end method

.method private final native ensureSeatVentPopup()V
.end method

.method private final native handleClick()V
.end method

.method private final native iconRes()I
.end method

.method private final native initSeatVentThresholds(Landroid/content/Context;)V
.end method

.method private final native initialDefrostEnabled()Z
.end method

.method private final native initialInnerRecycleEnabled()Z
.end method

.method private final native initialRearDefrostEnabled()Z
.end method

.method private final native initialSeatVentRawValue()Ljava/lang/String;
.end method

.method private final native isActiveStyle()Z
.end method

.method private final native isSeatVentType()Z
.end method

.method private final native loadSeatVentDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method private final native matchesTopic(Ljava/lang/String;)Z
.end method

.method private final native nextSeatVentLevel()I
.end method

.method private final native parseBooleanState(Ljava/lang/String;)Z
.end method

.method private final native parseInnerRecycleEnabled(Ljava/lang/String;)Z
.end method

.method private final native persistOptimisticState()V
.end method

.method private final native previewSeatVentLevel(I)V
.end method

.method private final native render()V
.end method

.method private final native scheduleS05AirRecycleStateSync()V
.end method

.method private final native seatVentIconRes(ZI)I
.end method

.method public static synthetic seatVentIconRes$default(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;ZIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->currentSeatVentLevel()I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentIconRes(ZI)I

    move-result p0

    return p0
.end method

.method private final native seatVentLevelValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native seatVentPosition()Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.end method

.method private final native setupInteractions()V
.end method

.method private static final native setupInteractions$lambda$0(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;)V
.end method

.method private final native setupSeatVentTouchListener(Landroid/view/View;)V
.end method

.method private static final setupSeatVentTouchListener$lambda$1(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->cancelInteraction()V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    :cond_2
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_3
    iget-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->confirmAndScheduleClose()V

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentPopup:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    :cond_5
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->seatVentSwipeStartX:F

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method private final native shouldIgnoreS05AirRecycleState(ZLjava/lang/String;)Z
.end method

.method private final native showSeatVentPopup(Landroid/view/View;Landroid/view/View;I)V
.end method

.method private static final native syncS05AirRecycleRunnable$lambda$11(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
.end method

.method private final native syncS05AirRecycleState()V
.end method

.method private final native toggleAirRecycleMode()Z
.end method

.method private final native toggleFrontDefrost()Z
.end method

.method private final native toggleRearDefrost()Z
.end method

.method private final native triggerPopupAnchorAnimation()V
.end method

.method private final native updateSeatVentState(I)V
.end method

.method private final native useSeatVentIntrinsicColors()Z
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

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->iconView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->popupVerticalAnchor:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->interactive:Z

    iput-boolean p7, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->observeVehicleState:Z

    iput-boolean p8, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->touchFeedbackEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->initSeatVentThresholds(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->syncS05AirRecycleState()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->setupInteractions()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->render()V

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
