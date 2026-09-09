.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController$RequestResult$Queued;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x369dd944    # -926315.75f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Queued"

    return-object p0
.end method
