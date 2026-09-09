.class public final enum Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

.field public static final Companion:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch$Companion;

.field public static final enum EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

.field public static final enum S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

.field public static final enum S07:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

.field public static final enum S7:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

.field public static final enum SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const-string v1, "sl03"

    const-string v2, "SL03"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->SL03:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const-string v2, "s7"

    const-string v4, "S7"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4, v2}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S7:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const-string v4, "s07"

    const-string v5, "S07"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v5, v4}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S07:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v4, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const-string v5, "s05"

    const-string v6, "S05"

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6, v5}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    new-instance v5, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const-string v6, "ez6"

    const-string v7, "EZ6"

    const/4 v8, 0x4

    invoke-direct {v5, v8, v7, v6}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->$VALUES:[Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch$Companion;

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->Companion:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->$VALUES:[Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    return-object v0
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->rawValue:Ljava/lang/String;

    return-object p0
.end method
