.class public final Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

.field public static volatile cachedBranch:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->Companion:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch$Companion;

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "debug.deepalhome.vehicle_branch"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v3}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->getRawValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    move-object v1, v0

    :cond_4
    check-cast v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    :goto_1
    if-nez v1, :cond_a

    sget-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->cachedBranch:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    if-nez v1, :cond_a

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->SL03_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    :goto_2
    move-object v1, v0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S7_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S7:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->S07_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S07:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    goto :goto_2

    :goto_3
    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->cachedBranch:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    :cond_a
    return-object v1
.end method
