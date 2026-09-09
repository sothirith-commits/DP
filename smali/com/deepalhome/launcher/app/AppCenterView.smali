.class public final Lcom/deepalhome/launcher/app/AppCenterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/app/AppCenterView$Companion;

.field private static final PARKED_ACCESS_RUNTIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMPERATURE_RUNTIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/deepalhome/launcher/navigation/model/GridItemType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final airConditionStateChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

.field private final appsChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

.field private blurFreezeRunnable:Ljava/lang/Runnable;

.field private final carInfoChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final carStatusChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

.field private isEditMode:Z

.field private isShortcutEditMode:Z

.field private final leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final musicChangedListener:Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;

.field private navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

.field private final navBarGridConfigListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final pageChangeCallback:Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;

.field private pageSwitchAnimator:Landroid/animation/ValueAnimator;

.field private pendingTabSelectionPosition:Ljava/lang/Integer;

.field private final statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

.field private tabIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private final touchPoint:Landroid/graphics/Point;

.field private final uiModeChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final vehiclePropertyChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4vgzsajDRSPH7WIAgsJAHgv9P8o(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->enterEditModeAndStartFunctionDrag$lambda$13(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FktY-0PHO1MU0FXFQ1o4yKsO5pk(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$5(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K-vx13F3vUg3sP7o-eo_XW45lgo(Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->buildFunctionListPage$lambda$18$lambda$17$lambda$16(Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ObqFPZbULFfPj5QKNzrwAvuR2ks(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$0(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QluUSA9cO6WaAPjUh35ysmYDFUo(IIFFFFLandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/deepalhome/launcher/app/AppCenterView;->updateActiveIndicator$lambda$12$lambda$11(IIFFFFLandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLg2T-47BlIrRVrNjzKp2E_dkok(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateActiveIndicator$lambda$10(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcExbWvq0K55OQCPauODUJWc3u8(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$4(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tu8y-gu3RgMOcS3bD8iIdOxKGBM(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$7(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWByRli08fqTq4QVWfzl8fnjO5E(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$6(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XkFETNDMl2JDTjkfWD9kQcvr34s(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$2(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHdmFN4emXKdDBA_ysS-KQ73EvM(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$1(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cTRxsWHgSmQh8luTxNwjJJBXu9A(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/app/AppCenterView;->switchToPage$lambda$9$lambda$8(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcI39ejbpbz2AP6iNgmEiNqG0cQ(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/deepalhome/launcher/app/AppCenterView;->buildFunctionListPage$lambda$18$lambda$17(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEOPv6O2i7fJBonsl9tz1jRGjhk(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->setBlurRootView$lambda$24(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qiAanQfRj3cT7b1_xBC0sa4ETn4(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->_init_$lambda$3(Lcom/deepalhome/launcher/app/AppCenterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYtL0utA_Zn4_u0EflLbD--aPyo(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->buildAppListPage$lambda$15$lambda$14(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->Companion:Lcom/deepalhome/launcher/app/AppCenterView$Companion;

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v5, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    filled-new-array/range {v2 .. v7}, [Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->TEMPERATURE_RUNTIME_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FUEL_CAP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->PARKED_ACCESS_RUNTIME_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    move-object/from16 v8, p0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v0, "context"

    move-object/from16 v12, p1

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v13, Lcom/deepalhome/launcher/app/AppCenterAdapter;

    invoke-direct {v13}, Lcom/deepalhome/launcher/app/AppCenterAdapter;-><init>()V

    iput-object v13, v8, Lcom/deepalhome/launcher/app/AppCenterView;->appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    new-instance v14, Lcom/deepalhome/launcher/app/AppCenterAdapter;

    invoke-direct {v14}, Lcom/deepalhome/launcher/app/AppCenterAdapter;-><init>()V

    iput-object v14, v8, Lcom/deepalhome/launcher/app/AppCenterView;->systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    new-instance v15, Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-direct {v15}, Lcom/deepalhome/launcher/app/FunctionListAdapter;-><init>()V

    iput-object v15, v8, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->touchPoint:Landroid/graphics/Point;

    new-instance v7, Lcom/deepalhome/launcher/app/AppCenterView$appsChangedListener$1;

    invoke-direct {v7, v8}, Lcom/deepalhome/launcher/app/AppCenterView$appsChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v7, v8, Lcom/deepalhome/launcher/app/AppCenterView;->appsChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$statusBarVisibilityListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$statusBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    new-instance v6, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v3, Lcom/deepalhome/launcher/app/AppCenterView;

    const-string v4, "syncFromDelegate"

    const/4 v1, 0x1

    const-string v5, "syncFromDelegate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V"

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v6

    move-object/from16 v2, p0

    move-object v9, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v9, v8, Lcom/deepalhome/launcher/app/AppCenterView;->navBarGridConfigListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$updateBadgeChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$vehiclePropertyChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$vehiclePropertyChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->vehiclePropertyChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$airConditionStateChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$airConditionStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->airConditionStateChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$carInfoChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$carInfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$carStatusChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$carStatusChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->carStatusChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->uiModeChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->musicChangedListener:Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v0, v8, Lcom/deepalhome/launcher/app/AppCenterView;->pageChangeCallback:Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->$r8$clinit:I

    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v2, 0x7f0e0029

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v11, v3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    const-string v2, "inflate(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v8, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    invoke-direct {v8, v13}, Lcom/deepalhome/launcher/app/AppCenterView;->buildAppListPage(Lcom/deepalhome/launcher/app/AppCenterAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v8, v14}, Lcom/deepalhome/launcher/app/AppCenterView;->buildAppListPage(Lcom/deepalhome/launcher/app/AppCenterAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/AppCenterView;->buildFunctionListPage()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    new-instance v6, Lcom/deepalhome/launcher/app/AppCenterPagerAdapter;

    filled-new-array {v2, v4, v5}, [Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/deepalhome/launcher/app/AppCenterPagerAdapter;-><init>(Ljava/util/List;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v6}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v10}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appsTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    const/4 v2, 0x4

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->systemAppsTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    const/4 v2, 0x5

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->functionsTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->tabHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/AppCenterView;->applyThemeColors()V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$5;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    invoke-virtual {v15, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$6;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$6;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    invoke-virtual {v15, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->setOnEnterEditModeRequest(Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$7;

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/app/AppCenterView$7;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    invoke-virtual {v15, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->setOnEnterEditModeAndStartDragRequest(Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    const/4 v2, 0x6

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->editDoneBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8, v11}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->editCancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8, v10}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->shortcutEditBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;

    const/4 v2, 0x3

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/AppCenterView;->loadApps()V

    invoke-static {v8, v3, v11, v3}, Lcom/deepalhome/launcher/app/AppCenterView;->syncFromDelegate$default(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateStatusBarInset()V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderActions()V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/util/AppUtil;->addOnAppsChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->switchToPage(I)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->switchToPage(I)V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->switchToPage(I)V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabIndicatorWidths()V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    return-void
.end method

.method private static final _init_$lambda$4(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    return-void
.end method

.method private static final _init_$lambda$5(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    return-void
.end method

.method private static final _init_$lambda$6(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->usesBottomNavigationStyle()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->isAppPage(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->setShortcutEditMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final _init_$lambda$7(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->dismissSelf(Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$applyThemeColors(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->applyThemeColors()V

    return-void
.end method

.method public static final synthetic access$dismissSelf(Lcom/deepalhome/launcher/app/AppCenterView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->dismissSelf(Z)V

    return-void
.end method

.method public static final synthetic access$enterEditModeAndStartFunctionDrag(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->enterEditModeAndStartFunctionDrag(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$finishPageSwitch(Lcom/deepalhome/launcher/app/AppCenterView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->finishPageSwitch(IZ)V

    return-void
.end method

.method public static final synthetic access$getAppAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterAdapter;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    return-object p0
.end method

.method public static final synthetic access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getNavBarEditorDelegate$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    return-object p0
.end method

.method public static final synthetic access$getPARKED_ACCESS_RUNTIME_TYPES$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->PARKED_ACCESS_RUNTIME_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getPendingTabSelectionPosition$p(Lcom/deepalhome/launcher/app/AppCenterView;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pendingTabSelectionPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getSystemAppAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterAdapter;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    return-object p0
.end method

.method public static final synthetic access$getTEMPERATURE_RUNTIME_TYPES$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->TEMPERATURE_RUNTIME_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getTouchPoint$p(Lcom/deepalhome/launcher/app/AppCenterView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->touchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public static final synthetic access$isShortcutEditMode$p(Lcom/deepalhome/launcher/app/AppCenterView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    return p0
.end method

.method public static final synthetic access$refreshVisibleMusicPreview(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->refreshVisibleMusicPreview()V

    return-void
.end method

.method public static final synthetic access$setPendingTabSelectionPosition$p(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pendingTabSelectionPosition:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setTabIndicatorAnimator$p(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$submitAppLists(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->submitAppLists(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$syncFromDelegate(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->syncFromDelegate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method public static final synthetic access$toggleLeftShortcut(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/app/App;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->toggleLeftShortcut(Lcom/deepalhome/launcher/app/App;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateHeaderActions(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderActions()V

    return-void
.end method

.method public static final synthetic access$updateStatusBarInset(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateStatusBarInset()V

    return-void
.end method

.method public static final synthetic access$updateTabSelection(Lcom/deepalhome/launcher/app/AppCenterView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    return-void
.end method

.method private final applyThemeColors()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->shortcutEditBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->editCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->editDoneBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    return-void
.end method

.method private final buildAppListPage(Lcom/deepalhome/launcher/app/AppCenterAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    new-instance v1, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;

    invoke-direct {v1, p1, p0, v0}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$2;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Lcom/deepalhome/launcher/app/AppCenterView;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p1, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onIconClickListener:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;

    invoke-direct {v1, p1, p0}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Lcom/deepalhome/launcher/app/AppCenterView;)V

    iput-object v1, p1, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onIconLongClickListener:Lkotlin/jvm/functions/Function2;

    new-instance p1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object v0
.end method

.method private static final buildAppListPage$lambda$15$lambda$14(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->touchPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final buildFunctionListPage()Landroidx/recyclerview/widget/RecyclerView;
    .locals 6

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    sget-object v3, Lcom/deepalhome/launcher/app/FunctionListAdapter;->Companion:Lcom/deepalhome/launcher/app/FunctionListAdapter$Companion;

    iget-object v4, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "adapter"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->updatePanelContentWidth(I)V

    new-instance v1, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object v0
.end method

.method private static final buildFunctionListPage$lambda$18$lambda$17(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p1, p0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final buildFunctionListPage$lambda$18$lambda$17$lambda$16(Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 2

    const-string v0, "$recyclerView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "this$0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->updatePanelContentWidth(I)V

    :cond_1
    return-void
.end method

.method private final dismissSelf(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic dismissSelf$default(Lcom/deepalhome/launcher/app/AppCenterView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->dismissSelf(Z)V

    return-void
.end method

.method private final native enterEditModeAndStartFunctionDrag(Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z
.end method

.method private static final enterEditModeAndStartFunctionDrag$lambda$13(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->EDIT:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->updatePanelMode(Lcom/deepalhome/launcher/app/FunctionPanelMode;)V

    :cond_0
    return-void
.end method

.method public static synthetic exitEditMode$default(Lcom/deepalhome/launcher/app/AppCenterView;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    move-result p0

    return p0
.end method

.method private final finishPageSwitch(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->endFakeDrag()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pageSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private final isAppPage(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private final loadApps()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedApps()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->submitAppLists(Ljava/util/List;)V

    :cond_0
    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$loadApps$2;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/app/AppCenterView$loadApps$2;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public static synthetic refreshFunctionEnabledState$default(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->refreshFunctionEnabledState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method public static synthetic refreshShortcutSelectedState$default(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->resolveSelectedPackages()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->refreshShortcutSelectedState(Ljava/util/Set;)V

    return-void
.end method

.method private final refreshVisibleMusicPreview()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshVisibleMusicState()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveSelectedPackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->currentShortcutPackages()Ljava/util/Set;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_6

    goto :goto_1

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_3

    :cond_3
    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    goto :goto_3

    :cond_5
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :cond_6
    :goto_3
    return-object p0
.end method

.method private static final setBlurRootView$lambda$24(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final setShortcutEditMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderActions()V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->addOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->removeOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/app/AppCenterAdapter;->setEditMode(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/app/AppCenterAdapter;->setEditMode(Z)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->syncFromDelegate$default(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderActions()V

    return-void
.end method

.method private final submitAppLists(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/app/App;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->isSystem()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final switchToPage(I)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-eq v1, p1, :cond_4

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pageSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-ne v2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pendingTabSelectionPosition:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v3, p1, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->beginFakeDrag()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    int-to-float v2, v2

    int-to-float v5, v3

    mul-float/2addr v2, v5

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v2, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-le v3, v0, :cond_2

    const v0, 0x7f0c0013

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0011

    :goto_0
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v4, p1, v1}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;II)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView$switchToPage$1$2;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pageSwitchAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static final switchToPage$lambda$9$lambda$8(Lcom/deepalhome/launcher/app/AppCenterView;Lkotlin/jvm/internal/Ref$FloatRef;IILandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$lastValue"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "animator"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget v0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v0, p4, v0

    iput p4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-le p2, p3, :cond_1

    neg-float v0, v0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->fakeDragBy(F)Z

    return-void
.end method

.method private final native syncFromDelegate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
.end method

.method public static synthetic syncFromDelegate$default(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->currentGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->syncFromDelegate(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method private final toggleLeftShortcut(Lcom/deepalhome/launcher/app/App;)Z
    .locals 4

    sget-object p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/deepalhome/launcher/app/AppCenterView$toggleLeftShortcut$1;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/app/AppCenterView$toggleLeftShortcut$1;-><init>(Lcom/deepalhome/launcher/app/App;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->save(Ljava/util/List;Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)V

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v2, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v3, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getSelectableMaxCount(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v3}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->save(Ljava/util/List;Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)V

    return v1
.end method

.method private final updateActiveIndicator(IZ)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->functionsTabIndicator:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->systemAppsTabIndicator:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appsTabIndicator:Landroid/view/View;

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->headerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p1, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->headerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v1, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v10, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->activeTabIndicator:Landroid/view/View;

    const-string v2, "activeTabIndicator"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setY(F)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    if-nez p2, :cond_6

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setX(F)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setY(F)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result p1

    if-ge p1, v1, :cond_8

    move v4, v1

    goto :goto_2

    :cond_8
    move v4, p1

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0011

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda2;-><init>(IIFFFFLandroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroidx/transition/Transition$3;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->headerContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0, p0}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final updateActiveIndicator$lambda$10(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateActiveIndicator(IZ)V

    return-void
.end method

.method private static final updateActiveIndicator$lambda$12$lambda$11(IIFFFFLandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$indicator"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "animator"

    invoke-static {v0, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p7

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p7

    add-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    invoke-static {p3, p2, p7, p2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    invoke-static {p5, p4, p7, p4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p2

    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq p4, p0, :cond_1

    iput p0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p6, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p6, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p6, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private final updateHeaderActions()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->editActionContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->usesBottomNavigationStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->isAppPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->shortcutEditBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->shortcutEditBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz p0, :cond_3

    const p0, 0x7f13019c

    goto :goto_2

    :cond_3
    const p0, 0x7f1301b0

    :goto_2
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateHeaderTab(Landroid/widget/TextView;ZII)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final updateStatusBarInset()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v0

    const v1, 0x7f070097

    const-string v2, "getContext(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appCenterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appCenterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v2, v3, v0, p0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final updateTabIndicatorWidth(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final updateTabIndicatorWidths()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appsTabLabel:Landroid/widget/TextView;

    const-string v1, "appsTabLabel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appsTabIndicator:Landroid/view/View;

    const-string v2, "appsTabIndicator"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabIndicatorWidth(Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->systemAppsTabLabel:Landroid/widget/TextView;

    const-string v1, "systemAppsTabLabel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->systemAppsTabIndicator:Landroid/view/View;

    const-string v2, "systemAppsTabIndicator"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabIndicatorWidth(Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->functionsTabLabel:Landroid/widget/TextView;

    const-string v1, "functionsTabLabel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->functionsTabIndicator:Landroid/view/View;

    const-string v2, "functionsTabIndicator"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabIndicatorWidth(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private final updateTabSelection(IZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->appsTabLabel:Landroid/widget/TextView;

    const-string v3, "appsTabLabel"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderTab(Landroid/widget/TextView;ZII)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->systemAppsTabLabel:Landroid/widget/TextView;

    const-string v5, "systemAppsTabLabel"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne p1, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderTab(Landroid/widget/TextView;ZII)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->functionsTabLabel:Landroid/widget/TextView;

    const-string v5, "functionsTabLabel"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    move v3, v4

    :cond_2
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderTab(Landroid/widget/TextView;ZII)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->updateActiveIndicator(IZ)V

    return-void
.end method

.method public static synthetic updateTabSelection$default(Lcom/deepalhome/launcher/app/AppCenterView;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    return-void
.end method

.method private final usesBottomNavigationStyle()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getSelectableStyle()Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->BOTTOM:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final native enterEditMode()Z
.end method

.method public final native exitEditMode(Z)Z
.end method

.method public final getOnDismissRequest()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final isEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarGridConfigListener:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->addOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->vehiclePropertyChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->airConditionStateChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->carStatusChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarStatusChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->uiModeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->musicChangedListener:Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->addOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateStatusBarInset()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabIndicatorWidths()V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->updateTabSelection(IZ)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->updateHeaderActions()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pageSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->endFakeDrag()Z

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pageSwitchAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->tabIndicatorAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->pendingTabSelectionPosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarGridConfigListener:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->removeOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->vehiclePropertyChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->airConditionStateChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->carStatusChangedListener:Lkotlin/jvm/functions/Function1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarStatusChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->appsChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->appChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->LEFT:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->leftShortcutChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->removeOnAppChangedListener(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->uiModeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->musicChangedListener:Lcom/deepalhome/launcher/app/AppCenterView$musicChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->updateBadgeChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final refreshFunctionEnabledState(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->functionAdapter:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->updateConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method

.method public final refreshShortcutSelectedState(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedPackages"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isShortcutEditMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->resolveSelectedPackages()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->appAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "packages"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->selectedPackages:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->systemAppAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->selectedPackages:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06033e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v3, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v3}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v2, p1, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v3, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v0, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-virtual {p1, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurController;

    :goto_0
    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    new-instance p1, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda8;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->blurFreezeRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->binding:Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AppCenterViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setNavBarEditorDelegate(Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarGridConfigListener:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->removeOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarEditorDelegate:Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView;->navBarGridConfigListener:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;->addOnConfigChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->syncFromDelegate$default(Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;ILjava/lang/Object;)V

    return-void
.end method

.method public final setOnDismissRequest(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    return-void
.end method
