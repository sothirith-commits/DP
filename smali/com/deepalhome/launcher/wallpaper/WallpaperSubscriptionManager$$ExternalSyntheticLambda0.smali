.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lretrofit2/Response;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$0:J

    iget-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v4, "$source"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v4, Lretrofit2/Response;

    const-string v5, "$response"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v5, "$targetDate"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    invoke-virtual {v5, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->selectedSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    goto :goto_1

    :cond_1
    iget-object v4, v4, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-static {v5, v4, p0, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$findWallpaper(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;

    move-result-object p0

    if-nez p0, :cond_2

    const p0, 0x7f1304a8

    invoke-static {v5, v0, v1, v2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-static {v5, p0, v2, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$downloadAndApply(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$SubscriptionItem;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v3, "WallpaperSubscription"

    const-string v4, "Process subscription failed"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    const v3, 0x7f1304a5

    invoke-static {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->access$showToastIfCurrent(Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;JZI)V

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v1, "$filePath"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    const-string v2, "$source"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "$targetDate"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->syncController:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;

    iget-wide v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$0:J

    invoke-virtual {v3, v4, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionSyncController;->isCurrent(J)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-static {v3, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v3, "wallpaper_subscription_state"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_applied_source"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_applied_date"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager$$ExternalSyntheticLambda0;->f$4:Z

    if-eqz p0, :cond_4

    const p0, 0x7f1304a1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :cond_4
    invoke-static {v4, v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->finishSync(J)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
