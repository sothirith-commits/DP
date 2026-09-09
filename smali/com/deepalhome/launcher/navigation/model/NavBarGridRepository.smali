.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final migrator:Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;

.field public final userConfigProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository$1;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository$1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;-><init>(I)V

    const-string v1, "userConfigProvider"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->userConfigProvider:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->migrator:Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;

    return-void
.end method

.method public static persist(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :goto_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setNavBarGridConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->migrator:Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->userConfigProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/config/UserConfig;

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;->migrate(Lcom/deepalhome/launcher/config/UserConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;->shouldPersist(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-eqz v3, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridRepository;->persist(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;->effectiveConfig$default(Lcom/deepalhome/launcher/navigation/profile/VehiclePanelConfigFilter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    return-object p0
.end method
