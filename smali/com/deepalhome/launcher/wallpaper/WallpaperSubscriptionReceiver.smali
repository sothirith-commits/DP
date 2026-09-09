.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ALLOWED_ACTIONS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$Companion;-><init>(I)V

    const-string v0, "android.intent.action.DATE_CHANGED"

    const-string v1, "android.intent.action.TIME_SET"

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    const-string v4, "android.intent.action.MY_PACKAGE_REPLACED"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver;->ALLOWED_ACTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver;->ALLOWED_ACTIONS:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->init()V

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget p2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_2
    return-void
.end method
