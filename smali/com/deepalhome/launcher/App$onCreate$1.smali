.class public final Lcom/deepalhome/launcher/App$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/App$onCreate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/App$onCreate$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/App$onCreate$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/App$onCreate$1;->INSTANCE:Lcom/deepalhome/launcher/App$onCreate$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    const/4 v2, 0x1

    const/16 v5, 0xc

    const-string v1, "network_available"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->requestSync$default(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Ljava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionReceiver$onReceive$1$1;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
