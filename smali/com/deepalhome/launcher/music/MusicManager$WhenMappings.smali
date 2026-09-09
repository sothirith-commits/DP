.class public abstract synthetic Lcom/deepalhome/launcher/music/MusicManager$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->values()[Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->values()[Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;->NOTIFICATION:Lcom/deepalhome/launcher/music/MusicManager$PlaybackDataSource;

    const/4 v1, 0x2

    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
