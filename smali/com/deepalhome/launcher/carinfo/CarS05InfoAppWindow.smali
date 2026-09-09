.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

.field public static final srSettingChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;


# instance fields
.field public carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

.field public final currentTripColumns:Ljava/util/List;

.field public final currentTripViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public isMenuExpanded:Z

.field public isSrRuntimeAvailable:Z

.field public isSrRuntimeChecked:Z

.field public isViewVisibleToUser:Z

.field public lastSrGearMode:Ljava/lang/String;

.field public final menuAutoCollapseHandler:Landroid/os/Handler;

.field public menuAutoCollapseRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public final pendingVisibleUiFields:Ljava/util/LinkedHashSet;

.field public final s05InfoListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

.field public final sinceChargedColumns:Ljava/util/List;

.field public final sinceChargedViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final srSettingChangedListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;


# direct methods
.method public static synthetic $r8$lambda$tEGX1jxt0v28vMkf4syR0nDO-7o(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->setMenuExpanded$lambda$9(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->s05InfoListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->pendingVisibleUiFields:Ljava/util/LinkedHashSet;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_avg_elec"

    const v8, 0x7f130277

    invoke-direct {v2, v1, v8}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_avg_fuel"

    const v9, 0x7f130278

    invoke-direct {v3, v1, v9}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_distance"

    const v10, 0x7f13027e

    invoke-direct {v4, v1, v10}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_time"

    const v11, 0x7f130281

    invoke-direct {v5, v1, v11}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_fuel_distance"

    const v12, 0x7f130406

    invoke-direct {v6, v1, v12}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "this_fuel_time"

    const v13, 0x7f130407

    invoke-direct {v7, v1, v13}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v2 .. v7}, [Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->currentTripColumns:Ljava/util/List;

    new-instance v14, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "sup_avg_elec"

    invoke-direct {v14, v1, v8}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v1, "sup_avg_fuel"

    invoke-direct {v15, v1, v9}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v2, "sup_time"

    invoke-direct {v1, v2, v11}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v3, "sup_distance"

    invoke-direct {v2, v3, v10}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v4, "sup_fuel_distance"

    invoke-direct {v3, v4, v12}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v5, "sup_fuel_time"

    invoke-direct {v4, v5, v13}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v6, "sup_driving_elec"

    const v7, 0x7f130280

    invoke-direct {v5, v6, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    const-string v7, "sup_attachment_elec"

    const v8, 0x7f130276

    invoke-direct {v6, v7, v8}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    filled-new-array/range {v14 .. v21}, [Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->sinceChargedColumns:Ljava/util/List;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$currentTripViewMap$2;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$currentTripViewMap$2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->currentTripViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->sinceChargedViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    const-string p2, "--"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "--.-"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, " "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private final getCurrentTripViewMap()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->currentTripViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private final getSinceChargedViewMap()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->sinceChargedViewMap$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static reorderColumnViews(Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final setMenuExpanded$lambda$9(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "$container"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static updateCarSrState$default(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    return-void
.end method

.method public static updateContainerTextColor(Landroid/view/View;I)V
    .locals 4

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final applyColumnLayout()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->CURRENT_TRIP:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->readColumnKeys(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->SINCE_CHARGED:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->readColumnKeys(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripContainer:Landroid/widget/LinearLayout;

    const-string v3, "currentTripContainer"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getCurrentTripViewMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->reorderColumnViews(Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTripContainer:Landroid/widget/LinearLayout;

    const-string v2, "sinceChargedTripContainer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getSinceChargedViewMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->reorderColumnViews(Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final applySinceChargedVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedSectionHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTripContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final bindChangedS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;Ljava/util/Set;)V
    .locals 5

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TOTAL_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SOC_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->OIL_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TOTAL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    const-string v3, "km"

    const-string v4, "0.0"

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->GEAR_MODE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearMode:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "--"

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->INSIDE_TEMPERATURE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperature:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatInsideTemperatureText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DRIVE_STYLE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1300bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDriveStyleColor(Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureFrontLeftTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    if-nez v0, :cond_10

    move-object v0, v1

    :cond_10
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureFrontRightTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    if-nez v0, :cond_12

    move-object v0, v1

    :cond_12
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureRearLeftTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    move-object v1, v0

    :goto_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureRearRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_FRONT_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_FRONT_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_REAR_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_REAR_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x4

    if-ge v1, v2, :cond_17

    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDoorOpenIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_TRUNK:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateTrunkOpenIcon(Ljava/lang/String;)V

    :cond_18
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_AVG_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "this_avg_elec"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_19
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_AVG_FUEL:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "this_avg_fuel"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1a
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "this_distance"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1b
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "this_time"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1c
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_FUEL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "this_fuel_distance"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1d
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_FUEL_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "this_fuel_time"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1e
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_AVG_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "sup_avg_elec"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1f
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_AVG_FUEL:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "sup_avg_fuel"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_20
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "sup_time"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_21
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "sup_distance"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_22
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_FUEL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "sup_fuel_distance"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_23
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_FUEL_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "sup_fuel_time"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_24
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_DRIVING_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "sup_driving_elec"

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_25
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_ATTACHMENT_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    const-string p2, "sup_attachment_elec"

    invoke-virtual {p0, p2, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_26
    return-void
.end method

.method public final bindCurrentTripColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V
    .locals 5

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getCurrentTripViewMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "km"

    const-string v2, "0"

    const-string v3, "min"

    const-string v4, "0.0"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "this_avg_fuel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgFuel:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    const-string p2, "L/100km"

    invoke-static {p1, p2, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "this_avg_elec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgElec:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    const-string p2, "kWh/100km"

    invoke-static {p1, p2, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "this_fuel_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelTime:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "this_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisDistance:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "this_fuel_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelDistance:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "this_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisTime:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2166d032 -> :sswitch_5
        -0x4fea383 -> :sswitch_4
        0x18ec0076 -> :sswitch_3
        0x1953a755 -> :sswitch_2
        0x7b593153 -> :sswitch_1
        0x7b59c784 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bindS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V
    .locals 13

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    const-string v2, "0"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureFrontLeftTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureFrontRightTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureRearLeftTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureRearRightTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgElec:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    const-string v3, "kWh/100km"

    const-string v4, "0.0"

    invoke-static {v1, v3, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgFuel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    const-string v5, "L/100km"

    invoke-static {v1, v5, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisDistance:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    const-string v6, "km"

    invoke-static {v1, v6, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisTime:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    const-string v7, "min"

    invoke-static {v1, v7, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelDistance:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelTime:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    invoke-static {v1, v7, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgElec:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgFuel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupTime:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    invoke-static {v1, v7, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDistance:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelDistance:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelTime:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    invoke-static {v1, v7, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDrivingElec:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    const-string v2, "kWh"

    invoke-static {v1, v2, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAttachmentElec:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearMode:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_b

    :cond_b
    const-string v1, "--"

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperature:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatInsideTemperatureText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1300bd

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeUnitTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgElecLabel:Landroid/widget/TextView;

    const v1, 0x7f130277

    invoke-virtual {p0, v1, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgFuelLabel:Landroid/widget/TextView;

    const v4, 0x7f130278

    invoke-virtual {p0, v4, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisDistanceLabel:Landroid/widget/TextView;

    const v8, 0x7f13027e

    invoke-virtual {p0, v8, v6}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisTimeLabel:Landroid/widget/TextView;

    const v9, 0x7f130281

    invoke-virtual {p0, v9, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelDistanceLabel:Landroid/widget/TextView;

    const v10, 0x7f130406

    invoke-virtual {p0, v10, v6}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelTimeLabel:Landroid/widget/TextView;

    const v11, 0x7f130407

    invoke-virtual {p0, v11, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgElecLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgFuelLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupTimeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDistanceLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v8, v6}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelDistanceLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v10, v6}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelTimeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v11, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDrivingElecLabel:Landroid/widget/TextView;

    const v1, 0x7f130280

    invoke-virtual {p0, v1, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAttachmentElecLabel:Landroid/widget/TextView;

    const v1, 0x7f130276

    invoke-virtual {p0, v1, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getLabelText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTvLabel:Landroid/widget/TextView;

    const v1, 0x7f13028b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgElec:Landroid/widget/TextView;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisAvgFuel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvThisFuelTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgElec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgFuel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDrivingElec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAttachmentElec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05ShowSinceCharged()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->applySinceChargedVisibility(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDriveStyleColor(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    iget-object v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDoorOpenIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateTrunkOpenIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final bindSinceChargedColumnIfVisible(Ljava/lang/String;Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V
    .locals 6

    invoke-direct {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getSinceChargedViewMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "0"

    const-string v2, "min"

    const-string v3, "kWh"

    const-string v4, "km"

    const-string v5, "0.0"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "sup_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDistance:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "sup_attachment_elec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAttachmentElec:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "sup_fuel_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelDistance:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "sup_avg_fuel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgFuel:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    const-string p2, "L/100km"

    invoke-static {p1, p2, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "sup_avg_elec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupAvgElec:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    const-string p2, "kWh/100km"

    invoke-static {p1, p2, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "sup_fuel_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupFuelTime:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "sup_driving_elec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupDrivingElec:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "sup_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvSupTime:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->formatValueText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x640ff1e2 -> :sswitch_7
        -0x622d18b2 -> :sswitch_6
        -0x61e4c4fb -> :sswitch_5
        -0x2587985d -> :sswitch_4
        -0x2587022c -> :sswitch_3
        -0x1a8867d3 -> :sswitch_2
        0x1184e130 -> :sswitch_1
        0x780b36c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final cancelMenuAutoCollapse()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    return-void
.end method

.method public final collapseMenuImmediate()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isMenuExpanded:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->cancelMenuAutoCollapse()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuActionContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuActionContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ensureSrRuntimeAvailable()Z
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isSrRuntimeChecked:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isSrRuntimeAvailable:Z

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isSrRuntimeChecked:Z

    sget-object v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->Companion:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "libHardwareBufferPatch.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isSrRuntimeAvailable:Z

    return v0
.end method

.method public final formatInsideTemperatureText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "getString(...)"

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130457

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130459

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getColumnItems(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->sinceChargedColumns:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->currentTripColumns:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public final getLabelText(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0037

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->s05InfoListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05DetailedInfoChangedListener(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState$default(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->cancelMenuAutoCollapse()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->s05InfoListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->pendingVisibleUiFields:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->carIv:Landroid/widget/ImageView;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getCarModelResId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    if-eqz v1, :cond_2

    iput-boolean v0, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->isNightMode:Z

    iget-object v0, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v0

    const-string v2, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    invoke-virtual {v0, v2}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->syncDayNightMode(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    const/16 v2, 0x8

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->hybridRemainRangeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v3, 0x7f130449

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    const v3, 0x7f130240

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05ShowValueUnit()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05ShowSinceCharged()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05EnableSr()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05ShowSinceCharged()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->applySinceChargedVisibility(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05ColumnConfigBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->collapseMenuImmediate()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->applyColumnLayout()V

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->s05InfoListener:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05DetailedInfoChangedListener(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->lastSrGearMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isViewVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->pendingVisibleUiFields:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindChangedS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;Ljava/util/Set;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState$default(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    return-void
.end method

.method public final readColumnKeys(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getColumnItems(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SinceChargedColumns()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05CurrentTripColumns()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    iget-object v2, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public final scheduleMenuAutoCollapse()V
    .locals 5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->cancelMenuAutoCollapse()V

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->menuAutoCollapseRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    return-void
.end method

.method public final setMenuExpanded(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuActionContainer:Landroid/widget/LinearLayout;

    const-string v1, "s05MenuActionContainer"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;-><init>(Lcom/deepalhome/launcher/window/BaseAppWindow;ZZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isMenuExpanded:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->scheduleMenuAutoCollapse()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->cancelMenuAutoCollapse()V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xb4

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleX(F)V

    :goto_1
    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x8c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;-><init>(Landroid/widget/LinearLayout;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->collapseMenuImmediate()V

    :goto_2
    return-void
.end method

.method public final showColumnOrderDialog(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->readColumnKeys(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p0 .. p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->getColumnItems(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;

    iget-object v3, v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnItem;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e00e8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v0, 0x7f0b0421

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b01b2

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0514

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const v3, 0x7f0b015e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageView;

    const v3, 0x7f0b02fa

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v4

    const v5, 0x7f06038b

    const v12, 0x7f06038c

    if-eqz v4, :cond_5

    move v4, v12

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v3

    if-eqz v3, :cond_6

    move v5, v12

    :cond_6
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130404

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v12, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v12, v6, v7, v1, v2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;Ljava/util/ArrayList;I)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v12}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    if-gez v3, :cond_7

    move v3, v2

    :cond_7
    mul-int/lit8 v3, v3, 0x34

    add-int/lit8 v3, v3, 0x2a

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v12}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$callback$1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v14, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;

    const/4 v5, 0x0

    move-object v0, v14

    move-object v1, v8

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;Landroid/widget/TextView;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;Landroid/widget/TextView;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v9, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130402

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1303fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;

    move-object/from16 v18, v0

    invoke-direct {v0, v12, v8, v6, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;Lkotlin/jvm/internal/Ref$IntRef;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v27, 0x7fec6

    invoke-static/range {v9 .. v27}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void
.end method

.method public final updateCarBodyVisibility(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->carSceneContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateCarSrState(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05EnableSr()Z

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SrShowOnHud()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->ensureSrRuntimeAvailable()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    const-string v0, "D"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isViewVisibleToUser:Z

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    const/4 v0, 0x0

    if-nez v5, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->destroy()V

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarBodyVisibility(Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->ensureSrRuntimeAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->carSrContainer:Landroid/widget/FrameLayout;

    const-string v5, "carSrContainer"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$initCarSrLayer$1;

    invoke-direct {v5, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$initCarSrLayer$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    invoke-direct {v1, v2, v3, v5}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$initCarSrLayer$1;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->attach()V

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v2

    iput-boolean v2, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->isNightMode:Z

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v2

    const-string v3, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    invoke-virtual {v2, v3}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iput-object v2, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    goto :goto_2

    :cond_7
    move-object v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->syncDayNightMode(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    :goto_3
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    const-string v2, "CarSRCardHost"

    if-eqz v1, :cond_8

    iput-boolean p1, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->shouldDisplaySr:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "setDisplayEnabled: enabled="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasFirstFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->hasFirstFrame:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->updateSrVisibility(Z)V

    :cond_8
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    if-eqz p0, :cond_b

    iget-boolean p1, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->isRenderResumed:Z

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iput-boolean v4, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->isRenderResumed:Z

    const-string p1, "resume"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->srControl:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$CarSRViewControl;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/tinnove/renderclient/ClientRenderControl;->resume()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p1, "resume: failed"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_5
    return-void
.end method

.method public final updateDoorOpenIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->doorFrontLeftOpenIv:Landroid/widget/ImageView;

    const-string v1, "Open"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->doorFrontRightOpenIv:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->doorRearLeftOpenIv:Landroid/widget/ImageView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->doorRearRightOpenIv:Landroid/widget/ImageView;

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final updateDriveStyleColor(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f060077

    goto :goto_1

    :sswitch_1
    const-string v0, "Sport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f060079

    goto :goto_1

    :sswitch_2
    const-string v0, "Comfort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f060076

    goto :goto_1

    :sswitch_3
    const-string v0, "Economy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f060078

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f06038c

    goto :goto_1

    :cond_5
    const p1, 0x7f06038b

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xfc85f -> :sswitch_3
        0x105030 -> :sswitch_2
        0x11bcd8 -> :sswitch_1
        0x1f31559 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateTrunkOpenIcon(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->doorTrunkOpenIv:Landroid/widget/ImageView;

    const-string v0, "Open"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->carIv:Landroid/widget/ImageView;

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getCarModelResId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->carSrCardHost:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean p1, v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->isNightMode:Z

    iget-object v2, v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v2

    const-string v3, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    invoke-virtual {v2, v3}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->syncDayNightMode(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    :cond_2
    const-string v0, "srTirePressureContainer"

    const-string v2, "sinceChargedTripContainer"

    const-string v3, "currentTripContainer"

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f06038c

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripDividerLeft:Landroid/view/View;

    const v5, 0x7f060075

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripDividerRight:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedDividerLeft:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedDividerRight:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuBtn:Landroid/widget/ImageView;

    const v5, 0x7f08008a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05ColumnConfigBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05ColumnConfigBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTripContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearMode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearModeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperature:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperatureLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTvLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f06038b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalResidualRangeValueUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalSocResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->totalOilResidualRangeUnitTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTitleTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripDividerLeft:Landroid/view/View;

    const v5, 0x7f060074

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripDividerRight:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedDividerLeft:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedDividerRight:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05MenuBtn:Landroid/widget/ImageView;

    const v5, 0x7f080089

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05ColumnConfigBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05ColumnConfigBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05UnitSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SinceChargedSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->s05SrSwitchLabelTv:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->currentTripContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->sinceChargedTripContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->srTirePressureContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateContainerTextColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearMode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvGearModeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperature:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvInsideTemperatureLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontLeftUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->speedTvLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureFrontRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearLeftUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tirePressureRearRightUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    iget-object v4, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDoorOpenIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateTrunkOpenIcon(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->tvDriveStyle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateDriveStyleColor(Ljava/lang/String;)V

    return-void
.end method
