.class public final Lcom/deepalhome/launcher/hud/HudLyricManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

.field public static currentMusicId:J

.field public static currentMusicName:Ljava/lang/String;

.field public static currentPackageName:Ljava/lang/String;

.field public static currentPlayStatus:I

.field public static currentSingerName:Ljava/lang/String;

.field public static doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

.field public static final ignoredHudPackages:Ljava/util/Set;

.field public static isConnected:Z

.field public static final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/HudLyricManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->mainHandler:Landroid/os/Handler;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentSingerName:Ljava/lang/String;

    const/4 v1, 0x1

    sput v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    const-string v0, "Music"

    const-string v1, "com.android.bluetooth"

    const-string v2, "com.netease.cloudmusic.iot"

    const-string v3, "com.tinnove.mediacenter"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->ignoredHudPackages:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLyric()V
    .locals 3

    sget-boolean v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->ignoredHudPackages:Ljava/util/Set;

    sget-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current music source ignored HUD lyrics cleared: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUDLyricManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendMediaInfo()V
    .locals 3

    sget-boolean v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->isConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->ignoredHudPackages:Ljava/util/Set;

    sget-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current music source ignored HUD media info sending: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUDLyricManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
