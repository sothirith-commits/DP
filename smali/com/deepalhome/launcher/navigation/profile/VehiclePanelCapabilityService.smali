.class public final Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelCapabilityService;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;I)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/PowertrainTypeResolver;->current()Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "branch"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/deepalhome/launcher/navigation/profile/ControlPanelFunctionPrototypeCatalog;->isSupported(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;Lcom/deepalhome/launcher/navigation/profile/PowertrainType;)Z

    move-result p0

    return p0
.end method
