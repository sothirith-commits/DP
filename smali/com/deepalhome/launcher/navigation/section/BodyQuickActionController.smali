.class public final Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$Companion;

.field private static final TOPIC_MIRROR_FOLD:Ljava/lang/String; = "VehicleWindow/RearViewMirrorFold"

.field private static final TOPIC_REAR_SEAT_BELT_ALARM:Ljava/lang/String; = "VehicleSeat/SeatBeltCheck/Rear"

.field private static final TOPIC_TRUNK_DOOR_DEGREE:Ljava/lang/String; = "VehicleDoor/TrunkDoorDegree"


# instance fields
.field private final carInfoListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final carStatusListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private currentDrivingGear:Ljava/lang/Integer;

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

.field private mirrorFolded:Z

.field private observeVehicleState:Z

.field private pendingTrunkTarget:Ljava/lang/Boolean;

.field private preferActiveContentColor:Z

.field private rearSeatBeltAlarmEnabled:Z

.field private rootView:Landroid/view/View;

.field private final s05GearListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field private touchFeedbackEnabled:Z

.field private trunkOpened:Z

.field private final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field private final vehiclePropertyListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MdEoKk5G2nYN8lF1IMHmP0_RUDg(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->updateInteractions$lambda$0(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->touchFeedbackEnabled:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->preferActiveContentColor:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->initialMirrorFolded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->mirrorFolded:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->initialTrunkOpened()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->trunkOpened:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->initialRearSeatBeltAlarmEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->rearSeatBeltAlarmEnabled:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->initialDrivingGear()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->currentDrivingGear:Ljava/lang/Integer;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$vehiclePropertyListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->vehiclePropertyListener:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$carInfoListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$carInfoListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->carInfoListener:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$carStatusListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$carStatusListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->carStatusListener:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$s05GearListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->s05GearListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$applyVehicleProperty(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->applyVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDismissOtherTransientUi$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getMirrorFolded$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->mirrorFolded:Z

    return p0
.end method

.method public static final synthetic access$getRearSeatBeltAlarmEnabled$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->rearSeatBeltAlarmEnabled:Z

    return p0
.end method

.method public static final synthetic access$getTrunkOpened$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->trunkOpened:Z

    return p0
.end method

.method public static final synthetic access$getType$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object p0
.end method

.method public static final synthetic access$isS05Branch(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->isS05Branch()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$matchesTopic(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->matchesTopic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$normalizeRawValue(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->normalizeRawValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openFuelCap(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->openFuelCap()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$persistVehicleProperty(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->persistVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    return-void
.end method

.method public static final synthetic access$render(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->render()V

    return-void
.end method

.method public static final synthetic access$setDoorHandleExpanded(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->setDoorHandleExpanded(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$supportsParkedAccessRestriction(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->supportsParkedAccessRestriction()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$syncDrivingStateFromCache(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->syncDrivingStateFromCache()V

    return-void
.end method

.method public static final synthetic access$toggleMirrorFold(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->toggleMirrorFold()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toggleRearSeatBeltAlarm(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->toggleRearSeatBeltAlarm()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toggleTrunk(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->toggleTrunk()Z

    move-result p0

    return p0
.end method

.method private final native applyVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)Z
.end method

.method public static synthetic attachToViews$default(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Landroid/view/View;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function0;ZZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1

    move v5, p4

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_2

    move v6, p4

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->attachToViews(Landroid/view/View;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function0;ZZZ)V

    return-void
.end method

.method private final native canExecuteParkedAccessAction()Z
.end method

.method private final native clearInteractions()V
.end method

.method private final native displayedTrunkOpened()Z
.end method

.method private final native handleBlockedParkedAccessAction()Z
.end method

.method private final native initialDrivingGear()Ljava/lang/Integer;
.end method

.method private final native initialMirrorFolded()Z
.end method

.method private final native initialRearSeatBeltAlarmEnabled()Z
.end method

.method private final native initialTrunkOpened()Z
.end method

.method private final native isS05Branch()Z
.end method

.method private final native matchesTopic(Ljava/lang/String;)Z
.end method

.method private final native normalizeRawValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native openFuelCap()Z
.end method

.method private final native parseMirrorFolded(Ljava/lang/String;)Z
.end method

.method private final native parseRearSeatBeltAlarmEnabled(Ljava/lang/String;)Z
.end method

.method private final native parseTrunkOpened(Ljava/lang/String;)Z
.end method

.method private final native persistOptimisticState()V
.end method

.method private final native persistVehicleProperty(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V
.end method

.method private final native render()V
.end method

.method private final native resolveCurrentGearForParkedAccess()Ljava/lang/Integer;
.end method

.method private final native setDoorHandleExpanded(Z)Z
.end method

.method private final native shouldRenderParkedAccessDisabled()Z
.end method

.method private final native supportsParkedAccessRestriction()Z
.end method

.method private final native supportsVehicleObservation()Z
.end method

.method private final native syncDrivingStateFromCache()V
.end method

.method private final native toggleMirrorFold()Z
.end method

.method private final native toggleRearSeatBeltAlarm()Z
.end method

.method private final native toggleTrunk()Z
.end method

.method private final native updateInteractions(Z)V
.end method

.method private static final native updateInteractions$lambda$0(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Landroid/view/View;)V
.end method


# virtual methods
.method public final native attachToViews(Landroid/view/View;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function0;ZZZ)V
.end method

.method public final native dismissTransientUi(Z)V
.end method

.method public final native isActiveForUi()Z
.end method

.method public final native isPrimaryActionEnabledForUi()Z
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
