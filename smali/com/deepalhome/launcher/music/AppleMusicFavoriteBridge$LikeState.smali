.class public final enum Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

.field public static final Companion:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState$Companion;

.field public static final enum Unknown:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->Unknown:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    new-instance v1, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    const-string v3, "None"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    const-string v4, "Liked"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    const-string v5, "Unliked"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v3, v4}, [Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->$VALUES:[Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState$Companion;

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->Companion:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->$VALUES:[Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->value:I

    return p0
.end method
