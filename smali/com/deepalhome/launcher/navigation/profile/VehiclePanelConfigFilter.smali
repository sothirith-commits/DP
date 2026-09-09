.class public final Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectiveConfig$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->current()Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfileCatalog;->profiles:Ljava/util/Map;

    invoke-static {p0, v0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object v7, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v2, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "type"

    iget-object v6, v6, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v7, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0, v1}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;->structurePolicy:Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;

    iget-boolean v6, v6, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->allowShortcutApps:Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;->structurePolicy:Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;

    iget-boolean v6, v6, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->showDrawer:Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelProfile;->structurePolicy:Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;

    iget-boolean v6, v6, Lcom/deepalhome/launcher/navigation/profile/PanelStructurePolicy;->showHome:Z

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {p1, v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->copy$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Ljava/util/List;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method
