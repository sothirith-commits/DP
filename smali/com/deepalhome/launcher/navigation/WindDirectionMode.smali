.class public final enum Lcom/deepalhome/launcher/navigation/WindDirectionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

.field public static final enum FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final enum FACE_FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final enum FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final enum FOOT_SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final enum SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public static final ordered:Ljava/util/List;


# instance fields
.field private final iconRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const v1, 0x7f08017e

    const-string v2, "FACE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const v2, 0x7f08017f

    const-string v4, "FACE_FOOT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE_FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v2, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const v4, 0x7f080180

    const-string v5, "FOOT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v4, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const v5, 0x7f08017d

    const-string v6, "FOOT_SHIELD"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT_SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v5, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    const v6, 0x7f08017c

    const-string v7, "SHIELD"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v6

    sput-object v6, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->$VALUES:[Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-static {v6}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v6, Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-direct {v6, v3}, Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;-><init>(I)V

    sput-object v6, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->ordered:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->iconRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/WindDirectionMode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->$VALUES:[Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    return-object v0
.end method


# virtual methods
.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->iconRes:I

    return p0
.end method
