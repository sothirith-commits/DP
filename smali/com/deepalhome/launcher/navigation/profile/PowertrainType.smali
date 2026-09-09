.class public final enum Lcom/deepalhome/launcher/navigation/profile/PowertrainType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

.field public static final Companion:Lcom/deepalhome/launcher/navigation/profile/PowertrainType$Companion;

.field public static final enum HYBRID:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

.field public static final enum PURE_ELECTRIC:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;


# instance fields
.field private final rawValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    const-string v1, "pure_electric"

    const-string v2, "pure-electric"

    const-string v3, "electric"

    const-string v4, "ev"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "PURE_ELECTRIC"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->PURE_ELECTRIC:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    new-instance v1, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    const-string v2, "hybrid"

    const-string v4, "range_extender"

    const-string v5, "range-extender"

    const-string v6, "reev"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "HYBRID"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->HYBRID:Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->$VALUES:[Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType$Companion;

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/navigation/profile/PowertrainType$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->Companion:Lcom/deepalhome/launcher/navigation/profile/PowertrainType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->rawValues:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/profile/PowertrainType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/profile/PowertrainType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/PowertrainType;->$VALUES:[Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/profile/PowertrainType;

    return-object v0
.end method
