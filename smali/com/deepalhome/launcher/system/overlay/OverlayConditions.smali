.class public final Lcom/deepalhome/launcher/system/overlay/OverlayConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIALOG_SERVICE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

.field public static final HVAC_PANEL:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

.field public static final INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

.field public static final LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

.field public static final MAP_OPTION_LIST:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    invoke-direct {v0}, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    const-string v1, "#onEnterStart"

    const-string v2, "HvacPanelManager"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "#onOutEnd"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "HvacPanel"

    invoke-direct {v0, v1, v3, v2}, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->HVAC_PANEL:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    const-string v1, "#showDialog"

    const-string v2, "DialogService"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "#dismissDialog"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->DIALOG_SERVICE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    const-string v1, "MapSliceProvider"

    const-string v2, "path: showOptionList"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "MegaMars"

    const-string v3, "#onDetachedFromWindow"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "MapOptionList"

    invoke-direct {v0, v1, v3, v2}, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->MAP_OPTION_LIST:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    new-instance v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v2, "LauncherFocus"

    invoke-direct {v0, v1, v2, v1}, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
