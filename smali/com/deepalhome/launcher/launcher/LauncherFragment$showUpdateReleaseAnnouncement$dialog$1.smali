.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$1;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$1;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "info"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateVersion(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setS05IgnoredUpdateVersionName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->markUpdateBadge(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
