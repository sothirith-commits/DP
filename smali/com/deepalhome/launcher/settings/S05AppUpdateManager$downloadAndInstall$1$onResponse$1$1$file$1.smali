.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;->$callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;->$callback:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$DownloadCallback;

    new-instance p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;JJI)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
