.class public final Lcom/deepalhome/launcher/analytics/UmengInitService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/analytics/UmengInitService$Companion;


# instance fields
.field public volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/analytics/UmengInitService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/analytics/UmengInitService$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitService;->Companion:Lcom/deepalhome/launcher/analytics/UmengInitService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-boolean p1, p0, Lcom/deepalhome/launcher/analytics/UmengInitService;->started:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    return p2

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/analytics/UmengInitService;->started:Z

    new-instance p1, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;

    invoke-direct {p1, p0, p3}, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;-><init>(Lcom/deepalhome/launcher/analytics/UmengInitService;I)V

    const/4 p0, 0x0

    const-string p3, "UmengInit"

    const/16 v0, 0x17

    invoke-static {v0, p3, p1, p0}, Lokhttp3/logging/Utf8Kt;->thread$default(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lcom/umeng/commonsdk/UMConfigure$1;

    return p2
.end method
