.class public final synthetic Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "this$0"

    iget v5, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v1, v1}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v3, v2}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v3, v2}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v3, v2}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    sget v2, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->hasSystemOverlay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->shouldShowMap()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/map/MapAppWindow;->showMap(Z)V

    sget-boolean v0, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->postNextRecovery()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    iget v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->maxRecoveryRetries:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->postNextRecovery()V

    goto :goto_1

    :cond_3
    :goto_0
    iput v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->mapRecoveryCount:I

    :cond_4
    :goto_1
    return-void

    :pswitch_4
    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->windowFrameRetryPosted:Z

    invoke-static {p0, v3, v3, v2}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$lambda$ig8_3Bn6sOSZpFFiFLfCmM_ci9I(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$lambda$SVEOWi6XNvG4VWOMOa12glHLD70(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    return-void

    :pswitch_7
    sget v2, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow;->pendingHideRunnable:Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->shouldShowMap()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->hideMap(Z)V

    :cond_5
    return-void

    :pswitch_8
    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v3, v2}, Lcom/deepalhome/launcher/map/MapAppWindow;->updateMapVisibility$default(Lcom/deepalhome/launcher/map/MapAppWindow;ZZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
