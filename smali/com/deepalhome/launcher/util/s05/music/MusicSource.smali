.class public final enum Lcom/deepalhome/launcher/util/s05/music/MusicSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static final enum BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static final enum CLOUD_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static final enum KUGOU:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static final enum MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public static final enum QQ_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;


# instance fields
.field private final displayNameRes:I

.field private final fallbackPackageName:Ljava/lang/String;

.field private final iconRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const/4 v1, 0x0

    const v2, 0x7f130372

    const-string v4, "MUSIC"

    const v3, 0x7f080151

    const-string v5, "Music"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const/4 v8, 0x1

    const v9, 0x7f130370

    const-string v11, "CLOUD_MUSIC"

    const v10, 0x7f08014f

    const-string v12, "com.netease.cloudmusic.iot"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->CLOUD_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    new-instance v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const/4 v14, 0x2

    const v15, 0x7f130371

    const-string v17, "KUGOU"

    const v16, 0x7f080150

    const-string v18, "com.kugou.android.auto"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->KUGOU:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    new-instance v2, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const/4 v8, 0x3

    const v9, 0x7f130373

    const-string v11, "QQ_MUSIC"

    const v10, 0x7f080151

    const-string v12, "com.tencent.qqmusiccar"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->QQ_MUSIC:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    new-instance v3, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    const/4 v14, 0x4

    const v15, 0x7f13036f

    const-string v17, "BLUETOOTH"

    const v16, 0x7f08014e

    const-string v18, "com.android.bluetooth"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    filled-new-array {v6, v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->$VALUES:[Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->displayNameRes:I

    iput p3, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->iconRes:I

    iput-object p5, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->fallbackPackageName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/util/s05/music/MusicSource;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/util/s05/music/MusicSource;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->$VALUES:[Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    return-object v0
.end method


# virtual methods
.method public final getDisplayNameRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->displayNameRes:I

    return p0
.end method

.method public final getFallbackPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->fallbackPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->iconRes:I

    return p0
.end method
