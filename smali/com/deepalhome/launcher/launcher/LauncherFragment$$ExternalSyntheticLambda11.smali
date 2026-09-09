.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$maybeShowAnnouncementAfterGestureGuide(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$2R6yI7UnWE0KvHefNXvCorByl4M(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$xaQ5X7rHNAvzsyVgjoFbMm6nUoI(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$PWHs6kdj21QJxbIPfvn36WA-g08(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$BoRQ9Nln-vOZ2cPCzej1hYjL8Vo(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$alVdhMpXYEpWQq-JeDskcM-lZj8(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$xoBdgnSd0MwQzClTW69oSI9cU90(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
